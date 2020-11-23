# ExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get user’s trade records.
[**positionsClosePnlRecords**](ExecutionApi.md#positionsClosePnlRecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records


<a name="executionGetTrades"></a>
# **executionGetTrades**
> Object executionGetTrades(orderId, symbol, startTime, page, limit)

Get user’s trade records.

### Example
```java
// Import classes:
//import io.swagger.client.api.ExecutionApi;

ExecutionApi apiInstance = new ExecutionApi();
String orderId = "orderId_example"; // String | OrderID. If not provided, will return user’s trading records.
String symbol = "symbol_example"; // String | Contract type. If order_id not provided, symbol is required.
String startTime = "startTime_example"; // String | Start timestamp point for result.
String page = "page_example"; // String | Page. Default getting first page data.
String limit = "limit_example"; // String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
try {
    Object result = apiInstance.executionGetTrades(orderId, symbol, startTime, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExecutionApi#executionGetTrades");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| OrderID. If not provided, will return user’s trading records. | [optional]
 **symbol** | **String**| Contract type. If order_id not provided, symbol is required. | [optional]
 **startTime** | **String**| Start timestamp point for result. | [optional]
 **page** | **String**| Page. Default getting first page data. | [optional]
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="positionsClosePnlRecords"></a>
# **positionsClosePnlRecords**
> Object positionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit)

Get user&#39;s closed profit and loss records

### Example
```java
// Import classes:
//import io.swagger.client.api.ExecutionApi;

ExecutionApi apiInstance = new ExecutionApi();
String symbol = "symbol_example"; // String | Contract type
Integer startTime = 56; // Integer | Start timestamp point for result, in second
Integer endTime = 56; // Integer | End timestamp point for result, in second
String execType = "execType_example"; // String | Execution type
Integer page = 56; // Integer | Page. By default, gets first page of data. Maximum of 50 pages
Integer limit = 56; // Integer | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
try {
    Object result = apiInstance.positionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExecutionApi#positionsClosePnlRecords");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type |
 **startTime** | **Integer**| Start timestamp point for result, in second | [optional]
 **endTime** | **Integer**| End timestamp point for result, in second | [optional]
 **execType** | **String**| Execution type | [optional]
 **page** | **Integer**| Page. By default, gets first page of data. Maximum of 50 pages | [optional]
 **limit** | **Integer**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

