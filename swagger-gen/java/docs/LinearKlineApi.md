# LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearKlineGet**](LinearKlineApi.md#linearKlineGet) | **GET** /public/linear/kline | Get kline
[**linearKlineIndexPrice**](LinearKlineApi.md#linearKlineIndexPrice) | **GET** /public/linear/index-price-kline | Get kline
[**linearKlineMarkPrice**](LinearKlineApi.md#linearKlineMarkPrice) | **GET** /public/linear/mark-price-kline | Get kline
[**linearKlinePremiumIndexPrice**](LinearKlineApi.md#linearKlinePremiumIndexPrice) | **GET** /public/linear/premium-index-kline | Get kline


<a name="linearKlineGet"></a>
# **linearKlineGet**
> Object linearKlineGet(symbol, interval, from, limit)

Get kline

This will get kline

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.LinearKlineApi;


LinearKlineApi apiInstance = new LinearKlineApi();
String symbol = "symbol_example"; // String | Contract type.
String interval = "interval_example"; // String | Kline interval.
BigDecimal from = new BigDecimal(); // BigDecimal | from timestamp.
BigDecimal limit = new BigDecimal(); // BigDecimal | Contract type.
try {
    Object result = apiInstance.linearKlineGet(symbol, interval, from, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearKlineApi#linearKlineGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **interval** | **String**| Kline interval. |
 **from** | **BigDecimal**| from timestamp. |
 **limit** | **BigDecimal**| Contract type. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearKlineIndexPrice"></a>
# **linearKlineIndexPrice**
> Object linearKlineIndexPrice(symbol, interval, from, limit)

Get kline

This will get index price kline

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearKlineApi;

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

LinearKlineApi apiInstance = new LinearKlineApi();
String symbol = "symbol_example"; // String | Contract type.
String interval = "interval_example"; // String | Kline interval.
BigDecimal from = new BigDecimal(); // BigDecimal | from timestamp.
BigDecimal limit = new BigDecimal(); // BigDecimal | Contract type.
try {
    Object result = apiInstance.linearKlineIndexPrice(symbol, interval, from, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearKlineApi#linearKlineIndexPrice");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **interval** | **String**| Kline interval. |
 **from** | **BigDecimal**| from timestamp. |
 **limit** | **BigDecimal**| Contract type. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearKlineMarkPrice"></a>
# **linearKlineMarkPrice**
> Object linearKlineMarkPrice(symbol, interval, from, limit)

Get kline

This will get mark price kline

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearKlineApi;

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

LinearKlineApi apiInstance = new LinearKlineApi();
String symbol = "symbol_example"; // String | Contract type.
String interval = "interval_example"; // String | Kline interval.
BigDecimal from = new BigDecimal(); // BigDecimal | from timestamp.
BigDecimal limit = new BigDecimal(); // BigDecimal | Contract type.
try {
    Object result = apiInstance.linearKlineMarkPrice(symbol, interval, from, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearKlineApi#linearKlineMarkPrice");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **interval** | **String**| Kline interval. |
 **from** | **BigDecimal**| from timestamp. |
 **limit** | **BigDecimal**| Contract type. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearKlinePremiumIndexPrice"></a>
# **linearKlinePremiumIndexPrice**
> Object linearKlinePremiumIndexPrice(symbol, interval, from, limit)

Get kline

This will get premium index price kline

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearKlineApi;

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

LinearKlineApi apiInstance = new LinearKlineApi();
String symbol = "symbol_example"; // String | Contract type.
String interval = "interval_example"; // String | Kline interval.
BigDecimal from = new BigDecimal(); // BigDecimal | from timestamp.
BigDecimal limit = new BigDecimal(); // BigDecimal | Contract type.
try {
    Object result = apiInstance.linearKlinePremiumIndexPrice(symbol, interval, from, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearKlineApi#linearKlinePremiumIndexPrice");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **interval** | **String**| Kline interval. |
 **from** | **BigDecimal**| from timestamp. |
 **limit** | **BigDecimal**| Contract type. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

