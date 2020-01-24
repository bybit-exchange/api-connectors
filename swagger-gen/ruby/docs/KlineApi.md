# SwaggerClient::KlineApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kline_get**](KlineApi.md#kline_get) | **GET** /v2/public/kline/list | Query historical kline.


# **kline_get**
> Object kline_get(symbol, interval, from, opts)

Query historical kline.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::KlineApi.new

symbol = 'symbol_example' # String | Contract type.

interval = 'interval_example' # String | Kline interval.

from = 8.14 # Float | from timestamp.

opts = { 
  limit: 'limit_example' # String | Contract type.
}

begin
  #Query historical kline.
  result = api_instance.kline_get(symbol, interval, from, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling KlineApi->kline_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Kline interval. | 
 **from** | **Float**| from timestamp. | 
 **limit** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



