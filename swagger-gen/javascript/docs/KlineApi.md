# BybitApi.KlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**klineGet**](KlineApi.md#klineGet) | **GET** /v2/public/kline/list | Query historical kline.
[**klineMarkPrice**](KlineApi.md#klineMarkPrice) | **GET** /v2/public/mark-price-kline | Query mark price kline.


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
  'limit': 8.14 // Number | Contract type.
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
 **limit** | **Number**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="klineMarkPrice"></a>
# **klineMarkPrice**
> Object klineMarkPrice(symbol, interval, from, opts)

Query mark price kline.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.KlineApi();

var symbol = "symbol_example"; // String | Contract type.

var interval = "interval_example"; // String | Data refresh interval

var from = 56; // Number | From timestamp in seconds

var opts = { 
  'limit': 56 // Number | Limit for data size, max size is 1000. Default size is 500
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.klineMarkPrice(symbol, interval, from, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **interval** | **String**| Data refresh interval | 
 **from** | **Number**| From timestamp in seconds | 
 **limit** | **Number**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

