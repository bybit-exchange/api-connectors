# swagger_client.KlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kline_get**](KlineApi.md#kline_get) | **GET** /v2/public/kline/list | Query historical kline.
[**kline_mark_price**](KlineApi.md#kline_mark_price) | **GET** /v2/public/mark-price-kline | Query mark price kline.


# **kline_get**
> object kline_get(symbol, interval, _from, limit=limit)

Query historical kline.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.KlineApi()
symbol = 'symbol_example' # str | Contract type.
interval = 'interval_example' # str | Kline interval.
_from = 8.14 # float | from timestamp.
limit = 8.14 # float | Contract type. (optional)

try:
    # Query historical kline.
    api_response = api_instance.kline_get(symbol, interval, _from, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling KlineApi->kline_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **interval** | **str**| Kline interval. | 
 **_from** | **float**| from timestamp. | 
 **limit** | **float**| Contract type. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kline_mark_price**
> object kline_mark_price(symbol, interval, _from, limit=limit)

Query mark price kline.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.KlineApi()
symbol = 'symbol_example' # str | Contract type.
interval = 'interval_example' # str | Data refresh interval
_from = 56 # int | From timestamp in seconds
limit = 56 # int | Limit for data size, max size is 1000. Default size is 500 (optional)

try:
    # Query mark price kline.
    api_response = api_instance.kline_mark_price(symbol, interval, _from, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling KlineApi->kline_mark_price: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **interval** | **str**| Data refresh interval | 
 **_from** | **int**| From timestamp in seconds | 
 **limit** | **int**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

