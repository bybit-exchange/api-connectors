# swagger_client.MarketApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**market_orderbook**](MarketApi.md#market_orderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**market_symbol_info**](MarketApi.md#market_symbol_info) | **GET** /v2/public/tickers | Get the latest information for symbol.


# **market_orderbook**
> object market_orderbook(symbol)

Get the orderbook.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type.

try:
    # Get the orderbook.
    api_response = api_instance.market_orderbook(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_orderbook: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_symbol_info**
> object market_symbol_info()

Get the latest information for symbol.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()

try:
    # Get the latest information for symbol.
    api_response = api_instance.market_symbol_info()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_symbol_info: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

