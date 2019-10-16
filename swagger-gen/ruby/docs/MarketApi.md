# SwaggerClient::MarketApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**market_orderbook**](MarketApi.md#market_orderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**market_symbol_info**](MarketApi.md#market_symbol_info) | **GET** /v2/public/tickers | Get the latest information for symbol.


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



