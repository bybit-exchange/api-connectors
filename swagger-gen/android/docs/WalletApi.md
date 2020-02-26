# WalletApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletGetBalance**](WalletApi.md#walletGetBalance) | **GET** /v2/private/wallet/balance | get wallet balance info
[**walletGetRecords**](WalletApi.md#walletGetRecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records
[**walletGetRiskLimit**](WalletApi.md#walletGetRiskLimit) | **GET** /open-api/wallet/risk-limit/list | Get risk limit.
[**walletSetRiskLimit**](WalletApi.md#walletSetRiskLimit) | **POST** /open-api/wallet/risk-limit | Set risk limit
[**walletWithdraw**](WalletApi.md#walletWithdraw) | **GET** /open-api/wallet/withdraw/list | Get wallet fund records


<a name="walletGetBalance"></a>
# **walletGetBalance**
> Object walletGetBalance(coin)

get wallet balance info

### Example
```java
// Import classes:
//import io.swagger.client.api.WalletApi;

WalletApi apiInstance = new WalletApi();
String coin = "coin_example"; // String | Coin.enum {BTC,EOS,XRP,ETH,USDT}
try {
    Object result = apiInstance.walletGetBalance(coin);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WalletApi#walletGetBalance");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| Coin.enum {BTC,EOS,XRP,ETH,USDT} | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="walletGetRecords"></a>
# **walletGetRecords**
> Object walletGetRecords(startDate, endDate, currency, walletFundType, page, limit)

Get wallet fund records

### Example
```java
// Import classes:
//import io.swagger.client.api.WalletApi;

WalletApi apiInstance = new WalletApi();
String startDate = "startDate_example"; // String | Start point for result
String endDate = "endDate_example"; // String | End point for result
String currency = "currency_example"; // String | Currency type
String walletFundType = "walletFundType_example"; // String | wallet fund type
String page = "page_example"; // String | Page. Default getting first page data
String limit = "limit_example"; // String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page
try {
    Object result = apiInstance.walletGetRecords(startDate, endDate, currency, walletFundType, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WalletApi#walletGetRecords");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| Start point for result | [optional]
 **endDate** | **String**| End point for result | [optional]
 **currency** | **String**| Currency type | [optional]
 **walletFundType** | **String**| wallet fund type | [optional]
 **page** | **String**| Page. Default getting first page data | [optional]
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="walletGetRiskLimit"></a>
# **walletGetRiskLimit**
> Object walletGetRiskLimit()

Get risk limit.

### Example
```java
// Import classes:
//import io.swagger.client.api.WalletApi;

WalletApi apiInstance = new WalletApi();
try {
    Object result = apiInstance.walletGetRiskLimit();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WalletApi#walletGetRiskLimit");
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

<a name="walletSetRiskLimit"></a>
# **walletSetRiskLimit**
> Object walletSetRiskLimit(symbol, riskId)

Set risk limit

### Example
```java
// Import classes:
//import io.swagger.client.api.WalletApi;

WalletApi apiInstance = new WalletApi();
String symbol = "symbol_example"; // String | Contract type.
BigDecimal riskId = new BigDecimal(); // BigDecimal | Risk ID. Can be found with the Get risk limit list endpoint.
try {
    Object result = apiInstance.walletSetRiskLimit(symbol, riskId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WalletApi#walletSetRiskLimit");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **riskId** | **BigDecimal**| Risk ID. Can be found with the Get risk limit list endpoint. |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="walletWithdraw"></a>
# **walletWithdraw**
> Object walletWithdraw(startDate, endDate, coin, status, page, limit)

Get wallet fund records

### Example
```java
// Import classes:
//import io.swagger.client.api.WalletApi;

WalletApi apiInstance = new WalletApi();
String startDate = "startDate_example"; // String | Start point for result
String endDate = "endDate_example"; // String | End point for result
String coin = "coin_example"; // String | Currency
String status = "status_example"; // String | Withdraw status
String page = "page_example"; // String | Page. Default getting first page data
String limit = "limit_example"; // String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page
try {
    Object result = apiInstance.walletWithdraw(startDate, endDate, coin, status, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WalletApi#walletWithdraw");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| Start point for result | [optional]
 **endDate** | **String**| End point for result | [optional]
 **coin** | **String**| Currency | [optional]
 **status** | **String**| Withdraw status | [optional]
 **page** | **String**| Page. Default getting first page data | [optional]
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

