# APIkeyApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPIkeyInfo**](APIkeyApi.md#aPIkeyInfo) | **GET** /open-api/api-key | Get account api-key information.


<a name="aPIkeyInfo"></a>
# **aPIkeyInfo**
> Object aPIkeyInfo()

Get account api-key information.

### Example
```java
// Import classes:
//import io.swagger.client.api.APIkeyApi;

APIkeyApi apiInstance = new APIkeyApi();
try {
    Object result = apiInstance.aPIkeyInfo();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling APIkeyApi#aPIkeyInfo");
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

