# SwaggerClient::CommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**common_announcements**](CommonApi.md#common_announcements) | **GET** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[**common_get_lcp**](CommonApi.md#common_get_lcp) | **GET** /v2/private/account/lcp | Query LCP info.
[**common_get_time**](CommonApi.md#common_get_time) | **GET** /v2/public/time | Get bybit server time.


# **common_announcements**
> Object common_announcements

Get Bybit OpenAPI announcements in the last 30 days in reverse order.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommonApi.new

begin
  #Get Bybit OpenAPI announcements in the last 30 days in reverse order.
  result = api_instance.common_announcements
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommonApi->common_announcements: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **common_get_lcp**
> Object common_get_lcp(symbol)

Query LCP info.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommonApi.new

symbol = 'symbol_example' # String | Contract type


begin
  #Query LCP info.
  result = api_instance.common_get_lcp(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommonApi->common_get_lcp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **common_get_time**
> Object common_get_time

Get bybit server time.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommonApi.new

begin
  #Get bybit server time.
  result = api_instance.common_get_time
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommonApi->common_get_time: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



