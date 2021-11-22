import ssl

import websocket
import threading
import traceback
from time import sleep
import json
import logging
import urllib
import math
import time
import hmac
from collections import defaultdict


# This is a simple adapters for connecting to Bybit's websocket API.
# You could use methods whose names begin with “subscribe”, and get result by "get_data" method.
# All the provided websocket APIs are implemented, includes public and private topic.
# Private methods are only available after authorization, but public methods do not.
# If you have any questions during use, please contact us vim the e-mail "support@bybit.com".


class BybitWebsocket:
    # User can ues MAX_DATA_CAPACITY to control memory usage.
    MAX_DATA_CAPACITY = 200
    # funding, account, leverage
    PRIVATE_TOPIC = ['position', 'execution', 'order', 'stop_order', 'wallet']
    USD_SYMBOLS = ['BTCUSD', 'ETHUSD', 'EOSUSD', 'XRPUSD', "DOTUSD"]
    WS_OPS = ['auth', 'subscribe']

    def __init__(self, wsURL, api_key, api_secret):
        '''Initialize'''
        self.logger = logging.getLogger(__name__)
        self.logger.debug("Initializing WebSocket.")

        if api_key is not None and api_secret is None:
            raise ValueError('api_secret is required if api_key is provided')
        if api_key is None and api_secret is not None:
            raise ValueError('api_key is required if api_secret is provided')

        self.api_key = api_key
        self.api_secret = api_secret

        self.data = defaultdict(list)
        self.exited = False
        self.auth = False
        # We can subscribe right in the connection querystring, so let's build that.
        # Subscribe to all pertinent endpoints
        self.logger.info("Connecting to %s" % wsURL)
        self.__connect(wsURL)

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

        self.wst = threading.Thread(target=lambda: self.ws.run_forever())
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

    def generate_signature(self, expires):
        """Generate a request signature."""
        _val = 'GET/realtime' + expires
        return str(hmac.new(bytes(self.api_secret, "utf-8"), bytes(_val, "utf-8"), digestmod="sha256").hexdigest())

    def __do_auth(self):

        expires = str(int(round(time.time()) + 1)) + "000"
        signature = self.generate_signature(expires)

        auth = {}
        auth["op"] = "auth"
        auth["args"] = [self.api_key, expires, signature]

        args = json.dumps(auth)

        self.ws.send(args)

    def __on_message(self, ws: websocket.WebSocketApp, message):
        '''Handler for parsing WS messages.'''
        message = json.loads(message)
        if 'success' in message and message["success"]:
            if 'request' in message and message["request"]["op"] == 'auth':
                self.auth = True
                self.logger.info("Authentication success.")
            if 'ret_msg' in message and message["ret_msg"] == 'pong':
                self.data["pong"].append("PING success")

        if 'topic' in message:
            self.data[message["topic"]].append(message)
            if len(self.data[message["topic"]]) > BybitWebsocket.MAX_DATA_CAPACITY:
                self.data[message["topic"]] = self.data[message["topic"]][BybitWebsocket.MAX_DATA_CAPACITY // 2:]

    def __on_error(self, ws: websocket.WebSocketApp, error):
        '''Called on fatal websocket errors. We exit on these.'''
        if not self.exited:
            self.logger.error("Error : %s" % error)
            raise websocket.WebSocketException(error)

    def __on_open(self, ws: websocket.WebSocketApp):
        '''Called when the WS opens.'''
        self.logger.debug("Websocket Opened.")

    def __on_close(self,
            ws: websocket.WebSocketApp,
            status_code: int = 0,
            close_msg: str = ""):
        '''Called on websocket close.'''
        self.logger.info('Websocket Closed')

    def ping(self):
        self.ws.send('{"op":"ping"}')
        if 'pong' not in self.data:
            self.data['pong'] = []

    def subscribe_kline(self, symbol: str, interval: str):
        param = {}
        param['op'] = 'subscribe'
        if self.is_inverse(symbol):
            topic_name = 'klineV2.' + interval + '.' + symbol
        else:
            topic_name = 'candle.' + interval + '.' + symbol

        param['args'] = [topic_name]
        self.ws.send(json.dumps(param))
        if topic_name not in self.data:
            self.data[topic_name] = []

    def subscribe_trade(self, symbol: str):
        topic_name = 'trade.' + symbol
        param = {'op': 'subscribe', 'args': [topic_name]}
        self.ws.send(json.dumps(param))
        if topic_name not in self.data:
            self.data[topic_name] = []

    def subscribe_insurance(self):
        self.ws.send('{"op":"subscribe","args":["insurance"]}')
        if 'insurance.BTC' not in self.data:
            self.data['insurance.BTC'] = []
            self.data['insurance.XRP'] = []
            self.data['insurance.EOS'] = []
            self.data['insurance.ETH'] = []
            self.data['insurance.DOT'] = []

    def subscribe_orderBookL2(self, symbol, level=None):
        param = {}
        param['op'] = 'subscribe'
        if level is None:
            topic = 'orderBookL2_25.' + symbol
        else:
            topic = 'orderBook_{level}.100ms.{symbol}'.format(level=level, symbol=symbol)
        print(topic)
        param['args'] = [topic]
        self.ws.send(json.dumps(param))
        if topic not in self.data:
            self.data[topic] = []

    def subscribe_instrument_info(self, symbol):
        param = {}
        param['op'] = 'subscribe'
        param['args'] = ['instrument_info.100ms.' + symbol]
        self.ws.send(json.dumps(param))
        if 'instrument_info.100ms.' + symbol not in self.data:
            self.data['instrument_info.100ms.' + symbol] = []

    def subscribe_position(self):
        self.ws.send('{"op":"subscribe","args":["position"]}')
        if 'position' not in self.data:
            self.data['position'] = []

    def subscribe_execution(self):
        self.ws.send('{"op":"subscribe","args":["execution"]}')
        if 'execution' not in self.data:
            self.data['execution'] = []

    def subscribe_order(self):
        self.ws.send('{"op":"subscribe","args":["order"]}')
        if 'order' not in self.data:
            self.data['order'] = []

    def subscribe_stop_order(self):
        self.ws.send('{"op":"subscribe","args":["stop_order"]}')
        if 'wallet' not in self.data:
            self.data['stop_order'] = []

    def subscribe_wallet(self):
        self.ws.send('{"op":"subscribe","args":["wallet"]}')
        if 'wallet' not in self.data:
            self.data['wallet'] = []

    def get_kline(self, symbol, interval):
        if self.is_inverse(symbol):
            topic_name = 'klineV2.' + interval + '.' + symbol
        else:
            topic_name = 'candle.' + interval + '.' + symbol
        if topic_name in self.data and len(self.data[topic_name]) > 0:
            return self.data[topic_name].pop(0)
        else:
            return []

    def get_orderBookL2(self, symbol, level=None):
        if level is None:
            return self.get_data("orderBookL2_25." + symbol)
        else:
            return self.get_data("orderBook_200.100ms." + symbol)
    def get_stop_order(self):
        return self.get_data("stop_order")

    def get_order(self):
        return self.get_data('order')

    def get_execution(self):
        return self.get_data('execution')

    def get_position(self):
        return self.get_data('position')

    def get_wallet(self):
        return self.get_data('wallet')

    def get_trade(self, symbol):
        return self.get_data('trade' + '.' + symbol)

    def get_instrument_info(self, symbol):
        return self.get_data("instrument_info.100ms." + symbol)

    def get_insurance(self, coin):
        return self.get_data("insurance." + coin)

    def get_data(self, topic):
        if topic not in self.data:
            self.logger.info(" The topic %s is not subscribed." % topic)
            return []
        if topic.split('.')[0] in BybitWebsocket.PRIVATE_TOPIC and not self.auth and 'request' in self.data \
                and self.data['request']['op'] not in BybitWebsocket.WS_OPS:
            self.logger.info("Authentication failed. Please check your api_key and api_secret. Topic: %s" % topic)
            return []
        else:
            if len(self.data[topic]) == 0:
                return []

            return self.data[topic].pop(0)

    @staticmethod
    def is_inverse(symbol):
        if symbol[-1] != 'T':
            return True
        else:
            return False
