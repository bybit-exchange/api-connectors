# SwaggerClient::LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_kline_get**](LinearKlineApi.md#linear_kline_get) | **GET** /public/linear/kline | Get kline
[**linear_kline_mark_price**](LinearKlineApi.md#linear_kline_mark_price) | **GET** /public/linear/mark-price-kline | Get kline


# **linear_kline_get**
> Object linear_kline_get(symbol, interval, from, opts)

Get kline

This will get kline

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LinearKlineApi.new

symbol = 'symbol_example' # String | Contract type.

interval = 'interval_example' # String | Kline interval.

from = 8.14 # Float | from timestamp.

opts = { 
  limit: 8.14 # Float | Contract type.
}

begin
  #Get kline
  result = api_instance.linear_kline_get(symbol, interval, from, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearKlineApi->linear_kline_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Kline interval. | 
 **from** | **Float**| from timestamp. | 
 **limit** | **Float**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_kline_mark_price**
> Object linear_kline_mark_price(symbol, interval, from, opts)

Get kline

This will get mark price kline

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

api_instance = SwaggerClient::LinearKlineApi.new

symbol = 'symbol_example' # String | Contract type.

interval = 'interval_example' # String | Kline interval.

from = 8.14 # Float | from timestamp.

opts = { 
  limit: 8.14 # Float | Contract type.
}

begin
  #Get kline
  result = api_instance.linear_kline_mark_price(symbol, interval, from, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearKlineApi->linear_kline_mark_price: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Kline interval. | 
 **from** | **Float**| from timestamp. | 
 **limit** | **Float**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



