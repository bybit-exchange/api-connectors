# SwaggerClient::MarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**market_account_ratio**](MarketApi.md#market_account_ratio) | **GET** /v2/public/account-ratio | Query Account Long Short Ratio
[**market_big_deal**](MarketApi.md#market_big_deal) | **GET** /v2/public/big-deal | Query Big Deal
[**market_liq_records**](MarketApi.md#market_liq_records) | **GET** /v2/public/liq-records | Query liq records.
[**market_open_interest**](MarketApi.md#market_open_interest) | **GET** /v2/public/open-interest | Query Open Interest
[**market_orderbook**](MarketApi.md#market_orderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**market_symbol_info**](MarketApi.md#market_symbol_info) | **GET** /v2/public/tickers | Get the latest information for symbol.
[**market_trading_records**](MarketApi.md#market_trading_records) | **GET** /v2/public/trading-records | Get recent trades


# **market_account_ratio**
> Object market_account_ratio(symbol, period, opts)

Query Account Long Short Ratio

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

symbol = 'symbol_example' # String | Contract type.

period = 'period_example' # String | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d

opts = { 
  limit: 56 # Integer | Limit for data size, max size is 500. Default size is 50
}

begin
  #Query Account Long Short Ratio
  result = api_instance.market_account_ratio(symbol, period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->market_account_ratio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **period** | **String**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **Integer**| Limit for data size, max size is 500. Default size is 50 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **market_big_deal**
> Object market_big_deal(symbol, opts)

Query Big Deal

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

symbol = 'symbol_example' # String | Contract type.

opts = { 
  limit: 56 # Integer | Limit for data size, max size is 1000. Default size is 500
}

begin
  #Query Big Deal
  result = api_instance.market_big_deal(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->market_big_deal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **limit** | **Integer**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **market_liq_records**
> Object market_liq_records(symbol, opts)

Query liq records.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

symbol = 'symbol_example' # String | Contract type.

opts = { 
  from: 56, # Integer | From ID. Default: return latest data
  limit: 56, # Integer | Limit for data size, max size is 1000. Default size is 500
  start_time: 56, # Integer | Start timestamp point for result, in millisecond
  end_time: 56 # Integer | End timestamp point for result, in millisecond
}

begin
  #Query liq records.
  result = api_instance.market_liq_records(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->market_liq_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **from** | **Integer**| From ID. Default: return latest data | [optional] 
 **limit** | **Integer**| Limit for data size, max size is 1000. Default size is 500 | [optional] 
 **start_time** | **Integer**| Start timestamp point for result, in millisecond | [optional] 
 **end_time** | **Integer**| End timestamp point for result, in millisecond | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **market_open_interest**
> Object market_open_interest(symbol, period, opts)

Query Open Interest

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

symbol = 'symbol_example' # String | Contract type.

period = 'period_example' # String | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d

opts = { 
  limit: 56 # Integer | Limit for data size, max size is 200. Default size is 50
}

begin
  #Query Open Interest
  result = api_instance.market_open_interest(symbol, period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->market_open_interest: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **period** | **String**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **Integer**| Limit for data size, max size is 200. Default size is 50 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **market_orderbook**
> Object market_orderbook(symbol)

Get the orderbook.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Get the orderbook.
  result = api_instance.market_orderbook(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->market_orderbook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **market_symbol_info**
> Object market_symbol_info(opts)

Get the latest information for symbol.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

opts = { 
  symbol: 'symbol_example' # String | Contract type.
}

begin
  #Get the latest information for symbol.
  result = api_instance.market_symbol_info(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->market_symbol_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **market_trading_records**
> Object market_trading_records(symbol, opts)

Get recent trades

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

symbol = 'symbol_example' # String | Contract type.

opts = { 
  from: 56, # Integer | From ID. Default: return latest data
  limit: 56 # Integer | Number of results. Default 500; max 1000
}

begin
  #Get recent trades
  result = api_instance.market_trading_records(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->market_trading_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **from** | **Integer**| From ID. Default: return latest data | [optional] 
 **limit** | **Integer**| Number of results. Default 500; max 1000 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



