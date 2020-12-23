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
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearExecutionApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

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

