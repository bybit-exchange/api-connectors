# SwaggerClient::WalletApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wallet_exchange_order**](WalletApi.md#wallet_exchange_order) | **GET** /v2/private/exchange-order/list | Asset Exchange Records
[**wallet_get_balance**](WalletApi.md#wallet_get_balance) | **GET** /v2/private/wallet/balance | get wallet balance info
[**wallet_get_records**](WalletApi.md#wallet_get_records) | **GET** /open-api/wallet/fund/records | Get wallet fund records
[**wallet_get_risk_limit**](WalletApi.md#wallet_get_risk_limit) | **GET** /open-api/wallet/risk-limit/list | Get risk limit.
[**wallet_set_risk_limit**](WalletApi.md#wallet_set_risk_limit) | **POST** /open-api/wallet/risk-limit | Set risk limit
[**wallet_withdraw**](WalletApi.md#wallet_withdraw) | **GET** /open-api/wallet/withdraw/list | Get wallet fund records


# **wallet_exchange_order**
> Object wallet_exchange_order(opts)

Asset Exchange Records

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

api_instance = SwaggerClient::WalletApi.new

opts = { 
  limit: 8.14, # Float | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page
  from: 8.14, # Float | Start ID. By default, returns the latest IDs
  direction: 'direction_example' # String | Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next
}

begin
  #Asset Exchange Records
  result = api_instance.wallet_exchange_order(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WalletApi->wallet_exchange_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Float**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **from** | **Float**| Start ID. By default, returns the latest IDs | [optional] 
 **direction** | **String**| Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **wallet_get_balance**
> Object wallet_get_balance(opts)

get wallet balance info

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

api_instance = SwaggerClient::WalletApi.new

opts = { 
  coin: 'coin_example' # String | Coin.enum {BTC,EOS,XRP,ETH,USDT}
}

begin
  #get wallet balance info
  result = api_instance.wallet_get_balance(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WalletApi->wallet_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| Coin.enum {BTC,EOS,XRP,ETH,USDT} | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **wallet_get_risk_limit**
> Object wallet_get_risk_limit

Get risk limit.

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

api_instance = SwaggerClient::WalletApi.new

begin
  #Get risk limit.
  result = api_instance.wallet_get_risk_limit
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WalletApi->wallet_get_risk_limit: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



# **wallet_set_risk_limit**
> Object wallet_set_risk_limit(symbol, risk_id)

Set risk limit

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

api_instance = SwaggerClient::WalletApi.new

symbol = 'symbol_example' # String | Contract type.

risk_id = 8.14 # Float | Risk ID. Can be found with the Get risk limit list endpoint.


begin
  #Set risk limit
  result = api_instance.wallet_set_risk_limit(symbol, risk_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WalletApi->wallet_set_risk_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **risk_id** | **Float**| Risk ID. Can be found with the Get risk limit list endpoint. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **wallet_withdraw**
> Object wallet_withdraw(opts)

Get wallet fund records

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

api_instance = SwaggerClient::WalletApi.new

opts = { 
  start_date: 'start_date_example', # String | Start point for result
  end_date: 'end_date_example', # String | End point for result
  coin: 'coin_example', # String | Currency
  status: 'status_example', # String | Withdraw status
  page: 'page_example', # String | Page. Default getting first page data
  limit: 'limit_example' # String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page
}

begin
  #Get wallet fund records
  result = api_instance.wallet_withdraw(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WalletApi->wallet_withdraw: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Start point for result | [optional] 
 **end_date** | **String**| End point for result | [optional] 
 **coin** | **String**| Currency | [optional] 
 **status** | **String**| Withdraw status | [optional] 
 **page** | **String**| Page. Default getting first page data | [optional] 
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json



