# FundingApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fundingGetRate**](FundingApi.md#fundingGetRate) | **GET** /open-api/funding/prev-funding | Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval&#39;s fund fee settlement is based on the previous interval&#39;s fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.
[**fundingPredicted**](FundingApi.md#fundingPredicted) | **GET** /open-api/funding/predicted-funding | Get predicted funding rate and funding fee.
[**fundingPredictedRate**](FundingApi.md#fundingPredictedRate) | **GET** /open-api/funding/prev-funding-rate | Get predicted funding rate and funding fee.


<a name="fundingGetRate"></a>
# **fundingGetRate**
> Object fundingGetRate(symbol)

Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval&#39;s fund fee settlement is based on the previous interval&#39;s fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.

### Example
```java
// Import classes:
//import io.swagger.client.api.FundingApi;

FundingApi apiInstance = new FundingApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.fundingGetRate(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FundingApi#fundingGetRate");
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

<a name="fundingPredicted"></a>
# **fundingPredicted**
> Object fundingPredicted(symbol)

Get predicted funding rate and funding fee.

### Example
```java
// Import classes:
//import io.swagger.client.api.FundingApi;

FundingApi apiInstance = new FundingApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.fundingPredicted(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FundingApi#fundingPredicted");
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

<a name="fundingPredictedRate"></a>
# **fundingPredictedRate**
> Object fundingPredictedRate(symbol)

Get predicted funding rate and funding fee.

### Example
```java
// Import classes:
//import io.swagger.client.api.FundingApi;

FundingApi apiInstance = new FundingApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.fundingPredictedRate(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FundingApi#fundingPredictedRate");
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

