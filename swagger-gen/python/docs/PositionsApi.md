# swagger_client.PositionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positions_change_margin**](PositionsApi.md#positions_change_margin) | **POST** /position/change-position-margin | Update margin.
[**positions_my_position**](PositionsApi.md#positions_my_position) | **GET** /position/list | Get my position list.
[**positions_save_leverage**](PositionsApi.md#positions_save_leverage) | **POST** /user/leverage/save | Change user leverage.
[**positions_trading_stop**](PositionsApi.md#positions_trading_stop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.
[**positions_user_leverage**](PositionsApi.md#positions_user_leverage) | **GET** /user/leverage | Get user leverage setting.


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

# create an instance of the API class
api_instance = swagger_client.PositionsApi()
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positions_my_position**
> object positions_my_position()

Get my position list.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PositionsApi()

try:
    # Get my position list.
    api_response = api_instance.positions_my_position()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PositionsApi->positions_my_position: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

# create an instance of the API class
api_instance = swagger_client.PositionsApi()
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positions_trading_stop**
> object positions_trading_stop(symbol, take_profit=take_profit, stop_loss=stop_loss, trailing_stop=trailing_stop)

Set Trading-Stop Condition.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PositionsApi()
symbol = 'symbol_example' # str | Contract type
take_profit = 'take_profit_example' # str | Not less than 0, 0 means cancel TP (optional)
stop_loss = 'stop_loss_example' # str | Not less than 0, 0 means cancel SL (optional)
trailing_stop = 'trailing_stop_example' # str | Not less than 0, 0 means cancel TS (optional)

try:
    # Set Trading-Stop Condition.
    api_response = api_instance.positions_trading_stop(symbol, take_profit=take_profit, stop_loss=stop_loss, trailing_stop=trailing_stop)
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

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positions_user_leverage**
> object positions_user_leverage()

Get user leverage setting.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PositionsApi()

try:
    # Get user leverage setting.
    api_response = api_instance.positions_user_leverage()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PositionsApi->positions_user_leverage: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

