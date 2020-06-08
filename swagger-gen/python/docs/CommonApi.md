# swagger_client.CommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**common_get**](CommonApi.md#common_get) | **GET** /v2/public/time | Get bybit server time.


# **common_get**
> object common_get()

Get bybit server time.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.CommonApi()

try:
    # Get bybit server time.
    api_response = api_instance.common_get()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CommonApi->common_get: %s\n" % e)
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

