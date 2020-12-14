# LinearFundingApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearFundingMyLastFee**](LinearFundingApi.md#linearFundingMyLastFee) | **GET** /private/linear/funding/prev-funding | Get prev funding
[**linearFundingPredicted**](LinearFundingApi.md#linearFundingPredicted) | **GET** /private/linear/funding/predicted-funding | Get predicted funding rate and funding fee.
[**linearFundingPrevRate**](LinearFundingApi.md#linearFundingPrevRate) | **GET** /public/linear/funding/prev-funding-rate | Get prev funding


<a name="linearFundingMyLastFee"></a>
# **linearFundingMyLastFee**
> Object linearFundingMyLastFee(symbol)

Get prev funding

This will get prev funding

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearFundingApi;

LinearFundingApi apiInstance = new LinearFundingApi();
String symbol = "symbol_example"; // String | 
try {
    Object result = apiInstance.linearFundingMyLastFee(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearFundingApi#linearFundingMyLastFee");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearFundingPredicted"></a>
# **linearFundingPredicted**
> Object linearFundingPredicted(symbol)

Get predicted funding rate and funding fee.

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearFundingApi;

LinearFundingApi apiInstance = new LinearFundingApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.linearFundingPredicted(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearFundingApi#linearFundingPredicted");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearFundingPrevRate"></a>
# **linearFundingPrevRate**
> Object linearFundingPrevRate(symbol)

Get prev funding

This will get prev funding rate

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearFundingApi;

LinearFundingApi apiInstance = new LinearFundingApi();
String symbol = "symbol_example"; // String | 
try {
    Object result = apiInstance.linearFundingPrevRate(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearFundingApi#linearFundingPrevRate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

