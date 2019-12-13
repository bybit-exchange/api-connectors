""""""
import hashlib
import hmac
import time
import sys
import pytz
from datetime import datetime
from typing import Any, Dict, Callable
from copy import copy

from gateway.websocket import WebsocketClient


REST_HOST = "https://api.bybit.com"
WEBSOCKET_HOST = "wss://stream.bybit.com/realtime"

TESTNET_REST_HOST = "https://api-testnet.bybit.com"
TESTNET_WEBSOCKET_HOST = "wss://stream-testnet.bybit.com/realtime"

CHINA_TZ = pytz.timezone("Asia/Shanghai")
UTC_TZ = pytz.utc


class Request:
    """
    Topics
    """

    def __init__(self, topic_name: str):
        self.topic = topic_name


class BybitWebsocketApi(WebsocketClient):
    """"""
    
    def __init__(self,):
        """"""
        super().__init__()


        self.key = ""
        self.secret = b""
        self.server: str = ""  # REAL or TESTNET

        self.callbacks: Dict[str, Callable] = {}
        self.subscribed: Dict[str, Request] = {}

        self.symbol_bids: Dict[str, dict] = {}
        self.symbol_asks: Dict[str, dict] = {}

    def connect(
        self, key: str, secret: str, server: str, proxy_host: str, proxy_port: int
    ):
        """"""
        self.key = key
        self.secret = secret.encode()
        self.proxy_host = proxy_host
        self.proxy_port = proxy_port
        self.server = server

        if self.server == "REAL":
            url = WEBSOCKET_HOST
        else:
            url = TESTNET_WEBSOCKET_HOST

        self.init(url, self.proxy_host, self.proxy_port)
        self.start()

    def login(self):
        """"""
        expires = generate_timestamp(30)
        msg = f"GET/realtime{int(expires)}"
        signature = sign(self.secret, msg.encode())

        req = {
            "op": "auth",
            "args": [self.key, expires, signature]
        }
        self.send_packet(req)

    def subscribe_topic(self, topic: str, callback: Callable[[str, dict], Any]):
        """
        Subscribe to all private topics.
        """
        self.callbacks[topic] = callback

        req = {
            "op": "subscribe",
            "args": [topic],
        }
        self.send_packet(req)

    def on_connected(self):
        """"""
        self.gateway.write_log("Websocket API连接成功")
        self.login()

    def on_disconnected(self):
        """"""
        self.gateway.write_log("Websocket API连接断开")

    def on_packet(self, packet: dict):
        """"""
        if "topic" not in packet:
            op = packet["request"]["op"]
            if op == "auth":
                self.on_login(packet)
        else:
            channel = packet["topic"]
            callback = self.callbacks[channel]
            callback(packet)

    def on_error(self, exception_type: type, exception_value: Exception, tb):
        """"""
        msg = f"触发异常，状态码：{exception_type}，信息：{exception_value}"
        self.gateway.write_log(msg)

        sys.stderr.write(self.exception_detail(
            exception_type, exception_value, tb))

    def on_login(self, packet: dict):
        """"""
        success = packet.get("success", False)
        if success:
            self.gateway.write_log("Websocket API登录成功")

            self.subscribe_topic("order", self.on_order)
            self.subscribe_topic("execution", self.on_trade)
            self.subscribe_topic("position", self.on_position)

            for req in self.subscribed.values():
                self.subscribe(req)
        else:
            self.gateway.write_log("Websocket API登录失败")

    def on_tick(self, packet: dict):
        """"""
        topic = packet["topic"]
        type_ = packet["type"]
        data = packet["data"]
        timestamp = packet["timestamp_e6"]

        symbol = topic.replace("instrument_info.100ms.", "")
        tick = self.ticks[symbol]

        if type_ == "snapshot":
            tick.last_price = data["last_price_e4"] / 10000
            tick.volume = data["volume_24h"]
        else:
            update = data["update"][0]

            if "last_price_e4" in update:
                tick.last_price = update["last_price_e4"] / 10000

            if "volume_24h" in update:
                tick.volume = update["volume_24h"]

        local_dt = datetime.fromtimestamp(timestamp / 1_000_000)
        tick.datetime = local_dt.astimezone(UTC_TZ)
        self.gateway.on_tick(copy(tick))

    def on_depth(self, packet: dict):
        """"""
        topic = packet["topic"]
        type_ = packet["type"]
        data = packet["data"]
        timestamp = packet["timestamp_e6"]

        # Update depth data into dict buf
        symbol = topic.replace("orderBookL2_25.", "")
        tick = self.ticks[symbol]
        bids = self.symbol_bids.setdefault(symbol, {})
        asks = self.symbol_asks.setdefault(symbol, {})

        if type_ == "snapshot":
            for d in data:
                price = float(d["price"])

                if d["side"] == "Buy":
                    bids[price] = d
                else:
                    asks[price] = d
        else:
            for d in data["delete"]:
                price = float(d["price"])
                if d["side"] == "Buy":
                    bids.pop(price)
                else:
                    asks.pop(price)

            for d in (data["update"] + data["insert"]):
                price = float(d["price"])
                if d["side"] == "Buy":
                    bids[price] = d
                else:
                    asks[price] = d

        # Calculate 1-5 bid/ask depth
        bid_keys = list(bids.keys())
        bid_keys.sort(reverse=True)

        ask_keys = list(asks.keys())
        ask_keys.sort()

        for i in range(5):
            n = i + 1

            bid_price = bid_keys[i]
            bid_data = bids[bid_price]
            ask_price = ask_keys[i]
            ask_data = asks[ask_price]

            setattr(tick, f"bid_price_{n}", bid_price)
            setattr(tick, f"bid_volume_{n}", bid_data["size"])
            setattr(tick, f"ask_price_{n}", ask_price)
            setattr(tick, f"ask_volume_{n}", ask_data["size"])

        local_dt = datetime.fromtimestamp(timestamp / 1_000_000)
        tick.datetime = local_dt.astimezone(UTC_TZ)
        self.gateway.on_tick(copy(tick))

    def on_trade(self, packet: dict):
        """
        On trade
        :param packet:
        :return:
        """
        for d in packet["data"]:
            order_id = d["order_link_id"]
            if not order_id:
                order_id = d["order_id"]



        # self.gateway.on_trade(trade)

    def on_order(self, packet: dict):
        """"""
        for d in packet["data"]:
            sys_orderid = d["order_id"]
            order = self.order_manager.get_order_with_sys_orderid(sys_orderid)

            if order:
                order.traded = d["cum_exec_qty"]
                order.status = d["order_status"]
                order.time = d["timestamp"]
            else:
                # Use sys_orderid as local_orderid when
                # order placed from other source
                local_orderid = d["order_link_id"]
                if not local_orderid:
                    local_orderid = sys_orderid

                self.order_manager.update_orderid_map(
                    local_orderid,
                    sys_orderid
                )

                order = OrderData(
                    symbol=d["symbol"],
                    exchange=Exchange.BYBIT,
                    orderid=local_orderid,
                    type=ORDER_TYPE_BYBIT2VT[d["order_type"]],
                    direction=DIRECTION_BYBIT2VT[d["side"]],
                    price=float(d["price"]),
                    volume=d["qty"],
                    traded=d["cum_exec_qty"],
                    status=STATUS_BYBIT2VT[d["order_status"]],
                    time=d["timestamp"],
                    gateway_name=self.gateway_name
                )

            self.order_manager.on_order(order)

    def on_position(self, packet: dict):
        """"""
        for d in packet["data"]:
            if d["side"] == "Buy":
                volume = d["size"]
            else:
                volume = -d["size"]

            position = PositionData(
                symbol=d["symbol"],
                exchange=Exchange.BYBIT,
                direction=Direction.NET,
                volume=volume,
                price=float(d["entry_price"]),
                gateway_name=self.gateway_name
            )
            self.gateway.on_position(position)


def generate_timestamp(expire_after: float = 30) -> int:
    """
    :param expire_after: expires in seconds.
    :return: timestamp in milliseconds
    """
    return int(time.time() * 1000 + expire_after * 1000)


def sign(secret: bytes, data: bytes) -> str:
    """"""
    return hmac.new(
        secret, data, digestmod=hashlib.sha256
    ).hexdigest()