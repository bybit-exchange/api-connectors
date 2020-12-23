# SwaggerClient::LinearExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_execution_get_trades**](LinearExecutionApi.md#linear_execution_get_trades) | **GET** /private/linear/trade/execution/list | Get user&#39;s trading records.


# **linear_execution_get_trades**
> Object linear_execution_get_trades(opts)

Get user's trading records.

This will get user's trading records.

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

api_instance = SwaggerClient::LinearExecutionApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  start_time: 789, # Integer | 
  end_time: 789, # Integer | 
  exec_type: 'exec_type_example', # String | 
  page: 789, # Integer | 
  limit: 789 # Integer | 
}

begin
  #Get user's trading records.
  result = api_instance.linear_execution_get_trades(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearExecutionApi->linear_execution_get_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **start_time** | **Integer**|  | [optional] 
 **end_time** | **Integer**|  | [optional] 
 **exec_type** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **limit** | **Integer**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



