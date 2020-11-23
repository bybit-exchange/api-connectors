# CommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commonAnnouncements**](CommonApi.md#commonAnnouncements) | **GET** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[**commonGetLcp**](CommonApi.md#commonGetLcp) | **GET** /v2/private/account/lcp | Query LCP info.
[**commonGetTime**](CommonApi.md#commonGetTime) | **GET** /v2/public/time | Get bybit server time.


<a name="commonAnnouncements"></a>
# **commonAnnouncements**
> Object commonAnnouncements()

Get Bybit OpenAPI announcements in the last 30 days in reverse order.

### Example
```java
// Import classes:
//import io.swagger.client.api.CommonApi;

CommonApi apiInstance = new CommonApi();
try {
    Object result = apiInstance.commonAnnouncements();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CommonApi#commonAnnouncements");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="commonGetLcp"></a>
# **commonGetLcp**
> Object commonGetLcp(symbol)

Query LCP info.

### Example
```java
// Import classes:
//import io.swagger.client.api.CommonApi;

CommonApi apiInstance = new CommonApi();
String symbol = "symbol_example"; // String | Contract type
try {
    Object result = apiInstance.commonGetLcp(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CommonApi#commonGetLcp");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="commonGetTime"></a>
# **commonGetTime**
> Object commonGetTime()

Get bybit server time.

### Example
```java
// Import classes:
//import io.swagger.client.api.CommonApi;

CommonApi apiInstance = new CommonApi();
try {
    Object result = apiInstance.commonGetTime();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CommonApi#commonGetTime");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

