# Bybit Python client

A Python client to interact with [Bybit's](https://www.bybit.com) Restful API.

Python objects are created dynamically using [Bravado](https://github.com/Yelp/bravado) to auto-generate.

You can get more information in [the documentation of Restful-API](https://github.com/bybit-exchange/bybit-official-api-docs).


# Endpoints

[All Endpoints](./Endpoints.md)

## Installation

```
$ pip install bybit
```

## Quickstart

Import the official Bybit python library `bybit` and create an object:

```
import bybit

client  = bybit.bybit(test=True, api_key="", api_secret="")
```

All interfaces are grouped into several categories, such as `Position` or `Order`. Each one has a set of methods that mirror the corresponding REST API. They can be listed via `dir()`.

You can call **public** endpoints like this:

### Get server time

```
>>> client.Common.Common_get().result()[0]
{'ret_code': 0, 'ret_msg': 'OK', 'ext_code': '', 'ext_info': '', 'result': {}, 'time_now': '1570798047.589798'}
```
### Get Symbol lists

```
>>> client.Symbol.Symbol_get().result()[0]["result"][0]
{'name': 'BTCUSD', 'base_currency': 'BTC', 'quote_currency': 'USD', 'price_scale': 2, 'price_filter': {'min_price': '0.5', 'max_price': '999999.5', 'tick_size': '0.5'}, 'lot_size_filter': {'max_trading_qty': 1000000, 'min_trading_qty': 1, 'qty_step': 1}}
```

## Authentication

In order to use private endpoints your `api_key` and `api_secret` must be passed when creating the `client` object. The lib handles authentication for you.

Note that the `test-net` and the `main-site` have different `api_key` and `api_secret`, see [API Signature](https://github.com/bybit-exchange/bybit-official-api-docs/blob/master/en/rest_api_sign.md).

You can call **private** endpoints like this:

### Place order

```
print(client.Order.Order_new(side="Buy",symbol="BTCUSD",order_type="Limit",qty=1,price=8300,time_in_force="GoodTillCancel").result())
```

### Get My Last Funding Fee
```
print(client.Funding.Funding_getRate(symbol="BTCUSD").result())
```

## Full example

See a full example detailing all the endpoints in [test.py](/official-http/python/test.py).
