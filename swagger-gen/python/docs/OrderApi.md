# swagger_client.OrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_cancel**](OrderApi.md#order_cancel) | **POST** /v2/private/order/cancel | Get my active order list.
[**order_cancel_all**](OrderApi.md#order_cancel_all) | **POST** /v2/private/order/cancelAll | Get my active order list.
[**order_get_orders**](OrderApi.md#order_get_orders) | **GET** /v2/private/order/list | Get my active order list.
[**order_new**](OrderApi.md#order_new) | **POST** /v2/private/order/create | Place active order
[**order_query**](OrderApi.md#order_query) | **GET** /v2/private/order | Get my active order list.
[**order_replace**](OrderApi.md#order_replace) | **POST** /v2/private/order/replace | Replace active order. Only incomplete orders can be modified. 


# **order_cancel**
> object order_cancel(symbol, order_id=order_id, order_link_id=order_link_id)

Get my active order list.

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
api_instance = swagger_client.OrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.
order_id = 'order_id_example' # str | Order ID (optional)
order_link_id = 'order_link_id_example' # str | Order link id. (optional)

try:
    # Get my active order list.
    api_response = api_instance.order_cancel(symbol, order_id=order_id, order_link_id=order_link_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrderApi->order_cancel: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **order_id** | **str**| Order ID | [optional] 
 **order_link_id** | **str**| Order link id. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_cancel_all**
> object order_cancel_all(symbol)

Get my active order list.

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
api_instance = swagger_client.OrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.

try:
    # Get my active order list.
    api_response = api_instance.order_cancel_all(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrderApi->order_cancel_all: %s\n" % e)
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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_get_orders**
> object order_get_orders(symbol, limit=limit, order_status=order_status, direction=direction, cursor=cursor)

Get my active order list.

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
api_instance = swagger_client.OrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type. Default BTCUSD
limit = 8.14 # float | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
order_status = 'order_status_example' # str | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by (optional)
direction = 'direction_example' # str | Search direction. prev: prev page, next: next page. Defaults to next (optional)
cursor = 'cursor_example' # str | cursor is a unique identifier for a specific record, which acts as a pointer to the next record we want to start querying from to get the next page of results (optional)

try:
    # Get my active order list.
    api_response = api_instance.order_get_orders(symbol, limit=limit, order_status=order_status, direction=direction, cursor=cursor)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrderApi->order_get_orders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. Default BTCUSD | 
 **limit** | **float**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **order_status** | **str**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional] 
 **direction** | **str**| Search direction. prev: prev page, next: next page. Defaults to next | [optional] 
 **cursor** | **str**| cursor is a unique identifier for a specific record, which acts as a pointer to the next record we want to start querying from to get the next page of results | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_new**
> object order_new(side, symbol, order_type, qty, time_in_force, price=price, take_profit=take_profit, stop_loss=stop_loss, reduce_only=reduce_only, close_on_trigger=close_on_trigger, order_link_id=order_link_id)

Place active order

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
api_instance = swagger_client.OrderApi(swagger_client.ApiClient(configuration))
side = 'side_example' # str | Side
symbol = 'symbol_example' # str | Contract type.
order_type = 'order_type_example' # str | Active order type
qty = 8.14 # float | 
time_in_force = 'time_in_force_example' # str | Time in force
price = 1.2 # float | Order price. (optional)
take_profit = 1.2 # float | take profit price (optional)
stop_loss = 1.2 # float | stop loss price (optional)
reduce_only = true # bool | reduce only (optional)
close_on_trigger = true # bool | close on trigger (optional)
order_link_id = 'order_link_id_example' # str | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional)

try:
    # Place active order
    api_response = api_instance.order_new(side, symbol, order_type, qty, time_in_force, price=price, take_profit=take_profit, stop_loss=stop_loss, reduce_only=reduce_only, close_on_trigger=close_on_trigger, order_link_id=order_link_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrderApi->order_new: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **str**| Side | 
 **symbol** | **str**| Contract type. | 
 **order_type** | **str**| Active order type | 
 **qty** | **float**|  | 
 **time_in_force** | **str**| Time in force | 
 **price** | **float**| Order price. | [optional] 
 **take_profit** | **float**| take profit price | [optional] 
 **stop_loss** | **float**| stop loss price | [optional] 
 **reduce_only** | **bool**| reduce only | [optional] 
 **close_on_trigger** | **bool**| close on trigger | [optional] 
 **order_link_id** | **str**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_query**
> object order_query(order_id=order_id, symbol=symbol, order_link_id=order_link_id)

Get my active order list.

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
api_instance = swagger_client.OrderApi(swagger_client.ApiClient(configuration))
order_id = 'order_id_example' # str | Order ID (optional)
symbol = 'symbol_example' # str | Contract type. Default BTCUSD (optional)
order_link_id = 'order_link_id_example' # str | Agency customized order ID (optional)

try:
    # Get my active order list.
    api_response = api_instance.order_query(order_id=order_id, symbol=symbol, order_link_id=order_link_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrderApi->order_query: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **str**| Order ID | [optional] 
 **symbol** | **str**| Contract type. Default BTCUSD | [optional] 
 **order_link_id** | **str**| Agency customized order ID | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_replace**
> object order_replace(symbol, order_id=order_id, order_link_id=order_link_id, p_r_qty=p_r_qty, p_r_price=p_r_price)

Replace active order. Only incomplete orders can be modified. 

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
api_instance = swagger_client.OrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.
order_id = 'order_id_example' # str | Order ID. (optional)
order_link_id = 'order_link_id_example' # str | Order Link ID. (optional)
p_r_qty = 'p_r_qty_example' # str | Order quantity. (optional)
p_r_price = 'p_r_price_example' # str | Order price. (optional)

try:
    # Replace active order. Only incomplete orders can be modified. 
    api_response = api_instance.order_replace(symbol, order_id=order_id, order_link_id=order_link_id, p_r_qty=p_r_qty, p_r_price=p_r_price)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrderApi->order_replace: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **order_id** | **str**| Order ID. | [optional] 
 **order_link_id** | **str**| Order Link ID. | [optional] 
 **p_r_qty** | **str**| Order quantity. | [optional] 
 **p_r_price** | **str**| Order price. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

