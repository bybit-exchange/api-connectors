# swagger_client.LinearFundingApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_funding_my_last_fee**](LinearFundingApi.md#linear_funding_my_last_fee) | **GET** /private/linear/funding/prev-funding | Get prev funding
[**linear_funding_predicted**](LinearFundingApi.md#linear_funding_predicted) | **GET** /private/linear/funding/predicted-funding | Get predicted funding rate and funding fee.
[**linear_funding_prev_rate**](LinearFundingApi.md#linear_funding_prev_rate) | **GET** /public/linear/funding/prev-funding-rate | Get prev funding


# **linear_funding_my_last_fee**
> object linear_funding_my_last_fee(symbol=symbol)

Get prev funding

This will get prev funding

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
api_instance = swagger_client.LinearFundingApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)

try:
    # Get prev funding
    api_response = api_instance.linear_funding_my_last_fee(symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearFundingApi->linear_funding_my_last_fee: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_funding_predicted**
> object linear_funding_predicted(symbol)

Get predicted funding rate and funding fee.

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
api_instance = swagger_client.LinearFundingApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.

try:
    # Get predicted funding rate and funding fee.
    api_response = api_instance.linear_funding_predicted(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearFundingApi->linear_funding_predicted: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_funding_prev_rate**
> object linear_funding_prev_rate(symbol)

Get prev funding

This will get prev funding rate

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
api_instance = swagger_client.LinearFundingApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | 

try:
    # Get prev funding
    api_response = api_instance.linear_funding_prev_rate(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearFundingApi->linear_funding_prev_rate: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

