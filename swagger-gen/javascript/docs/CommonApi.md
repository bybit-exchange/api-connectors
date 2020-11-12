# BybitApi.CommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commonAnnouncements**](CommonApi.md#commonAnnouncements) | **GET** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[**commonGetLcp**](CommonApi.md#commonGetLcp) | **GET** /v2/private/account/lcp | Query LCP info.
[**commonGetTime**](CommonApi.md#commonGetTime) | **GET** /v2/public/time | Get bybit server time.


<a name="commonAnnouncements"></a>
# **commonAnnouncements**
> Object commonAnnouncements()

Get Bybit OpenAPI announcements in the last 30 days in reverse order.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.CommonApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.commonAnnouncements(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="commonGetLcp"></a>
# **commonGetLcp**
> Object commonGetLcp(symbol)

Query LCP info.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.CommonApi();

var symbol = "symbol_example"; // String | Contract type


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.commonGetLcp(symbol, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="commonGetTime"></a>
# **commonGetTime**
> Object commonGetTime()

Get bybit server time.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.CommonApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.commonGetTime(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

