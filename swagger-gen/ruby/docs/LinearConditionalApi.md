# SwaggerClient::LinearConditionalApi

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
> Object linear_conditional_cancel(opts)

Cancel Active Order

This will cancel linear active order

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

api_instance = SwaggerClient::LinearConditionalApi.new

opts = { 
  stop_order_id: 'stop_order_id_example', # String | 
  order_link_id: 'order_link_id_example', # String | 
  symbol: 'symbol_example' # String | 
}

begin
  #Cancel Active Order
  result = api_instance.linear_conditional_cancel(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearConditionalApi->linear_conditional_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_conditional_cancel_all**
> Object linear_conditional_cancel_all(symbol)

Cancel all stop orders.

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

api_instance = SwaggerClient::LinearConditionalApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Cancel all stop orders.
  result = api_instance.linear_conditional_cancel_all(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearConditionalApi->linear_conditional_cancel_all: #{e}"
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



# **linear_conditional_get_orders**
> Object linear_conditional_get_orders(opts)

Get linear Stop Orders

This will get linear active orders

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

api_instance = SwaggerClient::LinearConditionalApi.new

opts = { 
  stop_order_id: 'stop_order_id_example', # String | 
  order_link_id: 'order_link_id_example', # String | 
  symbol: 'symbol_example', # String | 
  order: 'order_example', # String | 
  page: 'page_example', # String | 
  limit: 'limit_example', # String | 
  stop_order_status: 'stop_order_status_example' # String | 
}

begin
  #Get linear Stop Orders
  result = api_instance.linear_conditional_get_orders(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearConditionalApi->linear_conditional_get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 
 **order** | **String**|  | [optional] 
 **page** | **String**|  | [optional] 
 **limit** | **String**|  | [optional] 
 **stop_order_status** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_conditional_new**
> Object linear_conditional_new(opts)

Create linear stop Order

This will create linear stop order

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

api_instance = SwaggerClient::LinearConditionalApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  side: 'side_example', # String | 
  order_type: 'order_type_example', # String | 
  qty: 1.2, # Float | 
  price: 1.2, # Float | 
  base_price: 1.2, # Float | 
  stop_px: 1.2, # Float | 
  time_in_force: 'time_in_force_example', # String | 
  trigger_by: 'trigger_by_example', # String | 
  reduce_only: true, # BOOLEAN | 
  close_on_trigger: true, # BOOLEAN | 
  order_link_id: 'order_link_id_example', # String | 
  take_profit: 1.2, # Float | 
  stop_loss: 1.2, # Float | 
  tp_trigger_by: 'tp_trigger_by_example', # String | 
  sl_trigger_by: 'sl_trigger_by_example' # String | 
}

begin
  #Create linear stop Order
  result = api_instance.linear_conditional_new(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearConditionalApi->linear_conditional_new: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **side** | **String**|  | [optional] 
 **order_type** | **String**|  | [optional] 
 **qty** | **Float**|  | [optional] 
 **price** | **Float**|  | [optional] 
 **base_price** | **Float**|  | [optional] 
 **stop_px** | **Float**|  | [optional] 
 **time_in_force** | **String**|  | [optional] 
 **trigger_by** | **String**|  | [optional] 
 **reduce_only** | **BOOLEAN**|  | [optional] 
 **close_on_trigger** | **BOOLEAN**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 
 **take_profit** | **Float**|  | [optional] 
 **stop_loss** | **Float**|  | [optional] 
 **tp_trigger_by** | **String**|  | [optional] 
 **sl_trigger_by** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_conditional_query**
> Object linear_conditional_query(opts)

Get Stop Orders(real-time)

This will get linear stop orders(real-time)

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

api_instance = SwaggerClient::LinearConditionalApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  stop_order_id: 'stop_order_id_example', # String | 
  order_link_id: 'order_link_id_example' # String | 
}

begin
  #Get Stop Orders(real-time)
  result = api_instance.linear_conditional_query(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearConditionalApi->linear_conditional_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **stop_order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_conditional_replace**
> Object linear_conditional_replace(symbol, opts)

Replace conditional order

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

api_instance = SwaggerClient::LinearConditionalApi.new

symbol = 'symbol_example' # String | 

opts = { 
  stop_order_id: 'stop_order_id_example', # String | 
  order_link_id: 'order_link_id_example', # String | 
  p_r_qty: 'p_r_qty_example', # String | 
  p_r_price: 8.14, # Float | 
  p_r_trigger_price: 8.14 # Float | 
}

begin
  #Replace conditional order
  result = api_instance.linear_conditional_replace(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearConditionalApi->linear_conditional_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | 
 **stop_order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 
 **p_r_qty** | **String**|  | [optional] 
 **p_r_price** | **Float**|  | [optional] 
 **p_r_trigger_price** | **Float**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



