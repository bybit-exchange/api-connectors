# SwaggerClient::LinearPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_positions_change_margin**](LinearPositionsApi.md#linear_positions_change_margin) | **POST** /private/linear/position/add-margin | Add/Reduce Margin
[**linear_positions_close_pnl_records**](LinearPositionsApi.md#linear_positions_close_pnl_records) | **GET** /private/linear/trade/closed-pnl/list | Get user&#39;s closed profit and loss records.
[**linear_positions_my_position**](LinearPositionsApi.md#linear_positions_my_position) | **GET** /private/linear/position/list | Get my position list.
[**linear_positions_save_leverage**](LinearPositionsApi.md#linear_positions_save_leverage) | **POST** /private/linear/position/set-leverage | Set leverage
[**linear_positions_set_auto_add_margin**](LinearPositionsApi.md#linear_positions_set_auto_add_margin) | **POST** /private/linear/position/set-auto-add-margin | Set auto add margin
[**linear_positions_switch_isolated**](LinearPositionsApi.md#linear_positions_switch_isolated) | **POST** /private/linear/position/switch-isolated | Switch isolated
[**linear_positions_switch_mode**](LinearPositionsApi.md#linear_positions_switch_mode) | **POST** /private/linear/tpsl/switch-mode | Switch Mode
[**linear_positions_trading_stop**](LinearPositionsApi.md#linear_positions_trading_stop) | **POST** /private/linear/position/trading-stop | Set tradingStop


# **linear_positions_change_margin**
> Object linear_positions_change_margin(opts)

Add/Reduce Margin

This will Add/Reduce Margin

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  side: 'side_example', # String | 
  margin: 1.2 # Float | 
}

begin
  #Add/Reduce Margin
  result = api_instance.linear_positions_change_margin(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_change_margin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **side** | **String**|  | [optional] 
 **margin** | **Float**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_positions_close_pnl_records**
> Object linear_positions_close_pnl_records(opts)

Get user's closed profit and loss records.

This will get user's closed profit and loss records.

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  start_time: 789, # Integer | 
  end_time: 789, # Integer | 
  exec_type: 'exec_type_example', # String | 
  page: 789, # Integer | 
  limit: 789 # Integer | 
}

begin
  #Get user's closed profit and loss records.
  result = api_instance.linear_positions_close_pnl_records(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_close_pnl_records: #{e}"
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



# **linear_positions_my_position**
> Object linear_positions_my_position(opts)

Get my position list.

This will get my position list.

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example' # String | 
}

begin
  #Get my position list.
  result = api_instance.linear_positions_my_position(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_my_position: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_positions_save_leverage**
> Object linear_positions_save_leverage(opts)

Set leverage

This will Set Leverage

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  buy_leverage: 1.2, # Float | 
  sell_leverage: 1.2 # Float | 
}

begin
  #Set leverage
  result = api_instance.linear_positions_save_leverage(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_save_leverage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **buy_leverage** | **Float**|  | [optional] 
 **sell_leverage** | **Float**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_positions_set_auto_add_margin**
> Object linear_positions_set_auto_add_margin(opts)

Set auto add margin

This will Set auto add margin

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  side: 'side_example', # String | 
  auto_add_margin: true # BOOLEAN | 
}

begin
  #Set auto add margin
  result = api_instance.linear_positions_set_auto_add_margin(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_set_auto_add_margin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **side** | **String**|  | [optional] 
 **auto_add_margin** | **BOOLEAN**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_positions_switch_isolated**
> Object linear_positions_switch_isolated(opts)

Switch isolated

This will switch isolated

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  is_isolated: true, # BOOLEAN | 
  buy_leverage: 1.2, # Float | 
  sell_leverage: 1.2 # Float | 
}

begin
  #Switch isolated
  result = api_instance.linear_positions_switch_isolated(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_switch_isolated: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **is_isolated** | **BOOLEAN**|  | [optional] 
 **buy_leverage** | **Float**|  | [optional] 
 **sell_leverage** | **Float**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_positions_switch_mode**
> Object linear_positions_switch_mode(opts)

Switch Mode

This will Switch TP/SL Mode

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  tp_sl_mode: 'tp_sl_mode_example' # String | 
}

begin
  #Switch Mode
  result = api_instance.linear_positions_switch_mode(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_switch_mode: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **tp_sl_mode** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_positions_trading_stop**
> Object linear_positions_trading_stop(opts)

Set tradingStop

This will set tradingStop

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

api_instance = SwaggerClient::LinearPositionsApi.new

opts = { 
  symbol: 'symbol_example', # String | 
  side: 'side_example', # String | 
  take_profit: 1.2, # Float | 
  stop_loss: 1.2, # Float | 
  trailing_stop: 1.2, # Float | 
  tp_trigger_by: 'tp_trigger_by_example', # String | 
  sl_trigger_by: 'sl_trigger_by_example', # String | 
  sl_size: 1.2, # Float | 
  tp_size: 1.2 # Float | 
}

begin
  #Set tradingStop
  result = api_instance.linear_positions_trading_stop(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearPositionsApi->linear_positions_trading_stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **side** | **String**|  | [optional] 
 **take_profit** | **Float**|  | [optional] 
 **stop_loss** | **Float**|  | [optional] 
 **trailing_stop** | **Float**|  | [optional] 
 **tp_trigger_by** | **String**|  | [optional] 
 **sl_trigger_by** | **String**|  | [optional] 
 **sl_size** | **Float**|  | [optional] 
 **tp_size** | **Float**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



