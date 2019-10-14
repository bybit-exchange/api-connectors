# SwaggerClient::ExecutionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execution_get_trades**](ExecutionApi.md#execution_get_trades) | **GET** /v2/private/execution/list | Get the trade records of a order.


# **execution_get_trades**
> Object execution_get_trades(order_id)

Get the trade records of a order.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExecutionApi.new

order_id = 'order_id_example' # String | orderID.


begin
  #Get the trade records of a order.
  result = api_instance.execution_get_trades(order_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExecutionApi->execution_get_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| orderID. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



