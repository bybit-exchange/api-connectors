# LinearWalletApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearWalletGetRiskLimit**](LinearWalletApi.md#linearWalletGetRiskLimit) | **GET** /public/linear/risk-limit | Get risk limit.


<a name="linearWalletGetRiskLimit"></a>
# **linearWalletGetRiskLimit**
> Object linearWalletGetRiskLimit()

Get risk limit.

This will get risk limit.

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearWalletApi;

LinearWalletApi apiInstance = new LinearWalletApi();
try {
    Object result = apiInstance.linearWalletGetRiskLimit();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearWalletApi#linearWalletGetRiskLimit");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

