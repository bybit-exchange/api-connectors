# KlineApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**klineGet**](KlineApi.md#klineGet) | **GET** /v2/public/kline/list | Query historical kline.


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
String limit = "limit_example"; // String | Contract type.
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
 **limit** | **String**| Contract type. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

