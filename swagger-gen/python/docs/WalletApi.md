# swagger_client.WalletApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wallet_exchange_order**](WalletApi.md#wallet_exchange_order) | **GET** /v2/private/exchange-order/list | Asset Exchange Records
[**wallet_get_balance**](WalletApi.md#wallet_get_balance) | **GET** /v2/private/wallet/balance | get wallet balance info
[**wallet_get_records**](WalletApi.md#wallet_get_records) | **GET** /open-api/wallet/fund/records | Get wallet fund records
[**wallet_get_risk_limit**](WalletApi.md#wallet_get_risk_limit) | **GET** /open-api/wallet/risk-limit/list | Get risk limit.
[**wallet_set_risk_limit**](WalletApi.md#wallet_set_risk_limit) | **POST** /open-api/wallet/risk-limit | Set risk limit
[**wallet_withdraw**](WalletApi.md#wallet_withdraw) | **GET** /open-api/wallet/withdraw/list | Get wallet fund records


# **wallet_exchange_order**
> object wallet_exchange_order(limit=limit, _from=_from, direction=direction)

Asset Exchange Records

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
limit = 8.14 # float | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
_from = 8.14 # float | Start ID. By default, returns the latest IDs (optional)
direction = 'direction_example' # str | Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next (optional)

try:
    # Asset Exchange Records
    api_response = api_instance.wallet_exchange_order(limit=limit, _from=_from, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WalletApi->wallet_exchange_order: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **float**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **_from** | **float**| Start ID. By default, returns the latest IDs | [optional] 
 **direction** | **str**| Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wallet_get_balance**
> object wallet_get_balance(coin=coin)

get wallet balance info

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
coin = 'coin_example' # str | Coin.enum {BTC,EOS,XRP,ETH,USDT} (optional)

try:
    # get wallet balance info
    api_response = api_instance.wallet_get_balance(coin=coin)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WalletApi->wallet_get_balance: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **str**| Coin.enum {BTC,EOS,XRP,ETH,USDT} | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **wallet_get_risk_limit**
> object wallet_get_risk_limit()

Get risk limit.

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

try:
    # Get risk limit.
    api_response = api_instance.wallet_get_risk_limit()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WalletApi->wallet_get_risk_limit: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wallet_set_risk_limit**
> object wallet_set_risk_limit(symbol, risk_id)

Set risk limit

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
symbol = 'symbol_example' # str | Contract type.
risk_id = 8.14 # float | Risk ID. Can be found with the Get risk limit list endpoint.

try:
    # Set risk limit
    api_response = api_instance.wallet_set_risk_limit(symbol, risk_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WalletApi->wallet_set_risk_limit: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **risk_id** | **float**| Risk ID. Can be found with the Get risk limit list endpoint. | 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wallet_withdraw**
> object wallet_withdraw(start_date=start_date, end_date=end_date, coin=coin, status=status, page=page, limit=limit)

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
coin = 'coin_example' # str | Currency (optional)
status = 'status_example' # str | Withdraw status (optional)
page = 'page_example' # str | Page. Default getting first page data (optional)
limit = 'limit_example' # str | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)

try:
    # Get wallet fund records
    api_response = api_instance.wallet_withdraw(start_date=start_date, end_date=end_date, coin=coin, status=status, page=page, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WalletApi->wallet_withdraw: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **str**| Start point for result | [optional] 
 **end_date** | **str**| End point for result | [optional] 
 **coin** | **str**| Currency | [optional] 
 **status** | **str**| Withdraw status | [optional] 
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

