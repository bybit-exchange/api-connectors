# SwaggerClient::LinearMarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_market_trading**](LinearMarketApi.md#linear_market_trading) | **GET** /public/linear/recent-trading-records | Get recent trades


# **linear_market_trading**
> Object linear_market_trading(symbol, opts)

Get recent trades

This will get recent trades

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

api_instance = SwaggerClient::LinearMarketApi.new

symbol = 'symbol_example' # String | Contract type.

opts = { 
  limit: 'limit_example' # String | Contract type.
}

begin
  #Get recent trades
  result = api_instance.linear_market_trading(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearMarketApi->linear_market_trading: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **limit** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



