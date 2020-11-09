# swagger_client.LinearPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_positions_change_margin**](LinearPositionsApi.md#linear_positions_change_margin) | **POST** /private/linear/position/add-margin | Add/Reduce Margin
[**linear_positions_close_pnl_records**](LinearPositionsApi.md#linear_positions_close_pnl_records) | **GET** /private/linear/trade/closed-pnl/list | Get user&#39;s closed profit and loss records.
[**linear_positions_my_position**](LinearPositionsApi.md#linear_positions_my_position) | **GET** /private/linear/position/list | Get my position list.
[**linear_positions_save_leverage**](LinearPositionsApi.md#linear_positions_save_leverage) | **POST** /private/linear/position/set-leverage | Set leverage
[**linear_positions_set_auto_add_margin**](LinearPositionsApi.md#linear_positions_set_auto_add_margin) | **POST** /private/linear/position/set-auto-add-margin | Set auto add margin
[**linear_positions_switch_isolated**](LinearPositionsApi.md#linear_positions_switch_isolated) | **POST** /private/linear/position/switch-isolated | Switch isolated
[**linear_positions_switch_mode**](LinearPositionsApi.md#linear_positions_switch_mode) | **POST** /private/linear/tpsl/switch-mode | Switch Mode
[**linear_positions_trading_stop**](LinearPositionsApi.md#linear_positions_trading_stop) | **POST** /private/linear/position/trading-stop | Set tradingStop


# **linear_positions_change_margin**
> object linear_positions_change_margin(symbol=symbol, side=side, margin=margin)

Add/Reduce Margin

This will Add/Reduce Margin

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
side = 'side_example' # str |  (optional)
margin = 1.2 # float |  (optional)

try:
    # Add/Reduce Margin
    api_response = api_instance.linear_positions_change_margin(symbol=symbol, side=side, margin=margin)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_change_margin: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **side** | **str**|  | [optional] 
 **margin** | **float**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_positions_close_pnl_records**
> object linear_positions_close_pnl_records(symbol=symbol, start_time=start_time, end_time=end_time, exec_type=exec_type, page=page, limit=limit)

Get user's closed profit and loss records.

This will get user's closed profit and loss records.

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
start_time = 789 # int |  (optional)
end_time = 789 # int |  (optional)
exec_type = 'exec_type_example' # str |  (optional)
page = 789 # int |  (optional)
limit = 789 # int |  (optional)

try:
    # Get user's closed profit and loss records.
    api_response = api_instance.linear_positions_close_pnl_records(symbol=symbol, start_time=start_time, end_time=end_time, exec_type=exec_type, page=page, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_close_pnl_records: %s\n" % e)
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

# **linear_positions_my_position**
> object linear_positions_my_position(symbol=symbol)

Get my position list.

This will get my position list.

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)

try:
    # Get my position list.
    api_response = api_instance.linear_positions_my_position(symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_my_position: %s\n" % e)
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

# **linear_positions_save_leverage**
> object linear_positions_save_leverage(symbol=symbol, buy_leverage=buy_leverage, sell_leverage=sell_leverage)

Set leverage

This will Set Leverage

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
buy_leverage = 1.2 # float |  (optional)
sell_leverage = 1.2 # float |  (optional)

try:
    # Set leverage
    api_response = api_instance.linear_positions_save_leverage(symbol=symbol, buy_leverage=buy_leverage, sell_leverage=sell_leverage)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_save_leverage: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **buy_leverage** | **float**|  | [optional] 
 **sell_leverage** | **float**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_positions_set_auto_add_margin**
> object linear_positions_set_auto_add_margin(symbol=symbol, side=side, auto_add_margin=auto_add_margin)

Set auto add margin

This will Set auto add margin

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
side = 'side_example' # str |  (optional)
auto_add_margin = true # bool |  (optional)

try:
    # Set auto add margin
    api_response = api_instance.linear_positions_set_auto_add_margin(symbol=symbol, side=side, auto_add_margin=auto_add_margin)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_set_auto_add_margin: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **side** | **str**|  | [optional] 
 **auto_add_margin** | **bool**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_positions_switch_isolated**
> object linear_positions_switch_isolated(symbol=symbol, is_isolated=is_isolated, buy_leverage=buy_leverage, sell_leverage=sell_leverage)

Switch isolated

This will switch isolated

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
is_isolated = true # bool |  (optional)
buy_leverage = 1.2 # float |  (optional)
sell_leverage = 1.2 # float |  (optional)

try:
    # Switch isolated
    api_response = api_instance.linear_positions_switch_isolated(symbol=symbol, is_isolated=is_isolated, buy_leverage=buy_leverage, sell_leverage=sell_leverage)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_switch_isolated: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **is_isolated** | **bool**|  | [optional] 
 **buy_leverage** | **float**|  | [optional] 
 **sell_leverage** | **float**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_positions_switch_mode**
> object linear_positions_switch_mode(symbol=symbol, tp_sl_mode=tp_sl_mode)

Switch Mode

This will Switch TP/SL Mode

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
tp_sl_mode = 'tp_sl_mode_example' # str |  (optional)

try:
    # Switch Mode
    api_response = api_instance.linear_positions_switch_mode(symbol=symbol, tp_sl_mode=tp_sl_mode)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_switch_mode: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **tp_sl_mode** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_positions_trading_stop**
> object linear_positions_trading_stop(symbol=symbol, side=side, take_profit=take_profit, stop_loss=stop_loss, trailing_stop=trailing_stop, tp_trigger_by=tp_trigger_by, sl_trigger_by=sl_trigger_by, sl_size=sl_size, tp_size=tp_size)

Set tradingStop

This will set tradingStop

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
api_instance = swagger_client.LinearPositionsApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
side = 'side_example' # str |  (optional)
take_profit = 1.2 # float |  (optional)
stop_loss = 1.2 # float |  (optional)
trailing_stop = 1.2 # float |  (optional)
tp_trigger_by = 'tp_trigger_by_example' # str |  (optional)
sl_trigger_by = 'sl_trigger_by_example' # str |  (optional)
sl_size = 1.2 # float |  (optional)
tp_size = 1.2 # float |  (optional)

try:
    # Set tradingStop
    api_response = api_instance.linear_positions_trading_stop(symbol=symbol, side=side, take_profit=take_profit, stop_loss=stop_loss, trailing_stop=trailing_stop, tp_trigger_by=tp_trigger_by, sl_trigger_by=sl_trigger_by, sl_size=sl_size, tp_size=tp_size)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearPositionsApi->linear_positions_trading_stop: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **side** | **str**|  | [optional] 
 **take_profit** | **float**|  | [optional] 
 **stop_loss** | **float**|  | [optional] 
 **trailing_stop** | **float**|  | [optional] 
 **tp_trigger_by** | **str**|  | [optional] 
 **sl_trigger_by** | **str**|  | [optional] 
 **sl_size** | **float**|  | [optional] 
 **tp_size** | **float**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

