# SwaggerClient::ConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditional_cancel**](ConditionalApi.md#conditional_cancel) | **POST** /v2/private/stop-order/cancel | Cancel conditional order.
[**conditional_cancel_all**](ConditionalApi.md#conditional_cancel_all) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditional_get_orders**](ConditionalApi.md#conditional_get_orders) | **GET** /v2/private/stop-order/list | Get my conditional order list.
[**conditional_new**](ConditionalApi.md#conditional_new) | **POST** /v2/private/stop-order/create | Place a new conditional order.
[**conditional_query**](ConditionalApi.md#conditional_query) | **GET** /v2/private/stop-order | Query real-time stop order information.
[**conditional_replace**](ConditionalApi.md#conditional_replace) | **POST** /v2/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


# **conditional_cancel**
> Object conditional_cancel(symbol, opts)

Cancel conditional order.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'

  # Configure API key authorization: apiSignature
  config.api_key['sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['sign'] = 'Bearer'

  # Configure API key authorization: timestamp
  config.api_key['timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['timestamp'] = 'Bearer'
end

api_instance = SwaggerClient::ConditionalApi.new

symbol = 'symbol_example' # String | Contract type.

opts = { 
  stop_order_id: 'stop_order_id_example', # String | Order ID of conditional order.
  order_link_id: 'order_link_id_example' # String | Agency customized order ID.
}

begin
  #Cancel conditional order.
  result = api_instance.conditional_cancel(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **stop_order_id** | **String**| Order ID of conditional order. | [optional] 
 **order_link_id** | **String**| Agency customized order ID. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **conditional_cancel_all**
> Object conditional_cancel_all(symbol)

Cancel conditional order.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'

  # Configure API key authorization: apiSignature
  config.api_key['sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['sign'] = 'Bearer'

  # Configure API key authorization: timestamp
  config.api_key['timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['timestamp'] = 'Bearer'
end

api_instance = SwaggerClient::ConditionalApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Cancel conditional order.
  result = api_instance.conditional_cancel_all(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_cancel_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **conditional_get_orders**
> Object conditional_get_orders(symbol, opts)

Get my conditional order list.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'

  # Configure API key authorization: apiSignature
  config.api_key['sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['sign'] = 'Bearer'

  # Configure API key authorization: timestamp
  config.api_key['timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['timestamp'] = 'Bearer'
end

api_instance = SwaggerClient::ConditionalApi.new

symbol = 'symbol_example' # String | Contract type

opts = { 
  stop_order_status: 'stop_order_status_example', # String | Stop order status.
  limit: 8.14, # Float | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
  direction: 'direction_example', # String | Search direction. prev: prev page, next: next page. Defaults to next
  cursor: 'cursor_example' # String | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode
}

begin
  #Get my conditional order list.
  result = api_instance.conditional_get_orders(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type | 
 **stop_order_status** | **String**| Stop order status. | [optional] 
 **limit** | **Float**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 
 **direction** | **String**| Search direction. prev: prev page, next: next page. Defaults to next | [optional] 
 **cursor** | **String**| Page turning mark，Use return cursor,Sign use origin data, in request please urlencode | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **conditional_new**
> Object conditional_new(side, symbol, order_type, qty, base_price, stop_px, time_in_force, opts)

Place a new conditional order.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'

  # Configure API key authorization: apiSignature
  config.api_key['sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['sign'] = 'Bearer'

  # Configure API key authorization: timestamp
  config.api_key['timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['timestamp'] = 'Bearer'
end

api_instance = SwaggerClient::ConditionalApi.new

side = 'side_example' # String | Side.

symbol = 'symbol_example' # String | Contract type.

order_type = 'order_type_example' # String | Conditional order type.

qty = 'qty_example' # String | Order quantity.

base_price = 'base_price_example' # String | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..

stop_px = 'stop_px_example' # String | Trigger price.

time_in_force = 'time_in_force_example' # String | Time in force.

opts = { 
  price: 'price_example', # String | Execution price for conditional order
  trigger_by: 'trigger_by_example', # String | Trigger price type. Default LastPrice.
  close_on_trigger: true, # BOOLEAN | close on trigger.
  order_link_id: 'order_link_id_example' # String | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..
}

begin
  #Place a new conditional order.
  result = api_instance.conditional_new(side, symbol, order_type, qty, base_price, stop_px, time_in_force, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_new: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side. | 
 **symbol** | **String**| Contract type. | 
 **order_type** | **String**| Conditional order type. | 
 **qty** | **String**| Order quantity. | 
 **base_price** | **String**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stop_px** | **String**| Trigger price. | 
 **time_in_force** | **String**| Time in force. | 
 **price** | **String**| Execution price for conditional order | [optional] 
 **trigger_by** | **String**| Trigger price type. Default LastPrice. | [optional] 
 **close_on_trigger** | **BOOLEAN**| close on trigger. | [optional] 
 **order_link_id** | **String**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **conditional_query**
> Object conditional_query(opts)

Query real-time stop order information.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'

  # Configure API key authorization: apiSignature
  config.api_key['sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['sign'] = 'Bearer'

  # Configure API key authorization: timestamp
  config.api_key['timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['timestamp'] = 'Bearer'
end

api_instance = SwaggerClient::ConditionalApi.new

opts = { 
  stop_order_id: 'stop_order_id_example', # String | Order ID of conditional order.
  order_link_id: 'order_link_id_example', # String | Agency customized order ID.
  symbol: 'symbol_example' # String | Contract type.
}

begin
  #Query real-time stop order information.
  result = api_instance.conditional_query(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **String**| Order ID of conditional order. | [optional] 
 **order_link_id** | **String**| Agency customized order ID. | [optional] 
 **symbol** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **conditional_replace**
> Object conditional_replace(symbol, opts)

Replace conditional order. Only incomplete orders can be modified. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'

  # Configure API key authorization: apiSignature
  config.api_key['sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['sign'] = 'Bearer'

  # Configure API key authorization: timestamp
  config.api_key['timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['timestamp'] = 'Bearer'
end

api_instance = SwaggerClient::ConditionalApi.new

symbol = 'symbol_example' # String | Contract type.

opts = { 
  stop_order_id: 'stop_order_id_example', # String | Stop order ID.
  order_link_id: 'order_link_id_example', # String | Order Link ID.
  p_r_qty: 'p_r_qty_example', # String | Order quantity.
  p_r_price: 'p_r_price_example', # String | Order price.
  p_r_trigger_price: 'p_r_trigger_price_example' # String | Trigger price.
}

begin
  #Replace conditional order. Only incomplete orders can be modified. 
  result = api_instance.conditional_replace(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **stop_order_id** | **String**| Stop order ID. | [optional] 
 **order_link_id** | **String**| Order Link ID. | [optional] 
 **p_r_qty** | **String**| Order quantity. | [optional] 
 **p_r_price** | **String**| Order price. | [optional] 
 **p_r_trigger_price** | **String**| Trigger price. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



