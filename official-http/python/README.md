# Bybit Python client

A Python client to interact with [Bybit's](https://www.bybit.com) Restful API. 

Python objects are created dynamically using [Bravado](https://github.com/Yelp/bravado) to auto-generate

You can get more infomation in [the documention of Restful-API](https://github.com/bybit-exchange/bybit-official-api-docs)


## Installation

```
$ pip install bybit
```

## Quickstart

After the installation is completed, it can be used as follows.

```
import bybit

client  = bybit.bybit(test=True, api_key="", api_secret="")
```

All interfaces are grouped into several categories, 
such as `Position` or `Order`, each one has a set of methods that mirror the corresponding REST API.They can be listed via `dir()`.

You can call the public endpoints like this:

### Get server time

```
client.Common.Common_get().result()[0]
```
### Get Symbol lists

```
print(client.Symbol.Symbol_get().result()[0]["result"][0])
```
    
## Authentication

Only if you filled in the `api-key` and `api-secret` when you instantiate a connection and successfully authenticated, then you can use the private endpoints.

Note that the `test-net` and the `main-site` have different `api-key` and `api-secret`, see [API Signature](https://github.com/bybit-exchange/bybit-official-api-docs/blob/master/en/rest_api_sign.md).

You can call the private endpoints like this:

### Place order

```
print(client.Order.Order_new(side="Buy",symbol="BTCUSD",order_type="Limit",qty=1,price=8300,time_in_force="GoodTillCancel").result())
```

### Get My Last Funding Fee
```
print(client.Funding.Funding_getRate(symbol="BTCUSD").result())
```


## Limits

* API Request Rate Limits
    * For order related API, such as *'place active order'*, *'get active order'*, the rate limit for each account is 80 requests per minute.
    * For position related API, such as *'leverage adjustment'*, *'get position'*, the rate limit for each account is 60 requests per minute.

* Order Count Limits
    * Each account can hold up to 200 active orders yet to be filled entirely simultaneously.
    * Each account can hold up to 5 conditional orders in the same side simultaneously.

* How To Raised API Limit Threshold
    * Please send application email to api@bybit.com, We will reply in 3-5 working days.


## Full example

See full example in [test.py](/official-http/python/test.py) 