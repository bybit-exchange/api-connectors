# swagger_client.LinearExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_execution_get_trades**](LinearExecutionApi.md#linear_execution_get_trades) | **GET** /private/linear/trade/execution/list | Get user&#39;s trading records.


# **linear_execution_get_trades**
> object linear_execution_get_trades(symbol=symbol, start_time=start_time, end_time=end_time, exec_type=exec_type, page=page, limit=limit)

Get user's trading records.

This will get user's trading records.

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
api_instance = swagger_client.LinearExecutionApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
start_time = 789 # int |  (optional)
end_time = 789 # int |  (optional)
exec_type = 'exec_type_example' # str |  (optional)
page = 789 # int |  (optional)
limit = 789 # int |  (optional)

try:
    # Get user's trading records.
    api_response = api_instance.linear_execution_get_trades(symbol=symbol, start_time=start_time, end_time=end_time, exec_type=exec_type, page=page, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearExecutionApi->linear_execution_get_trades: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **start_time** | **int**|  | [optional] 
 **end_time** | **int**|  | [optional] 
 **exec_type** | **str**|  | [optional] 
 **page** | **int**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

