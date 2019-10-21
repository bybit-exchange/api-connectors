# BybitWebsocket Adapter

This is a simple adapter for connecting to Bybit's websocket API.

## Installation

```
pip install bybit-ws
```


## Quickstart

We have implemented all real-time API in the `BybitWebsocket` library.

Import the official Bybit websocket library and create and object:

```
from BybitWebsocket import BybitWebsocket
ws = BybitWebsocket(wsURL="wss://stream-testnet.bybit.com/realtime",
                         api_key=None, api_secret=None)
```
To access private topics, `api_key` and `api_secret` must have been passed.

Using the `ws` object we can subscribe to websocket topics.

## Subscribe to topics & get the response

All topics have a "subscribe" method. Find out more about the different topics and their responses in [the documentation of the websocket API](https://github.com/bybit-exchange/bybit-official-api-docs/blob/master/en/websocket.md).

Notice that if you get an empty list when you try to get data with `get_data` method, it means the websocket client has not yet receive the data of the topic you want from the server.

```
# subscribe to topics
ws.subscribe_orderBookL2("BTCUSD")
ws.subscribe_kline("BTCUSD", '1m')
ws.subscribe_order()
ws.subscribe_execution()
ws.subscribe_position()
ws.subscribe_instrument_info('BTCUSD')
ws.subscribe_insurance()

# get responses forever
while(1):
    logger.info(ws.get_data("orderBookL2_25.BTCUSD"))
    logger.info(ws.get_data('kline.BTCUSD.1m'))
    logger.info(ws.get_data('order'))
    logger.info(ws.get_data("execution"))
    logger.info(ws.get_data("position"))
    logger.info(ws.get_data("instrument_info.100ms.BTCUSD"))
    logger.info(ws.get_data('insurance.BTC'))
    logger.info(ws.get_data('insurance.EOS'))
    sleep(1)  # wait one second before checking for new responses
```

See a full example detailing all the endpoints in [main.py](https://github.com/bybit-exchange/api-connectors/blob/master/official-ws/python/main.py).
