# swagger_client.SymbolApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**symbol_get**](SymbolApi.md#symbol_get) | **GET** /v2/public/symbols | Query Symbols.


# **symbol_get**
> object symbol_get()

Query Symbols.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SymbolApi()

try:
    # Query Symbols.
    api_response = api_instance.symbol_get()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SymbolApi->symbol_get: %s\n" % e)
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

