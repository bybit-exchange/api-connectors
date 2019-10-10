# SwaggerClient::SymbolApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**symbol_get**](SymbolApi.md#symbol_get) | **GET** /v2/public/symbols | Query Symbols.


# **symbol_get**
> Object symbol_get

Query Symbols.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SymbolApi.new

begin
  #Query Symbols.
  result = api_instance.symbol_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SymbolApi->symbol_get: #{e}"
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



