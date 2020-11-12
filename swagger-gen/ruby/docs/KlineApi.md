# SwaggerClient::KlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kline_get**](KlineApi.md#kline_get) | **GET** /v2/public/kline/list | Query historical kline.
[**kline_mark_price**](KlineApi.md#kline_mark_price) | **GET** /v2/public/mark-price-kline | Query mark price kline.


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
  limit: 8.14 # Float | Contract type.
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
 **limit** | **Float**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **kline_mark_price**
> Object kline_mark_price(symbol, interval, from, opts)

Query mark price kline.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::KlineApi.new

symbol = 'symbol_example' # String | Contract type.

interval = 'interval_example' # String | Data refresh interval

from = 56 # Integer | From timestamp in seconds

opts = { 
  limit: 56 # Integer | Limit for data size, max size is 1000. Default size is 500
}

begin
  #Query mark price kline.
  result = api_instance.kline_mark_price(symbol, interval, from, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling KlineApi->kline_mark_price: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Data refresh interval | 
 **from** | **Integer**| From timestamp in seconds | 
 **limit** | **Integer**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



