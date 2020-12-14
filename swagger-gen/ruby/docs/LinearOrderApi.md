# SwaggerClient::LinearOrderApi

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
> Object linear_order_cancel(opts)

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

api_instance = SwaggerClient::LinearOrderApi.new

opts = { 
  order_id: 'order_id_example', # String | 
  order_link_id: 'order_link_id_example', # String | 
  symbol: 'symbol_example' # String | 
}

begin
  #Cancel Active Order
  result = api_instance.linear_order_cancel(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearOrderApi->linear_order_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_order_cancel_all**
> Object linear_order_cancel_all(symbol)

Cancel all active orders.

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

api_instance = SwaggerClient::LinearOrderApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Cancel all active orders.
  result = api_instance.linear_order_cancel_all(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearOrderApi->linear_order_cancel_all: #{e}"
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



# **linear_order_get_orders**
> Object linear_order_get_orders(opts)

Get linear Active Orders

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

api_instance = SwaggerClient::LinearOrderApi.new

opts = { 
  order_id: 'order_id_example', # String | 
  order_link_id: 'order_link_id_example', # String | 
  symbol: 'symbol_example', # String | 
  order: 'order_example', # String | 
  page: 'page_example', # String | 
  limit: 'limit_example', # String | 
  order_status: 'order_status_example' # String | 
}

begin
  #Get linear Active Orders
  result = api_instance.linear_order_get_orders(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearOrderApi->linear_order_get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 
 **order** | **String**|  | [optional] 
 **page** | **String**|  | [optional] 
 **limit** | **String**|  | [optional] 
 **order_status** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_order_new**
> Object linear_order_new(opts)

Create Active Order

This will create linear order

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

api_instance = SwaggerClient::LinearOrderApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  side: 'side_example', # String | 
  order_type: 'order_type_example', # String | 
  time_in_force: 'time_in_force_example', # String | 
  qty: 1.2, # Float | 
  price: 1.2, # Float | 
  take_profit: 1.2, # Float | 
  stop_loss: 1.2, # Float | 
  reduce_only: true, # BOOLEAN | 
  tp_trigger_by: 'tp_trigger_by_example', # String | 
  sl_trigger_by: 'sl_trigger_by_example', # String | 
  close_on_trigger: true, # BOOLEAN | 
  order_link_id: 'order_link_id_example' # String | 
}

begin
  #Create Active Order
  result = api_instance.linear_order_new(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearOrderApi->linear_order_new: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **side** | **String**|  | [optional] 
 **order_type** | **String**|  | [optional] 
 **time_in_force** | **String**|  | [optional] 
 **qty** | **Float**|  | [optional] 
 **price** | **Float**|  | [optional] 
 **take_profit** | **Float**|  | [optional] 
 **stop_loss** | **Float**|  | [optional] 
 **reduce_only** | **BOOLEAN**|  | [optional] 
 **tp_trigger_by** | **String**|  | [optional] 
 **sl_trigger_by** | **String**|  | [optional] 
 **close_on_trigger** | **BOOLEAN**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_order_query**
> Object linear_order_query(opts)

Get Active Orders(real-time)

This will get linear active orders(real-time)

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

api_instance = SwaggerClient::LinearOrderApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  order_id: 'order_id_example', # String | 
  order_link_id: 'order_link_id_example' # String | 
}

begin
  #Get Active Orders(real-time)
  result = api_instance.linear_order_query(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearOrderApi->linear_order_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_order_replace**
> Object linear_order_replace(symbol, opts)

Replace Active Order

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

api_instance = SwaggerClient::LinearOrderApi.new

symbol = 'symbol_example' # String | 

opts = { 
  order_id: 'order_id_example', # String | 
  order_link_id: 'order_link_id_example', # String | 
  p_r_qty: 'p_r_qty_example', # String | 
  p_r_price: 8.14 # Float | 
}

begin
  #Replace Active Order
  result = api_instance.linear_order_replace(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearOrderApi->linear_order_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | 
 **order_id** | **String**|  | [optional] 
 **order_link_id** | **String**|  | [optional] 
 **p_r_qty** | **String**|  | [optional] 
 **p_r_price** | **Float**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



