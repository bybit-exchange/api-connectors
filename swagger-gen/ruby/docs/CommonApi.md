# SwaggerClient::CommonApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**common_get**](CommonApi.md#common_get) | **GET** /v2/public/time | Get bybit server time.


# **common_get**
> Object common_get

Get bybit server time.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommonApi.new

begin
  #Get bybit server time.
  result = api_instance.common_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommonApi->common_get: #{e}"
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



