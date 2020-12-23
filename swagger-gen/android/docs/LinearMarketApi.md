# LinearMarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearMarketTrading**](LinearMarketApi.md#linearMarketTrading) | **GET** /public/linear/recent-trading-records | Get recent trades


<a name="linearMarketTrading"></a>
# **linearMarketTrading**
> Object linearMarketTrading(symbol, limit)

Get recent trades

This will get recent trades

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearMarketApi;

LinearMarketApi apiInstance = new LinearMarketApi();
String symbol = "symbol_example"; // String | Contract type.
String limit = "limit_example"; // String | Contract type.
try {
    Object result = apiInstance.linearMarketTrading(symbol, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearMarketApi#linearMarketTrading");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **limit** | **String**| Contract type. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

