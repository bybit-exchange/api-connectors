# SwaggerClient::ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



