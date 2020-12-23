# SwaggerClient::PositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positions_change_margin**](PositionsApi.md#positions_change_margin) | **POST** /position/change-position-margin | Update margin.
[**positions_close_pnl_records**](PositionsApi.md#positions_close_pnl_records) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
[**positions_my_position**](PositionsApi.md#positions_my_position) | **GET** /v2/private/position/list | Get my position list.
[**positions_save_leverage**](PositionsApi.md#positions_save_leverage) | **POST** /user/leverage/save | Change user leverage.
[**positions_trading_stop**](PositionsApi.md#positions_trading_stop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.


# **positions_change_margin**
> Object positions_change_margin(symbol, margin)

Update margin.

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

api_instance = SwaggerClient::PositionsApi.new

symbol = 'symbol_example' # String | Contract type which you want update its margin

margin = 'margin_example' # String | New margin you want set


begin
  #Update margin.
  result = api_instance.positions_change_margin(symbol, margin)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PositionsApi->positions_change_margin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type which you want update its margin | 
 **margin** | **String**| New margin you want set | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

api_instance = SwaggerClient::PositionsApi.new

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
  puts "Exception when calling PositionsApi->positions_close_pnl_records: #{e}"
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



# **positions_my_position**
> Object positions_my_position(opts)

Get my position list.

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

api_instance = SwaggerClient::PositionsApi.new

opts = { 
  symbol: 'symbol_example' # String | Contract type which you want update its margin
}

begin
  #Get my position list.
  result = api_instance.positions_my_position(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PositionsApi->positions_my_position: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type which you want update its margin | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **positions_save_leverage**
> Object positions_save_leverage(symbol, leverage)

Change user leverage.

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

api_instance = SwaggerClient::PositionsApi.new

symbol = 'symbol_example' # String | A symbol which you want change its leverage

leverage = 'leverage_example' # String | New leverage you want set


begin
  #Change user leverage.
  result = api_instance.positions_save_leverage(symbol, leverage)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PositionsApi->positions_save_leverage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| A symbol which you want change its leverage | 
 **leverage** | **String**| New leverage you want set | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **positions_trading_stop**
> Object positions_trading_stop(symbol, opts)

Set Trading-Stop Condition.

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

api_instance = SwaggerClient::PositionsApi.new

symbol = 'symbol_example' # String | Contract type

opts = { 
  take_profit: 'take_profit_example', # String | Not less than 0, 0 means cancel TP
  stop_loss: 'stop_loss_example', # String | Not less than 0, 0 means cancel SL
  trailing_stop: 'trailing_stop_example', # String | Not less than 0, 0 means cancel TS
  new_trailing_active: 'new_trailing_active_example' # String | Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default.
}

begin
  #Set Trading-Stop Condition.
  result = api_instance.positions_trading_stop(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PositionsApi->positions_trading_stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type | 
 **take_profit** | **String**| Not less than 0, 0 means cancel TP | [optional] 
 **stop_loss** | **String**| Not less than 0, 0 means cancel SL | [optional] 
 **trailing_stop** | **String**| Not less than 0, 0 means cancel TS | [optional] 
 **new_trailing_active** | **String**| Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



