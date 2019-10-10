# WalletApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletGetRecords**](WalletApi.md#walletGetRecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records


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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

