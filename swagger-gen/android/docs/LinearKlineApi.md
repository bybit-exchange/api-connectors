# LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearKlineGet**](LinearKlineApi.md#linearKlineGet) | **GET** /public/linear/kline | Get kline
[**linearKlineMarkPrice**](LinearKlineApi.md#linearKlineMarkPrice) | **GET** /public/linear/mark-price-kline | Get kline


<a name="linearKlineGet"></a>
# **linearKlineGet**
> Object linearKlineGet(symbol, interval, from, limit)

Get kline

This will get kline

### Example
```java
// Import classes:
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

<a name="linearKlineMarkPrice"></a>
# **linearKlineMarkPrice**
> Object linearKlineMarkPrice(symbol, interval, from, limit)

Get kline

This will get mark price kline

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearKlineApi;

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

