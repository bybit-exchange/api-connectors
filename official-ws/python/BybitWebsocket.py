import websocket
from threading import Lock, Thread
import socket
from time import sleep
import json
import logging
import time
import hmac
import sys

# This is a simple adapters for connecting to Bybit's websocket API.
# You could use methods whose names begin with “subscribe”, and get result by "get_data" method.
# All the provided websocket APIs are implemented, includes public and private topic.
# Private methods are only available after authorization, but public methods do not.
# If you have any questions during use, please contact us vim the e-mail "support@bybit.com".


class BybitWebsocket:

    #User can ues MAX_DATA_CAPACITY to control memory usage.
    MAX_DATA_CAPACITY = 200
    PRIVATE_TOPIC = ['position', 'execution', 'order']
    def __init__(self, test, api_key, api_secret):
        '''Initialize'''

        if test:
            self.host = "wss://stream-testnet.bybit.com/realtime"
        else:
            self.host = "wss://stream.bybit.com/realtime"

        self.logger = logging.getLogger(__name__)
        self.logger.debug("Initializing WebSocket.")

        if api_key is not None and api_secret is None:
            raise ValueError('api_secret is required if api_key is provided')
        if api_key is None and api_secret is not None:
            raise ValueError('api_key is required if api_secret is provided')

        self.api_key = api_key
        self.api_secret = api_secret

        self.data = {}
        self.exited = False
        self.auth = False

        self._ws_lock = Lock()
        self._ws = None

        self.ping_interval = 60  # seconds

    def start(self):
        """
        Start the client and on_connected function is called after webscoket
        is connected succesfully.

        Please don't send packet untill on_connected fucntion is called.
        """

        self._active = True
        self._worker_thread = Thread(target=self._run)
        self._worker_thread.start()

        self._ping_thread = Thread(target=self._run_ping)
        self._ping_thread.start()

    def stop(self):
        """
        Stop the client.
        """
        self._active = False
        self._disconnect()

    def exit(self):
        '''Call this to exit - will close websocket.'''
        self.exited = True
        self.ws.close()

    def __connect(self, wsURL):
        '''Connect to the websocket in a thread.'''
        self.logger.debug("Starting thread")

        self.ws = websocket.WebSocketApp(wsURL,
                                         on_message=self.__on_message,
                                         on_close=self.__on_close,
                                         on_open=self.__on_open,
                                         on_error=self.__on_error,
                                         keep_running=True)

        self.wst = Thread(target=lambda: self.ws.run_forever())
        self.wst.daemon = True
        self.wst.start()
        self.logger.debug("Started thread")

        # Wait for connect before continuing
        retry_times = 5
        while not self.ws.sock or not self.ws.sock.connected and retry_times:
            sleep(1)
            retry_times -= 1
        if retry_times == 0 and not self.ws.sock.connected: 
            self.logger.error("Couldn't connect to WebSocket! Exiting.")
            self.exit()
            raise websocket.WebSocketTimeoutException('Error！Couldn not connect to WebSocket!.')

        if self.api_key and self.api_secret:
            self.__do_auth()

    def _run(self):
        """
        Keep running till stop is called.
        """
        try:
            while self._active:
                try:
                    self._ensure_connection()
                    ws = self._ws
                    if ws:
                        text = ws.recv()

                        # ws object is closed when recv function is blocking
                        if not text:
                            self._disconnect()
                            continue

                        self._record_debug_text(text)

                        try:
                            data = json.loads(text)
                        except ValueError as e:
                            print("websocket unable to parse data: " + text)
                            raise e

                        self._log('recv data: %s', data)
                        self.on_packet(data)
                # ws is closed before recv function is called
                # For socket.error, see Issue #1608
                except (websocket.WebSocketConnectionClosedException, socket.error):
                    self._disconnect()

                # other internal exception raised in on_packet
                except:  # noqa
                    et, ev, tb = sys.exc_info()
                    self.__on_error(et, ev, tb)
                    self._disconnect()
        except:  # noqa
            et, ev, tb = sys.exc_info()
            self.__on_error(et, ev, tb)
        self._disconnect()

    def _run_ping(self):
        """"""
        while self._active:
            try:
                self._ping()
            except:  # noqa
                et, ev, tb = sys.exc_info()
                self.__on_error(et, ev, tb)

                # self._run() will reconnect websocket
                sleep(1)

            for i in range(self.ping_interval):
                if not self._active:
                    break
                sleep(1)

    def generate_signature(self, expires):
        """Generate a request signature."""
        _val = 'GET/realtime' + expires
        return str(hmac.new(bytes(self.api_secret, "utf-8"), bytes(_val, "utf-8"), digestmod="sha256").hexdigest())

    def __do_auth(self):

        expires = str(int(round(time.time())+1))+"000"
        signature = self.generate_signature(expires)

        auth = {}
        auth["op"] = "auth"
        auth["args"] = [self.api_key, expires, signature]

        args = json.dumps(auth)

        self.ws.send(args)

    def __on_message(self, message):
        '''Handler for parsing WS messages.'''
        message = json.loads(message)
        if 'success' in message and message["success"]:   
            if 'request' in message and message["request"]["op"] == 'auth':
                self.auth = True
                self.logger.info("Authentication success.")
            if 'ret_msg' in message and message["ret_msg"] == 'pong':
                self.data["pong"].append("PING success")

        if 'topic' in message:
            self.data[message["topic"]].append(message["data"])
            if len(self.data[message["topic"]]) > BybitWebsocket.MAX_DATA_CAPACITY:
                self.data[message["topic"]] = self.data[message["topic"]][BybitWebsocket.MAX_DATA_CAPACITY//2:]

    def __on_error(self, exception_type: type, exception_value: Exception, tb):
        '''Called on fatal websocket errors. We exit on these.'''
        if not self.exited:
            self.logger.error("Error : %s" % error)
            raise websocket.WebSocketException(error)

    def __on_open(self):
        '''Called when the WS opens.'''
        self.logger.debug("Websocket Opened.")

    def __on_close(self):
        '''Called on websocket close.'''
        self.logger.info('Websocket Closed')

    def _disconnect(self):
        """
        """
        triggered = False
        with self._ws_lock:
            if self._ws:
                ws: websocket.WebSocket = self._ws
                self._ws = None

                triggered = True
        if triggered:
            ws.close()
            self._on_disconnected()

    def _on_disconnected(self):
        """"""
        self.logger.info("Websocket API连接断开")

    def ping(self):
        self.ws.send('{"op":"ping"}')
        if 'pong' not in self.data:
            self.data['pong'] = []

    def get_data(self, topic):
        if topic not in self.data:
            self.logger.info(" The topic %s is not subscribed." % topic)
            return []
        if topic.split('.')[0] in BybitWebsocket.PRIVATE_TOPIC and not self.auth:
            self.logger.info("Authentication failed. Please check your api_key and api_secret. Topic: %s" % topic)
            return []
        else:
            if len(self.data[topic]) == 0:
                # self.logger.info(" The topic %s is empty." % topic)
                return []
            # while len(self.data[topic]) == 0 :
            #     sleep(0.1)
            return self.data[topic].pop()

    def _record_debug_text(self, text: str):
        """
        Record last received text for debug purpose.
        """
        self._last_received_text = text[:1000]

    def load_data(self, packet: dict):
        """"""
        if "topic" not in packet:
            op = packet["request"]["op"]
            if op == "auth":
                self.logger.info(packet)
        else:
            channel = packet["topic"]
            callback = self.callbacks[channel]
            callback(packet)