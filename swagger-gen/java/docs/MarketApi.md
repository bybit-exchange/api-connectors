# MarketApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketOrderbook**](MarketApi.md#marketOrderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**marketSymbolInfo**](MarketApi.md#marketSymbolInfo) | **GET** /v2/public/tickers | Get the latest information for symbol.


<a name="marketOrderbook"></a>
# **marketOrderbook**
> Object marketOrderbook(symbol)

Get the orderbook.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.MarketApi;


MarketApi apiInstance = new MarketApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.marketOrderbook(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketOrderbook");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketSymbolInfo"></a>
# **marketSymbolInfo**
> Object marketSymbolInfo()

Get the latest information for symbol.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.MarketApi;


MarketApi apiInstance = new MarketApi();
try {
    Object result = apiInstance.marketSymbolInfo();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketSymbolInfo");
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

