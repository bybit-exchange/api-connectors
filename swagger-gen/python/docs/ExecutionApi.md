# swagger_client.ExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execution_get_trades**](ExecutionApi.md#execution_get_trades) | **GET** /v2/private/execution/list | Get user’s trade records.
[**positions_close_pnl_records**](ExecutionApi.md#positions_close_pnl_records) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records


# **execution_get_trades**
> object execution_get_trades(symbol, order_id=order_id, start_time=start_time, page=page, limit=limit)

Get user’s trade records.

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
api_instance = swagger_client.ExecutionApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.
order_id = 'order_id_example' # str | OrderID. If not provided, will return user’s trading records. (optional)
start_time = 'start_time_example' # str | Start timestamp point for result. (optional)
page = 'page_example' # str | Page. Default getting first page data. (optional)
limit = 'limit_example' # str | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

try:
    # Get user’s trade records.
    api_response = api_instance.execution_get_trades(symbol, order_id=order_id, start_time=start_time, page=page, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ExecutionApi->execution_get_trades: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **order_id** | **str**| OrderID. If not provided, will return user’s trading records. | [optional] 
 **start_time** | **str**| Start timestamp point for result. | [optional] 
 **page** | **str**| Page. Default getting first page data. | [optional] 
 **limit** | **str**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positions_close_pnl_records**
> object positions_close_pnl_records(symbol, start_time=start_time, end_time=end_time, exec_type=exec_type, page=page, limit=limit)

Get user's closed profit and loss records

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
api_instance = swagger_client.ExecutionApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type
start_time = 56 # int | Start timestamp point for result, in second (optional)
end_time = 56 # int | End timestamp point for result, in second (optional)
exec_type = 'exec_type_example' # str | Execution type (optional)
page = 56 # int | Page. By default, gets first page of data. Maximum of 50 pages (optional)
limit = 56 # int | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

try:
    # Get user's closed profit and loss records
    api_response = api_instance.positions_close_pnl_records(symbol, start_time=start_time, end_time=end_time, exec_type=exec_type, page=page, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ExecutionApi->positions_close_pnl_records: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type | 
 **start_time** | **int**| Start timestamp point for result, in second | [optional] 
 **end_time** | **int**| End timestamp point for result, in second | [optional] 
 **exec_type** | **str**| Execution type | [optional] 
 **page** | **int**| Page. By default, gets first page of data. Maximum of 50 pages | [optional] 
 **limit** | **int**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

