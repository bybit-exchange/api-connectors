# LinearExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearExecutionGetTrades**](LinearExecutionApi.md#linearExecutionGetTrades) | **GET** /private/linear/trade/execution/list | Get user&#39;s trading records.


<a name="linearExecutionGetTrades"></a>
# **linearExecutionGetTrades**
> Object linearExecutionGetTrades(symbol, startTime, endTime, execType, page, limit)

Get user&#39;s trading records.

This will get user&#39;s trading records.

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearExecutionApi;

LinearExecutionApi apiInstance = new LinearExecutionApi();
String symbol = "symbol_example"; // String | 
Long startTime = 789L; // Long | 
Long endTime = 789L; // Long | 
String execType = "execType_example"; // String | 
Long page = 789L; // Long | 
Long limit = 789L; // Long | 
try {
    Object result = apiInstance.linearExecutionGetTrades(symbol, startTime, endTime, execType, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearExecutionApi#linearExecutionGetTrades");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **startTime** | **Long**|  | [optional]
 **endTime** | **Long**|  | [optional]
 **execType** | **String**|  | [optional]
 **page** | **Long**|  | [optional]
 **limit** | **Long**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

