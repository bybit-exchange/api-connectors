# SwaggerClient::ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execution_get_trades**](ExecutionApi.md#execution_get_trades) | **GET** /v2/private/execution/list | Get user’s trade records.


# **execution_get_trades**
> Object execution_get_trades(opts)

Get user’s trade records.

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

opts = { 
  order_id: 'order_id_example', # String | OrderID. If not provided, will return user’s trading records.
  symbol: 'symbol_example', # String | Contract type. If order_id not provided, symbol is required.
  start_time: 'start_time_example', # String | Start timestamp point for result.
  page: 'page_example', # String | Page. Default getting first page data.
  limit: 'limit_example' # String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
}

begin
  #Get user’s trade records.
  result = api_instance.execution_get_trades(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExecutionApi->execution_get_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| OrderID. If not provided, will return user’s trading records. | [optional] 
 **symbol** | **String**| Contract type. If order_id not provided, symbol is required. | [optional] 
 **start_time** | **String**| Start timestamp point for result. | [optional] 
 **page** | **String**| Page. Default getting first page data. | [optional] 
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



