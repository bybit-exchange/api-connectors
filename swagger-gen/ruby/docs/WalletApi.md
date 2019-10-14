# SwaggerClient::WalletApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wallet_get_records**](WalletApi.md#wallet_get_records) | **GET** /open-api/wallet/fund/records | Get wallet fund records


# **wallet_get_records**
> Object wallet_get_records(opts)

Get wallet fund records

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: apiSignature
  config.api_key['api-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-signature'] = 'Bearer'
end

api_instance = SwaggerClient::WalletApi.new

opts = { 
  start_date: 'start_date_example', # String | Start point for result
  end_date: 'end_date_example', # String | End point for result
  currency: 'currency_example', # String | Currency type
  wallet_fund_type: 'wallet_fund_type_example', # String | wallet fund type
  page: 'page_example', # String | Page. Default getting first page data
  limit: 'limit_example' # String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page
}

begin
  #Get wallet fund records
  result = api_instance.wallet_get_records(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WalletApi->wallet_get_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Start point for result | [optional] 
 **end_date** | **String**| End point for result | [optional] 
 **currency** | **String**| Currency type | [optional] 
 **wallet_fund_type** | **String**| wallet fund type | [optional] 
 **page** | **String**| Page. Default getting first page data | [optional] 
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



