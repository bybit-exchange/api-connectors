# BybitApi.ExecutionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get the trade records of a order.


<a name="executionGetTrades"></a>
# **executionGetTrades**
> Object executionGetTrades(orderId)

Get the trade records of a order.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.ExecutionApi();

var orderId = "orderId_example"; // String | orderID.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.executionGetTrades(orderId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderID. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

