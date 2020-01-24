# BybitApi.ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get user’s trade records.


<a name="executionGetTrades"></a>
# **executionGetTrades**
> Object executionGetTrades(opts)

Get user’s trade records.

### Example
```javascript
var BybitApi = require('bybit_api');
var defaultClient = BybitApi.ApiClient.instance;

// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

// Configure API key authorization: apiSignature
var apiSignature = defaultClient.authentications['apiSignature'];
apiSignature.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.apiKeyPrefix = 'Token';

// Configure API key authorization: timestamp
var timestamp = defaultClient.authentications['timestamp'];
timestamp.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.apiKeyPrefix = 'Token';

var apiInstance = new BybitApi.ExecutionApi();

var opts = { 
  'orderId': "orderId_example", // String | OrderID. If not provided, will return user’s trading records.
  'symbol': "symbol_example", // String | Contract type. If order_id not provided, symbol is required.
  'startTime': "startTime_example", // String | Start timestamp point for result.
  'page': "page_example", // String | Page. Default getting first page data.
  'limit': "limit_example" // String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.executionGetTrades(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| OrderID. If not provided, will return user’s trading records. | [optional] 
 **symbol** | **String**| Contract type. If order_id not provided, symbol is required. | [optional] 
 **startTime** | **String**| Start timestamp point for result. | [optional] 
 **page** | **String**| Page. Default getting first page data. | [optional] 
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

