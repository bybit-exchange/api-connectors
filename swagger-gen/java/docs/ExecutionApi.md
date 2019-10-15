# ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

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
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ExecutionApi;

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

