# SwaggerClient::FundingApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**funding_get_rate**](FundingApi.md#funding_get_rate) | **GET** /open-api/funding/prev-funding | Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval&#39;s fund fee settlement is based on the previous interval&#39;s fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.
[**funding_predicted**](FundingApi.md#funding_predicted) | **GET** /open-api/funding/predicted-funding | Get predicted funding rate and funding fee.
[**funding_predicted_rate**](FundingApi.md#funding_predicted_rate) | **GET** /open-api/funding/prev-funding-rate | Get predicted funding rate and funding fee.


# **funding_get_rate**
> Object funding_get_rate(symbol)

Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval's fund fee settlement is based on the previous interval's fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FundingApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval's fund fee settlement is based on the previous interval's fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.
  result = api_instance.funding_get_rate(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FundingApi->funding_get_rate: #{e}"
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **funding_predicted**
> Object funding_predicted(symbol)

Get predicted funding rate and funding fee.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FundingApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Get predicted funding rate and funding fee.
  result = api_instance.funding_predicted(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FundingApi->funding_predicted: #{e}"
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **funding_predicted_rate**
> Object funding_predicted_rate(symbol)

Get predicted funding rate and funding fee.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FundingApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Get predicted funding rate and funding fee.
  result = api_instance.funding_predicted_rate(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FundingApi->funding_predicted_rate: #{e}"
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined



