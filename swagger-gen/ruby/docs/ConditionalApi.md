# SwaggerClient::ConditionalApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditional_cancel**](ConditionalApi.md#conditional_cancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**conditional_get_orders**](ConditionalApi.md#conditional_get_orders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**conditional_new**](ConditionalApi.md#conditional_new) | **POST** /open-api/stop-order/create | Place a new conditional order.


# **conditional_cancel**
> Object conditional_cancel(stop_order_id)

Cancel conditional order.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConditionalApi.new

stop_order_id = 'stop_order_id_example' # String | Order ID of conditional order.


begin
  #Cancel conditional order.
  result = api_instance.conditional_cancel(stop_order_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **String**| Order ID of conditional order. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **conditional_get_orders**
> Object conditional_get_orders(opts)

Get my conditional order list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConditionalApi.new

opts = { 
  stop_order_id: 'stop_order_id_example', # String | Order ID of conditional order.
  order_link_id: 'order_link_id_example', # String | Agency customized order ID.
  symbol: 'symbol_example', # String | Contract type. Default BTCUSD.
  order: 'order_example', # String | Sort orders by creation date
  page: 8.14, # Float | Page. Default getting first page data
  limit: 8.14 # Float | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
}

begin
  #Get my conditional order list.
  result = api_instance.conditional_get_orders(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConditionalApi->conditional_get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **String**| Order ID of conditional order. | [optional] 
 **order_link_id** | **String**| Agency customized order ID. | [optional] 
 **symbol** | **String**| Contract type. Default BTCUSD. | [optional] 
 **order** | **String**| Sort orders by creation date | [optional] 
 **page** | **Float**| Page. Default getting first page data | [optional] 
 **limit** | **Float**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **conditional_new**
> Object conditional_new(side, symbol, order_type, qty, price, base_price, stop_px, time_in_force, opts)

Place a new conditional order.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConditionalApi.new

side = 'side_example' # String | Side.

symbol = 'symbol_example' # String | Contract type.

order_type = 'order_type_example' # String | Conditional order type.

qty = 8.14 # Float | Order quantity.

price = 1.2 # Float | Execution price for conditional order

base_price = 1.2 # Float | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..

stop_px = 1.2 # Float | Trigger price.

time_in_force = 'time_in_force_example' # String | Time in force.

opts = { 
  close_on_trigger: true, # BOOLEAN | close on trigger.
  order_link_id: 'order_link_id_example' # String | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..
}

begin
  #Place a new conditional order.
  result = api_instance.conditional_new(side, symbol, order_type, qty, price, base_price, stop_px, time_in_force, opts)
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
 **qty** | **Float**| Order quantity. | 
 **price** | **Float**| Execution price for conditional order | 
 **base_price** | **Float**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stop_px** | **Float**| Trigger price. | 
 **time_in_force** | **String**| Time in force. | 
 **close_on_trigger** | **BOOLEAN**| close on trigger. | [optional] 
 **order_link_id** | **String**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



