# swagger_client.LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_kline_get**](LinearKlineApi.md#linear_kline_get) | **GET** /public/linear/kline | Get kline
[**linear_kline_mark_price**](LinearKlineApi.md#linear_kline_mark_price) | **GET** /public/linear/mark-price-kline | Get kline


# **linear_kline_get**
> object linear_kline_get(symbol, interval, _from, limit=limit)

Get kline

This will get kline

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.LinearKlineApi()
symbol = 'symbol_example' # str | Contract type.
interval = 'interval_example' # str | Kline interval.
_from = 8.14 # float | from timestamp.
limit = 8.14 # float | Contract type. (optional)

try:
    # Get kline
    api_response = api_instance.linear_kline_get(symbol, interval, _from, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearKlineApi->linear_kline_get: %s\n" % e)
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

# **linear_kline_mark_price**
> object linear_kline_mark_price(symbol, interval, _from, limit=limit)

Get kline

This will get mark price kline

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKey
configuration = swagger_client.Configuration()
configuration.api_key['api_key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key'] = 'Bearer'
# Configure API key authorization: apiSignature
configuration = swagger_client.Configuration()
configuration.api_key['sign'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sign'] = 'Bearer'
# Configure API key authorization: timestamp
configuration = swagger_client.Configuration()
configuration.api_key['timestamp'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['timestamp'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.LinearKlineApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.
interval = 'interval_example' # str | Kline interval.
_from = 8.14 # float | from timestamp.
limit = 8.14 # float | Contract type. (optional)

try:
    # Get kline
    api_response = api_instance.linear_kline_mark_price(symbol, interval, _from, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearKlineApi->linear_kline_mark_price: %s\n" % e)
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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

