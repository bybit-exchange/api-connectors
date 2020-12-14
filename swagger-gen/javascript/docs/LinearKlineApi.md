# BybitApi.LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearKlineGet**](LinearKlineApi.md#linearKlineGet) | **GET** /public/linear/kline | Get kline
[**linearKlineMarkPrice**](LinearKlineApi.md#linearKlineMarkPrice) | **GET** /public/linear/mark-price-kline | Get kline


<a name="linearKlineGet"></a>
# **linearKlineGet**
> Object linearKlineGet(symbol, interval, from, opts)

Get kline

This will get kline

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.LinearKlineApi();

var symbol = "symbol_example"; // String | Contract type.

var interval = "interval_example"; // String | Kline interval.

var from = 8.14; // Number | from timestamp.

var opts = { 
  'limit': 8.14 // Number | Contract type.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearKlineGet(symbol, interval, from, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Kline interval. | 
 **from** | **Number**| from timestamp. | 
 **limit** | **Number**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearKlineMarkPrice"></a>
# **linearKlineMarkPrice**
> Object linearKlineMarkPrice(symbol, interval, from, opts)

Get kline

This will get mark price kline

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

var apiInstance = new BybitApi.LinearKlineApi();

var symbol = "symbol_example"; // String | Contract type.

var interval = "interval_example"; // String | Kline interval.

var from = 8.14; // Number | from timestamp.

var opts = { 
  'limit': 8.14 // Number | Contract type.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearKlineMarkPrice(symbol, interval, from, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Kline interval. | 
 **from** | **Number**| from timestamp. | 
 **limit** | **Number**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

