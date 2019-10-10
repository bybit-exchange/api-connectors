# swagger_client.ExecutionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execution_get_trades**](ExecutionApi.md#execution_get_trades) | **GET** /v2/private/execution/list | Get the trade records of a order.


# **execution_get_trades**
> object execution_get_trades(order_id)

Get the trade records of a order.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ExecutionApi()
order_id = 'order_id_example' # str | orderID.

try:
    # Get the trade records of a order.
    api_response = api_instance.execution_get_trades(order_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ExecutionApi->execution_get_trades: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **str**| orderID. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

