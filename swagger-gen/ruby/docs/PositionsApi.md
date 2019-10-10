# SwaggerClient::PositionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positions_change_margin**](PositionsApi.md#positions_change_margin) | **POST** /position/change-position-margin | Update margin.
[**positions_my_position**](PositionsApi.md#positions_my_position) | **GET** /position/list | Get my position list.
[**positions_save_leverage**](PositionsApi.md#positions_save_leverage) | **POST** /user/leverage/save | Change user leverage.
[**positions_trading_stop**](PositionsApi.md#positions_trading_stop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.
[**positions_user_leverage**](PositionsApi.md#positions_user_leverage) | **GET** /user/leverage | Get user leverage setting.


# **positions_change_margin**
> Object positions_change_margin(symbol, margin)

Update margin.

### Example
```ruby
# load the gem
require 'swagger_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **positions_my_position**
> Object positions_my_position

Get my position list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PositionsApi.new

begin
  #Get my position list.
  result = api_instance.positions_my_position
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PositionsApi->positions_my_position: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **positions_save_leverage**
> Object positions_save_leverage(symbol, leverage)

Change user leverage.

### Example
```ruby
# load the gem
require 'swagger_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **positions_trading_stop**
> Object positions_trading_stop(symbol, opts)

Set Trading-Stop Condition.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PositionsApi.new

symbol = 'symbol_example' # String | Contract type

opts = { 
  take_profit: 'take_profit_example', # String | Not less than 0, 0 means cancel TP
  stop_loss: 'stop_loss_example', # String | Not less than 0, 0 means cancel SL
  trailing_stop: 'trailing_stop_example' # String | Not less than 0, 0 means cancel TS
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

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **positions_user_leverage**
> Object positions_user_leverage

Get user leverage setting.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PositionsApi.new

begin
  #Get user leverage setting.
  result = api_instance.positions_user_leverage
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PositionsApi->positions_user_leverage: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



