# SwaggerClient::OrderApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_cancel**](OrderApi.md#order_cancel) | **POST** /open-api/order/cancel | Get my active order list.
[**order_cancel_all**](OrderApi.md#order_cancel_all) | **POST** /v2/private/order/cancelAll | Get my active order list.
[**order_cancel_v2**](OrderApi.md#order_cancel_v2) | **POST** /v2/private/order/cancel | Get my active order list.
[**order_get_orders**](OrderApi.md#order_get_orders) | **GET** /open-api/order/list | Get my active order list.
[**order_new**](OrderApi.md#order_new) | **POST** /open-api/order/create | Place active order
[**order_new_v2**](OrderApi.md#order_new_v2) | **POST** /v2/private/order/create | Place active order
[**order_query**](OrderApi.md#order_query) | **GET** /v2/private/order | Get my active order list.
[**order_replace**](OrderApi.md#order_replace) | **POST** /open-api/order/replace | Replace active order. Only incomplete orders can be modified. 


# **order_cancel**
> Object order_cancel(order_id, opts)

Get my active order list.

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

api_instance = SwaggerClient::OrderApi.new

order_id = 'order_id_example' # String | Order ID

opts = { 
  symbol: 'symbol_example' # String | Contract type.
}

begin
  #Get my active order list.
  result = api_instance.order_cancel(order_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Order ID | 
 **symbol** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_cancel_all**
> Object order_cancel_all(symbol)

Get my active order list.

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

api_instance = SwaggerClient::OrderApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Get my active order list.
  result = api_instance.order_cancel_all(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_cancel_all: #{e}"
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_cancel_v2**
> Object order_cancel_v2(order_id, opts)

Get my active order list.

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

api_instance = SwaggerClient::OrderApi.new

order_id = 'order_id_example' # String | Order ID

opts = { 
  symbol: 'symbol_example' # String | Contract type.
}

begin
  #Get my active order list.
  result = api_instance.order_cancel_v2(order_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_cancel_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Order ID | 
 **symbol** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_get_orders**
> Object order_get_orders(opts)

Get my active order list.

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

api_instance = SwaggerClient::OrderApi.new

opts = { 
  order_id: 'order_id_example', # String | Order ID
  order_link_id: 'order_link_id_example', # String | Customized order ID.
  symbol: 'symbol_example', # String | Contract type. Default BTCUSD
  order: 'order_example', # String | Sort orders by creation date
  page: 8.14, # Float | Page. Default getting first page data
  limit: 8.14, # Float | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
  order_status: 'order_status_example' # String | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by
}

begin
  #Get my active order list.
  result = api_instance.order_get_orders(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Order ID | [optional] 
 **order_link_id** | **String**| Customized order ID. | [optional] 
 **symbol** | **String**| Contract type. Default BTCUSD | [optional] 
 **order** | **String**| Sort orders by creation date | [optional] 
 **page** | **Float**| Page. Default getting first page data | [optional] 
 **limit** | **Float**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **order_status** | **String**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_new**
> Object order_new(side, symbol, order_type, qty, price, time_in_force, opts)

Place active order

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

api_instance = SwaggerClient::OrderApi.new

side = 'side_example' # String | Side

symbol = 'symbol_example' # String | Contract type.

order_type = 'order_type_example' # String | Active order type

qty = 8.14 # Float | 

price = 1.2 # Float | Order price.

time_in_force = 'time_in_force_example' # String | Time in force

opts = { 
  take_profit: 1.2, # Float | take profit price
  stop_loss: 1.2, # Float | stop loss price
  reduce_only: true, # BOOLEAN | reduce only
  close_on_trigger: true, # BOOLEAN | close on trigger
  order_link_id: 'order_link_id_example' # String | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
}

begin
  #Place active order
  result = api_instance.order_new(side, symbol, order_type, qty, price, time_in_force, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_new: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side | 
 **symbol** | **String**| Contract type. | 
 **order_type** | **String**| Active order type | 
 **qty** | **Float**|  | 
 **price** | **Float**| Order price. | 
 **time_in_force** | **String**| Time in force | 
 **take_profit** | **Float**| take profit price | [optional] 
 **stop_loss** | **Float**| stop loss price | [optional] 
 **reduce_only** | **BOOLEAN**| reduce only | [optional] 
 **close_on_trigger** | **BOOLEAN**| close on trigger | [optional] 
 **order_link_id** | **String**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_new_v2**
> Object order_new_v2(side, symbol, order_type, qty, price, time_in_force, opts)

Place active order

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

api_instance = SwaggerClient::OrderApi.new

side = 'side_example' # String | Side

symbol = 'symbol_example' # String | Contract type.

order_type = 'order_type_example' # String | Active order type

qty = 8.14 # Float | 

price = 1.2 # Float | Order price.

time_in_force = 'time_in_force_example' # String | Time in force

opts = { 
  take_profit: 1.2, # Float | take profit price
  stop_loss: 1.2, # Float | stop loss price
  reduce_only: true, # BOOLEAN | reduce only
  close_on_trigger: true, # BOOLEAN | close on trigger
  order_link_id: 'order_link_id_example', # String | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
  trailing_stop: 'trailing_stop_example' # String | Trailing stop.
}

begin
  #Place active order
  result = api_instance.order_new_v2(side, symbol, order_type, qty, price, time_in_force, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_new_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side | 
 **symbol** | **String**| Contract type. | 
 **order_type** | **String**| Active order type | 
 **qty** | **Float**|  | 
 **price** | **Float**| Order price. | 
 **time_in_force** | **String**| Time in force | 
 **take_profit** | **Float**| take profit price | [optional] 
 **stop_loss** | **Float**| stop loss price | [optional] 
 **reduce_only** | **BOOLEAN**| reduce only | [optional] 
 **close_on_trigger** | **BOOLEAN**| close on trigger | [optional] 
 **order_link_id** | **String**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 
 **trailing_stop** | **String**| Trailing stop. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_query**
> Object order_query(opts)

Get my active order list.

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

api_instance = SwaggerClient::OrderApi.new

opts = { 
  order_id: 'order_id_example', # String | Order ID
  symbol: 'symbol_example' # String | Contract type. Default BTCUSD
}

begin
  #Get my active order list.
  result = api_instance.order_query(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Order ID | [optional] 
 **symbol** | **String**| Contract type. Default BTCUSD | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_replace**
> Object order_replace(order_id, symbol, opts)

Replace active order. Only incomplete orders can be modified. 

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

api_instance = SwaggerClient::OrderApi.new

order_id = 'order_id_example' # String | Order ID.

symbol = 'symbol_example' # String | Contract type.

opts = { 
  p_r_qty: 8.14, # Float | Order quantity.
  p_r_price: 1.2 # Float | Order price.
}

begin
  #Replace active order. Only incomplete orders can be modified. 
  result = api_instance.order_replace(order_id, symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Order ID. | 
 **symbol** | **String**| Contract type. | 
 **p_r_qty** | **Float**| Order quantity. | [optional] 
 **p_r_price** | **Float**| Order price. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



