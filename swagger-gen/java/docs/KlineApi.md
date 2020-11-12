# KlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**klineGet**](KlineApi.md#klineGet) | **GET** /v2/public/kline/list | Query historical kline.
[**klineMarkPrice**](KlineApi.md#klineMarkPrice) | **GET** /v2/public/mark-price-kline | Query mark price kline.


<a name="klineGet"></a>
# **klineGet**
> Object klineGet(symbol, interval, from, limit)

Query historical kline.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.KlineApi;


KlineApi apiInstance = new KlineApi();
String symbol = "symbol_example"; // String | Contract type.
String interval = "interval_example"; // String | Kline interval.
BigDecimal from = new BigDecimal(); // BigDecimal | from timestamp.
BigDecimal limit = new BigDecimal(); // BigDecimal | Contract type.
try {
    Object result = apiInstance.klineGet(symbol, interval, from, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KlineApi#klineGet");
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

<a name="klineMarkPrice"></a>
# **klineMarkPrice**
> Object klineMarkPrice(symbol, interval, from, limit)

Query mark price kline.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.KlineApi;


KlineApi apiInstance = new KlineApi();
String symbol = "symbol_example"; // String | Contract type.
String interval = "interval_example"; // String | Data refresh interval
Integer from = 56; // Integer | From timestamp in seconds
Integer limit = 56; // Integer | Limit for data size, max size is 1000. Default size is 500
try {
    Object result = apiInstance.klineMarkPrice(symbol, interval, from, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KlineApi#klineMarkPrice");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **interval** | **String**| Data refresh interval |
 **from** | **Integer**| From timestamp in seconds |
 **limit** | **Integer**| Limit for data size, max size is 1000. Default size is 500 | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

