# BybitWebsocket Adapter 

This is a simple adapters for connecting to Bybit's websocket API.

## Installation

```
pip install bybit-ws
```


## Quickstart

We have implemented all realtime api in BybitWebsocket, instantiation it to use.

```
from BybitWebsocket import BybitWebsocket
ws = BybitWebsocket(wsURL="wss://stream-testnet.bybit.com/realtime", 
                         api_key=None, api_secret=None)
```
If you wanna subscribe private topic, you should fill in the "api_key" and "api_secret".    
Then subscribe the message topic you are interest in.

## Subscribe Topic & Get the response

For all subscribed topics, there is a method that starts with "subscribe" in BybitWebsocket, and you can get results based on the topic field in the response message. You can get more infomation in [the documention of websocket-api](https://github.com/bybit-exchange/bybit-official-api-docs/blob/master/en/websocket.md)

Notice that if you get an empty list when you try to get data with `get_data` method, it means the ws-client has not yet receive the data of the topic you want from the server.

```
ws.subscribe_orderBookL2("BTCUSD")
ws.subscribe_kline("BTCUSD", '1m')
ws.subscribe_order()
ws.subscribe_execution()
ws.subscribe_position()
ws.subscribe_instrument_info('BTCUSD')
ws.subscribe_insurance()
while(1):
    logger.info(ws.get_data("orderBookL2_25.BTCUSD"))
    logger.info(ws.get_data('kline.BTCUSD.1m'))
    logger.info(ws.get_data('order'))
    logger.info(ws.get_data("execution"))
    logger.info(ws.get_data("position"))
    logger.info(ws.get_data("instrument_info.100ms.BTCUSD"))
    logger.info(ws.get_data('insurance.BTC'))
    logger.info(ws.get_data('insurance.EOS'))
    sleep(1)
```

See full example in [main.py](https://github.com/bybit-exchange/api-connectors/blob/master/official-ws/python/main.py) 