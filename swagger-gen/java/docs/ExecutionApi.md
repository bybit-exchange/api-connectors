# ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get user’s trade records.


<a name="executionGetTrades"></a>
# **executionGetTrades**
> Object executionGetTrades(orderId, symbol, startTime, page, limit)

Get user’s trade records.

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
String orderId = "orderId_example"; // String | OrderID. If not provided, will return user’s trading records.
String symbol = "symbol_example"; // String | Contract type. If order_id not provided, symbol is required.
String startTime = "startTime_example"; // String | Start timestamp point for result.
String page = "page_example"; // String | Page. Default getting first page data.
String limit = "limit_example"; // String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
try {
    Object result = apiInstance.executionGetTrades(orderId, symbol, startTime, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExecutionApi#executionGetTrades");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| OrderID. If not provided, will return user’s trading records. | [optional]
 **symbol** | **String**| Contract type. If order_id not provided, symbol is required. | [optional]
 **startTime** | **String**| Start timestamp point for result. | [optional]
 **page** | **String**| Page. Default getting first page data. | [optional]
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

