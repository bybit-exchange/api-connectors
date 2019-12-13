# swagger_client.ConditionalApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditional_cancel**](ConditionalApi.md#conditional_cancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**conditional_cancel_all**](ConditionalApi.md#conditional_cancel_all) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditional_get_orders**](ConditionalApi.md#conditional_get_orders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**conditional_new**](ConditionalApi.md#conditional_new) | **POST** /open-api/stop-order/create | Place a new conditional order.
[**conditional_replace**](ConditionalApi.md#conditional_replace) | **POST** /open-api/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


# **conditional_cancel**
> object conditional_cancel(stop_order_id)

Cancel conditional order.

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
api_instance = swagger_client.ConditionalApi(swagger_client.ApiClient(configuration))
stop_order_id = 'stop_order_id_example' # str | Order ID of conditional order.

try:
    # Cancel conditional order.
    api_response = api_instance.conditional_cancel(stop_order_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ConditionalApi->conditional_cancel: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **str**| Order ID of conditional order. | 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditional_cancel_all**
> object conditional_cancel_all(symbol)

Cancel conditional order.

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
api_instance = swagger_client.ConditionalApi(swagger_client.ApiClient(configuration))
symbol = 'symbol_example' # str | Contract type.

try:
    # Cancel conditional order.
    api_response = api_instance.conditional_cancel_all(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ConditionalApi->conditional_cancel_all: %s\n" % e)
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

# **conditional_get_orders**
> object conditional_get_orders(stop_order_id=stop_order_id, order_link_id=order_link_id, symbol=symbol, order=order, page=page, limit=limit)

Get my conditional order list.

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
api_instance = swagger_client.ConditionalApi(swagger_client.ApiClient(configuration))
stop_order_id = 'stop_order_id_example' # str | Order ID of conditional order. (optional)
order_link_id = 'order_link_id_example' # str | Agency customized order ID. (optional)
symbol = 'symbol_example' # str | Contract type. Default BTCUSD. (optional)
order = 'order_example' # str | Sort orders by creation date (optional)
page = 8.14 # float | Page. Default getting first page data (optional)
limit = 8.14 # float | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

try:
    # Get my conditional order list.
    api_response = api_instance.conditional_get_orders(stop_order_id=stop_order_id, order_link_id=order_link_id, symbol=symbol, order=order, page=page, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ConditionalApi->conditional_get_orders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **str**| Order ID of conditional order. | [optional] 
 **order_link_id** | **str**| Agency customized order ID. | [optional] 
 **symbol** | **str**| Contract type. Default BTCUSD. | [optional] 
 **order** | **str**| Sort orders by creation date | [optional] 
 **page** | **float**| Page. Default getting first page data | [optional] 
 **limit** | **float**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditional_new**
> object conditional_new(side, symbol, order_type, qty, price, base_price, stop_px, time_in_force, trigger_by=trigger_by, close_on_trigger=close_on_trigger, order_link_id=order_link_id)

Place a new conditional order.

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
api_instance = swagger_client.ConditionalApi(swagger_client.ApiClient(configuration))
side = 'side_example' # str | Side.
symbol = 'symbol_example' # str | Contract type.
order_type = 'order_type_example' # str | Conditional order type.
qty = 8.14 # float | Order quantity.
price = 1.2 # float | Execution price for conditional order
base_price = 1.2 # float | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
stop_px = 1.2 # float | Trigger price.
time_in_force = 'time_in_force_example' # str | Time in force.
trigger_by = 'trigger_by_example' # str | Trigger price type. Default LastPrice. (optional)
close_on_trigger = true # bool | close on trigger. (optional)
order_link_id = 'order_link_id_example' # str | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. (optional)

try:
    # Place a new conditional order.
    api_response = api_instance.conditional_new(side, symbol, order_type, qty, price, base_price, stop_px, time_in_force, trigger_by=trigger_by, close_on_trigger=close_on_trigger, order_link_id=order_link_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ConditionalApi->conditional_new: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **str**| Side. | 
 **symbol** | **str**| Contract type. | 
 **order_type** | **str**| Conditional order type. | 
 **qty** | **float**| Order quantity. | 
 **price** | **float**| Execution price for conditional order | 
 **base_price** | **float**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stop_px** | **float**| Trigger price. | 
 **time_in_force** | **str**| Time in force. | 
 **trigger_by** | **str**| Trigger price type. Default LastPrice. | [optional] 
 **close_on_trigger** | **bool**| close on trigger. | [optional] 
 **order_link_id** | **str**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditional_replace**
> object conditional_replace(order_id, symbol, p_r_qty=p_r_qty, p_r_price=p_r_price, p_r_trigger_price=p_r_trigger_price)

Replace conditional order. Only incomplete orders can be modified. 

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
api_instance = swagger_client.ConditionalApi(swagger_client.ApiClient(configuration))
order_id = 'order_id_example' # str | Order ID.
symbol = 'symbol_example' # str | Contract type.
p_r_qty = 8.14 # float | Order quantity. (optional)
p_r_price = 1.2 # float | Order price. (optional)
p_r_trigger_price = 1.2 # float | Trigger price. (optional)

try:
    # Replace conditional order. Only incomplete orders can be modified. 
    api_response = api_instance.conditional_replace(order_id, symbol, p_r_qty=p_r_qty, p_r_price=p_r_price, p_r_trigger_price=p_r_trigger_price)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ConditionalApi->conditional_replace: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **str**| Order ID. | 
 **symbol** | **str**| Contract type. | 
 **p_r_qty** | **float**| Order quantity. | [optional] 
 **p_r_price** | **float**| Order price. | [optional] 
 **p_r_trigger_price** | **float**| Trigger price. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

