# swagger_client.LinearOrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_order_cancel**](LinearOrderApi.md#linear_order_cancel) | **POST** /private/linear/order/cancel | Cancel Active Order
[**linear_order_cancel_all**](LinearOrderApi.md#linear_order_cancel_all) | **POST** /private/linear/order/cancel-all | Cancel all active orders.
[**linear_order_get_orders**](LinearOrderApi.md#linear_order_get_orders) | **GET** /private/linear/order/list | Get linear Active Orders
[**linear_order_new**](LinearOrderApi.md#linear_order_new) | **POST** /private/linear/order/create | Create Active Order
[**linear_order_query**](LinearOrderApi.md#linear_order_query) | **GET** /private/linear/order/search | Get Active Orders(real-time)
[**linear_order_replace**](LinearOrderApi.md#linear_order_replace) | **POST** /private/linear/order/replace | Replace Active Order


# **linear_order_cancel**
> object linear_order_cancel(order_id=order_id, order_link_id=order_link_id, symbol=symbol)

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
api_instance = swagger_client.LinearOrderApi(swagger_client.ApiClient(configuration))
order_id = 'order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)
symbol = 'symbol_example' # str |  (optional)

try:
    # Cancel Active Order
    api_response = api_instance.linear_order_cancel(order_id=order_id, order_link_id=order_link_id, symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearOrderApi->linear_order_cancel: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **str**|  | [optional] 
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

# **linear_order_cancel_all**
> object linear_order_cancel_all(symbol)

Cancel all active orders.

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
api_instance = swagger_client.LinearOrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.

try:
    # Cancel all active orders.
    api_response = api_instance.linear_order_cancel_all(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearOrderApi->linear_order_cancel_all: %s\n" % e)
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

# **linear_order_get_orders**
> object linear_order_get_orders(order_id=order_id, order_link_id=order_link_id, symbol=symbol, order=order, page=page, limit=limit, order_status=order_status)

Get linear Active Orders

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
api_instance = swagger_client.LinearOrderApi(swagger_client.ApiClient(configuration))
order_id = 'order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)
symbol = 'symbol_example' # str |  (optional)
order = 'order_example' # str |  (optional)
page = 'page_example' # str |  (optional)
limit = 'limit_example' # str |  (optional)
order_status = 'order_status_example' # str |  (optional)

try:
    # Get linear Active Orders
    api_response = api_instance.linear_order_get_orders(order_id=order_id, order_link_id=order_link_id, symbol=symbol, order=order, page=page, limit=limit, order_status=order_status)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearOrderApi->linear_order_get_orders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **str**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 
 **symbol** | **str**|  | [optional] 
 **order** | **str**|  | [optional] 
 **page** | **str**|  | [optional] 
 **limit** | **str**|  | [optional] 
 **order_status** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_order_new**
> object linear_order_new(symbol=symbol, side=side, order_type=order_type, time_in_force=time_in_force, qty=qty, price=price, take_profit=take_profit, stop_loss=stop_loss, reduce_only=reduce_only, tp_trigger_by=tp_trigger_by, sl_trigger_by=sl_trigger_by, close_on_trigger=close_on_trigger, order_link_id=order_link_id)

Create Active Order

This will create linear order

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
api_instance = swagger_client.LinearOrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
side = 'side_example' # str |  (optional)
order_type = 'order_type_example' # str |  (optional)
time_in_force = 'time_in_force_example' # str |  (optional)
qty = 1.2 # float |  (optional)
price = 1.2 # float |  (optional)
take_profit = 1.2 # float |  (optional)
stop_loss = 1.2 # float |  (optional)
reduce_only = true # bool |  (optional)
tp_trigger_by = 'tp_trigger_by_example' # str |  (optional)
sl_trigger_by = 'sl_trigger_by_example' # str |  (optional)
close_on_trigger = true # bool |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)

try:
    # Create Active Order
    api_response = api_instance.linear_order_new(symbol=symbol, side=side, order_type=order_type, time_in_force=time_in_force, qty=qty, price=price, take_profit=take_profit, stop_loss=stop_loss, reduce_only=reduce_only, tp_trigger_by=tp_trigger_by, sl_trigger_by=sl_trigger_by, close_on_trigger=close_on_trigger, order_link_id=order_link_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearOrderApi->linear_order_new: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **side** | **str**|  | [optional] 
 **order_type** | **str**|  | [optional] 
 **time_in_force** | **str**|  | [optional] 
 **qty** | **float**|  | [optional] 
 **price** | **float**|  | [optional] 
 **take_profit** | **float**|  | [optional] 
 **stop_loss** | **float**|  | [optional] 
 **reduce_only** | **bool**|  | [optional] 
 **tp_trigger_by** | **str**|  | [optional] 
 **sl_trigger_by** | **str**|  | [optional] 
 **close_on_trigger** | **bool**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_order_query**
> object linear_order_query(symbol=symbol, order_id=order_id, order_link_id=order_link_id)

Get Active Orders(real-time)

This will get linear active orders(real-time)

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
api_instance = swagger_client.LinearOrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str |  (optional)
order_id = 'order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)

try:
    # Get Active Orders(real-time)
    api_response = api_instance.linear_order_query(symbol=symbol, order_id=order_id, order_link_id=order_link_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearOrderApi->linear_order_query: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | [optional] 
 **order_id** | **str**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linear_order_replace**
> object linear_order_replace(symbol, order_id=order_id, order_link_id=order_link_id, p_r_qty=p_r_qty, p_r_price=p_r_price)

Replace Active Order

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
api_instance = swagger_client.LinearOrderApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | 
order_id = 'order_id_example' # str |  (optional)
order_link_id = 'order_link_id_example' # str |  (optional)
p_r_qty = 'p_r_qty_example' # str |  (optional)
p_r_price = 8.14 # float |  (optional)

try:
    # Replace Active Order
    api_response = api_instance.linear_order_replace(symbol, order_id=order_id, order_link_id=order_link_id, p_r_qty=p_r_qty, p_r_price=p_r_price)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinearOrderApi->linear_order_replace: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**|  | 
 **order_id** | **str**|  | [optional] 
 **order_link_id** | **str**|  | [optional] 
 **p_r_qty** | **str**|  | [optional] 
 **p_r_price** | **float**|  | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

