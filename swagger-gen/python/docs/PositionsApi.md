# swagger_client.PositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positions_change_margin**](PositionsApi.md#positions_change_margin) | **POST** /position/change-position-margin | Update margin.
[**positions_close_pnl_records**](PositionsApi.md#positions_close_pnl_records) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
[**positions_my_position**](PositionsApi.md#positions_my_position) | **GET** /v2/private/position/list | Get my position list.
[**positions_save_leverage**](PositionsApi.md#positions_save_leverage) | **POST** /user/leverage/save | Change user leverage.
[**positions_trading_stop**](PositionsApi.md#positions_trading_stop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.


# **positions_change_margin**
> object positions_change_margin(symbol, margin)

Update margin.

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
api_instance = swagger_client.PositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type which you want update its margin
margin = 'margin_example' # str | New margin you want set

try:
    # Update margin.
    api_response = api_instance.positions_change_margin(symbol, margin)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PositionsApi->positions_change_margin: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type which you want update its margin | 
 **margin** | **str**| New margin you want set | 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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
api_instance = swagger_client.PositionsApi(swagger_client.ApiClient(configuration))
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
    print("Exception when calling PositionsApi->positions_close_pnl_records: %s\n" % e)
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

# **positions_my_position**
> object positions_my_position(symbol=symbol)

Get my position list.

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
api_instance = swagger_client.PositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type which you want update its margin (optional)

try:
    # Get my position list.
    api_response = api_instance.positions_my_position(symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PositionsApi->positions_my_position: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type which you want update its margin | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positions_save_leverage**
> object positions_save_leverage(symbol, leverage)

Change user leverage.

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
api_instance = swagger_client.PositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | A symbol which you want change its leverage
leverage = 'leverage_example' # str | New leverage you want set

try:
    # Change user leverage.
    api_response = api_instance.positions_save_leverage(symbol, leverage)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PositionsApi->positions_save_leverage: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| A symbol which you want change its leverage | 
 **leverage** | **str**| New leverage you want set | 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positions_trading_stop**
> object positions_trading_stop(symbol, take_profit=take_profit, stop_loss=stop_loss, trailing_stop=trailing_stop, new_trailing_active=new_trailing_active)

Set Trading-Stop Condition.

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
api_instance = swagger_client.PositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type
take_profit = 'take_profit_example' # str | Not less than 0, 0 means cancel TP (optional)
stop_loss = 'stop_loss_example' # str | Not less than 0, 0 means cancel SL (optional)
trailing_stop = 'trailing_stop_example' # str | Not less than 0, 0 means cancel TS (optional)
new_trailing_active = 'new_trailing_active_example' # str | Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. (optional)

try:
    # Set Trading-Stop Condition.
    api_response = api_instance.positions_trading_stop(symbol, take_profit=take_profit, stop_loss=stop_loss, trailing_stop=trailing_stop, new_trailing_active=new_trailing_active)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PositionsApi->positions_trading_stop: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type | 
 **take_profit** | **str**| Not less than 0, 0 means cancel TP | [optional] 
 **stop_loss** | **str**| Not less than 0, 0 means cancel SL | [optional] 
 **trailing_stop** | **str**| Not less than 0, 0 means cancel TS | [optional] 
 **new_trailing_active** | **str**| Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

