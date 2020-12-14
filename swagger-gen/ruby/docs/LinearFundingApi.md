# SwaggerClient::LinearFundingApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linear_funding_my_last_fee**](LinearFundingApi.md#linear_funding_my_last_fee) | **GET** /private/linear/funding/prev-funding | Get prev funding
[**linear_funding_predicted**](LinearFundingApi.md#linear_funding_predicted) | **GET** /private/linear/funding/predicted-funding | Get predicted funding rate and funding fee.
[**linear_funding_prev_rate**](LinearFundingApi.md#linear_funding_prev_rate) | **GET** /public/linear/funding/prev-funding-rate | Get prev funding


# **linear_funding_my_last_fee**
> Object linear_funding_my_last_fee(opts)

Get prev funding

This will get prev funding

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

api_instance = SwaggerClient::LinearFundingApi.new

opts = { 
  symbol: 'symbol_example' # String | 
}

begin
  #Get prev funding
  result = api_instance.linear_funding_my_last_fee(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearFundingApi->linear_funding_my_last_fee: #{e}"
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



# **linear_funding_predicted**
> Object linear_funding_predicted(symbol)

Get predicted funding rate and funding fee.

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

api_instance = SwaggerClient::LinearFundingApi.new

symbol = 'symbol_example' # String | Contract type.


begin
  #Get predicted funding rate and funding fee.
  result = api_instance.linear_funding_predicted(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearFundingApi->linear_funding_predicted: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **linear_funding_prev_rate**
> Object linear_funding_prev_rate(symbol)

Get prev funding

This will get prev funding rate

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

api_instance = SwaggerClient::LinearFundingApi.new

symbol = 'symbol_example' # String | 


begin
  #Get prev funding
  result = api_instance.linear_funding_prev_rate(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LinearFundingApi->linear_funding_prev_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



