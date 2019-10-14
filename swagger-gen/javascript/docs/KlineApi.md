# BybitApi.KlineApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**klineGet**](KlineApi.md#klineGet) | **GET** /v2/public/kline/list | Query historical kline.


<a name="klineGet"></a>
# **klineGet**
> Object klineGet(symbol, interval, from, opts)

Query historical kline.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.KlineApi();

var symbol = "symbol_example"; // String | Contract type.

var interval = "interval_example"; // String | Kline interval.

var from = 8.14; // Number | from timestamp.

var opts = { 
  'limit': "limit_example" // String | Contract type.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.klineGet(symbol, interval, from, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Kline interval. | 
 **from** | **Number**| from timestamp. | 
 **limit** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

