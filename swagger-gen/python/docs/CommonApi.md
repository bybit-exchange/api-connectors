# swagger_client.CommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**common_announcements**](CommonApi.md#common_announcements) | **GET** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[**common_get_lcp**](CommonApi.md#common_get_lcp) | **GET** /v2/private/account/lcp | Query LCP info.
[**common_get_time**](CommonApi.md#common_get_time) | **GET** /v2/public/time | Get bybit server time.


# **common_announcements**
> object common_announcements()

Get Bybit OpenAPI announcements in the last 30 days in reverse order.

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
    # Get Bybit OpenAPI announcements in the last 30 days in reverse order.
    api_response = api_instance.common_announcements()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CommonApi->common_announcements: %s\n" % e)
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

# **common_get_lcp**
> object common_get_lcp(symbol)

Query LCP info.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.CommonApi()
symbol = 'symbol_example' # str | Contract type

try:
    # Query LCP info.
    api_response = api_instance.common_get_lcp(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CommonApi->common_get_lcp: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **common_get_time**
> object common_get_time()

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
    api_response = api_instance.common_get_time()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CommonApi->common_get_time: %s\n" % e)
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

