# BybitApi.CommonApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commonGet**](CommonApi.md#commonGet) | **GET** /v2/public/time | Get bybit server time.


<a name="commonGet"></a>
# **commonGet**
> Object commonGet()

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
apiInstance.commonGet(callback);
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

