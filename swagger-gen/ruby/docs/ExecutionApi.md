# SwaggerClient::ExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execution_get_trades**](ExecutionApi.md#execution_get_trades) | **GET** /v2/private/execution/list | Get user’s trade records.
[**positions_close_pnl_records**](ExecutionApi.md#positions_close_pnl_records) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records


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



# **positions_close_pnl_records**
> Object positions_close_pnl_records(symbol, opts)

Get user's closed profit and loss records

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

symbol = 'symbol_example' # String | Contract type

opts = { 
  start_time: 56, # Integer | Start timestamp point for result, in second
  end_time: 56, # Integer | End timestamp point for result, in second
  exec_type: 'exec_type_example', # String | Execution type
  page: 56, # Integer | Page. By default, gets first page of data. Maximum of 50 pages
  limit: 56 # Integer | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
}

begin
  #Get user's closed profit and loss records
  result = api_instance.positions_close_pnl_records(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExecutionApi->positions_close_pnl_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type | 
 **start_time** | **Integer**| Start timestamp point for result, in second | [optional] 
 **end_time** | **Integer**| End timestamp point for result, in second | [optional] 
 **exec_type** | **String**| Execution type | [optional] 
 **page** | **Integer**| Page. By default, gets first page of data. Maximum of 50 pages | [optional] 
 **limit** | **Integer**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



