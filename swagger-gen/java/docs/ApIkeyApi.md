# ApIkeyApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPIkeyInfo**](ApIkeyApi.md#aPIkeyInfo) | **GET** /open-api/api-key | Get account api-key information.


<a name="aPIkeyInfo"></a>
# **aPIkeyInfo**
> Object aPIkeyInfo()

Get account api-key information.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ApIkeyApi;

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

ApIkeyApi apiInstance = new ApIkeyApi();
try {
    Object result = apiInstance.aPIkeyInfo();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ApIkeyApi#aPIkeyInfo");
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

