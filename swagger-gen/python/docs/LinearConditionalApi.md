# swagger_client.LinearConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_conditional_cancel**](LinearConditionalApi.md#linear_conditional_cancel) | **POST** /private/linear/stop-order/cancel | Cancel Active Order
[**linear_conditional_cancel_all**](LinearConditionalApi.md#linear_conditional_cancel_all) | **POST** /private/linear/stop-order/cancel-all | Cancel all stop orders.
[**linear_conditional_get_orders**](LinearConditionalApi.md#linear_conditional_get_orders) | **GET** /private/linear/stop-order/list | Get linear Stop Orders
[**linear_conditional_new**](LinearConditionalApi.md#linear_conditional_new) | **POST** /private/linear/stop-order/create | Create linear stop Order
[**linear_conditional_query**](LinearConditionalApi.md#linear_conditional_query) | **GET** /private/linear/stop-order/search | Get Stop Orders(real-time)
[**linear_conditional_replace**](LinearConditionalApi.md#linear_conditional_replace) | **POST** /private/linear/stop-order/replace | Replace conditional order


# **linear_conditional_cancel**
> object linear_conditional_cancel(stop_order_id=stop_order_id, order_link_id=order_link_id, symbol=symbol)

Cancel Active Order

This will cancel linear active order

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
api_instance = swagger_client.LinearConditionalApi(swagger_client.ApiClient(configuration))
stop_order_id = 'stop_order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)
symbol = 'symbol_example' # str |  (optional)

try:
    # Cancel Active Order
    api_response = api_instance.linear_conditional_cancel(stop_order_id=stop_order_id, order_link_id=order_link_id, symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearConditionalApi->linear_conditional_cancel: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **str**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 
 **symbol** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_conditional_cancel_all**
> object linear_conditional_cancel_all(symbol)

Cancel all stop orders.

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
api_instance = swagger_client.LinearConditionalApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.

try:
    # Cancel all stop orders.
    api_response = api_instance.linear_conditional_cancel_all(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearConditionalApi->linear_conditional_cancel_all: %s\n" % e)
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

# **linear_conditional_get_orders**
> object linear_conditional_get_orders(stop_order_id=stop_order_id, order_link_id=order_link_id, symbol=symbol, order=order, page=page, limit=limit, stop_order_status=stop_order_status)

Get linear Stop Orders

This will get linear active orders

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
api_instance = swagger_client.LinearConditionalApi(swagger_client.ApiClient(configuration))
stop_order_id = 'stop_order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)
symbol = 'symbol_example' # str |  (optional)
order = 'order_example' # str |  (optional)
page = 'page_example' # str |  (optional)
limit = 'limit_example' # str |  (optional)
stop_order_status = 'stop_order_status_example' # str |  (optional)

try:
    # Get linear Stop Orders
    api_response = api_instance.linear_conditional_get_orders(stop_order_id=stop_order_id, order_link_id=order_link_id, symbol=symbol, order=order, page=page, limit=limit, stop_order_status=stop_order_status)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearConditionalApi->linear_conditional_get_orders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **str**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 
 **symbol** | **str**|  | [optional] 
 **order** | **str**|  | [optional] 
 **page** | **str**|  | [optional] 
 **limit** | **str**|  | [optional] 
 **stop_order_status** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_conditional_new**
> object linear_conditional_new(symbol=symbol, side=side, order_type=order_type, qty=qty, price=price, base_price=base_price, stop_px=stop_px, time_in_force=time_in_force, trigger_by=trigger_by, reduce_only=reduce_only, close_on_trigger=close_on_trigger, order_link_id=order_link_id, take_profit=take_profit, stop_loss=stop_loss, tp_trigger_by=tp_trigger_by, sl_trigger_by=sl_trigger_by)

Create linear stop Order

This will create linear stop order

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
api_instance = swagger_client.LinearConditionalApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
side = 'side_example' # str |  (optional)
order_type = 'order_type_example' # str |  (optional)
qty = 1.2 # float |  (optional)
price = 1.2 # float |  (optional)
base_price = 1.2 # float |  (optional)
stop_px = 1.2 # float |  (optional)
time_in_force = 'time_in_force_example' # str |  (optional)
trigger_by = 'trigger_by_example' # str |  (optional)
reduce_only = true # bool |  (optional)
close_on_trigger = true # bool |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)
take_profit = 1.2 # float |  (optional)
stop_loss = 1.2 # float |  (optional)
tp_trigger_by = 'tp_trigger_by_example' # str |  (optional)
sl_trigger_by = 'sl_trigger_by_example' # str |  (optional)

try:
    # Create linear stop Order
    api_response = api_instance.linear_conditional_new(symbol=symbol, side=side, order_type=order_type, qty=qty, price=price, base_price=base_price, stop_px=stop_px, time_in_force=time_in_force, trigger_by=trigger_by, reduce_only=reduce_only, close_on_trigger=close_on_trigger, order_link_id=order_link_id, take_profit=take_profit, stop_loss=stop_loss, tp_trigger_by=tp_trigger_by, sl_trigger_by=sl_trigger_by)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearConditionalApi->linear_conditional_new: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **side** | **str**|  | [optional] 
 **order_type** | **str**|  | [optional] 
 **qty** | **float**|  | [optional] 
 **price** | **float**|  | [optional] 
 **base_price** | **float**|  | [optional] 
 **stop_px** | **float**|  | [optional] 
 **time_in_force** | **str**|  | [optional] 
 **trigger_by** | **str**|  | [optional] 
 **reduce_only** | **bool**|  | [optional] 
 **close_on_trigger** | **bool**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 
 **take_profit** | **float**|  | [optional] 
 **stop_loss** | **float**|  | [optional] 
 **tp_trigger_by** | **str**|  | [optional] 
 **sl_trigger_by** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_conditional_query**
> object linear_conditional_query(symbol=symbol, stop_order_id=stop_order_id, order_link_id=order_link_id)

Get Stop Orders(real-time)

This will get linear stop orders(real-time)

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
api_instance = swagger_client.LinearConditionalApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
stop_order_id = 'stop_order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)

try:
    # Get Stop Orders(real-time)
    api_response = api_instance.linear_conditional_query(symbol=symbol, stop_order_id=stop_order_id, order_link_id=order_link_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearConditionalApi->linear_conditional_query: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **stop_order_id** | **str**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_conditional_replace**
> object linear_conditional_replace(symbol, stop_order_id=stop_order_id, order_link_id=order_link_id, p_r_qty=p_r_qty, p_r_price=p_r_price, p_r_trigger_price=p_r_trigger_price)

Replace conditional order

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
api_instance = swagger_client.LinearConditionalApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | 
stop_order_id = 'stop_order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)
p_r_qty = 'p_r_qty_example' # str |  (optional)
p_r_price = 8.14 # float |  (optional)
p_r_trigger_price = 8.14 # float |  (optional)

try:
    # Replace conditional order
    api_response = api_instance.linear_conditional_replace(symbol, stop_order_id=stop_order_id, order_link_id=order_link_id, p_r_qty=p_r_qty, p_r_price=p_r_price, p_r_trigger_price=p_r_trigger_price)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearConditionalApi->linear_conditional_replace: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | 
 **stop_order_id** | **str**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 
 **p_r_qty** | **str**|  | [optional] 
 **p_r_price** | **float**|  | [optional] 
 **p_r_trigger_price** | **float**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

