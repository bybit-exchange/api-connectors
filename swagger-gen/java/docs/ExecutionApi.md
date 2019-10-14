# ExecutionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get the trade records of a order.


<a name="executionGetTrades"></a>
# **executionGetTrades**
> Object executionGetTrades(orderId)

Get the trade records of a order.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ExecutionApi;


ExecutionApi apiInstance = new ExecutionApi();
String orderId = "orderId_example"; // String | orderID.
try {
    Object result = apiInstance.executionGetTrades(orderId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExecutionApi#executionGetTrades");
    e.printStackTrace();
}
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

