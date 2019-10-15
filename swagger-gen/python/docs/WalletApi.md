# swagger_client.WalletApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wallet_get_records**](WalletApi.md#wallet_get_records) | **GET** /open-api/wallet/fund/records | Get wallet fund records


# **wallet_get_records**
> object wallet_get_records(start_date=start_date, end_date=end_date, currency=currency, wallet_fund_type=wallet_fund_type, page=page, limit=limit)

Get wallet fund records

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
api_instance = swagger_client.WalletApi(swagger_client.ApiClient(configuration))
start_date = 'start_date_example' # str | Start point for result (optional)
end_date = 'end_date_example' # str | End point for result (optional)
currency = 'currency_example' # str | Currency type (optional)
wallet_fund_type = 'wallet_fund_type_example' # str | wallet fund type (optional)
page = 'page_example' # str | Page. Default getting first page data (optional)
limit = 'limit_example' # str | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)

try:
    # Get wallet fund records
    api_response = api_instance.wallet_get_records(start_date=start_date, end_date=end_date, currency=currency, wallet_fund_type=wallet_fund_type, page=page, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WalletApi->wallet_get_records: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **str**| Start point for result | [optional] 
 **end_date** | **str**| End point for result | [optional] 
 **currency** | **str**| Currency type | [optional] 
 **wallet_fund_type** | **str**| wallet fund type | [optional] 
 **page** | **str**| Page. Default getting first page data | [optional] 
 **limit** | **str**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

