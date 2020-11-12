# MarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketAccountRatio**](MarketApi.md#marketAccountRatio) | **GET** /v2/public/account-ratio | Query Account Long Short Ratio
[**marketBigDeal**](MarketApi.md#marketBigDeal) | **GET** /v2/public/big-deal | Query Big Deal
[**marketLiqRecords**](MarketApi.md#marketLiqRecords) | **GET** /v2/public/liq-records | Query liq records.
[**marketOpenInterest**](MarketApi.md#marketOpenInterest) | **GET** /v2/public/open-interest | Query Open Interest
[**marketOrderbook**](MarketApi.md#marketOrderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**marketSymbolInfo**](MarketApi.md#marketSymbolInfo) | **GET** /v2/public/tickers | Get the latest information for symbol.
[**marketTradingRecords**](MarketApi.md#marketTradingRecords) | **GET** /v2/public/trading-records | Get recent trades


<a name="marketAccountRatio"></a>
# **marketAccountRatio**
> Object marketAccountRatio(symbol, period, limit)

Query Account Long Short Ratio

### Example
```java
// Import classes:
//import io.swagger.client.api.MarketApi;

MarketApi apiInstance = new MarketApi();
String symbol = "symbol_example"; // String | Contract type.
String period = "period_example"; // String | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
Integer limit = 56; // Integer | Limit for data size, max size is 500. Default size is 50
try {
    Object result = apiInstance.marketAccountRatio(symbol, period, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketAccountRatio");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **period** | **String**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d |
 **limit** | **Integer**| Limit for data size, max size is 500. Default size is 50 | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketBigDeal"></a>
# **marketBigDeal**
> Object marketBigDeal(symbol, limit)

Query Big Deal

### Example
```java
// Import classes:
//import io.swagger.client.api.MarketApi;

MarketApi apiInstance = new MarketApi();
String symbol = "symbol_example"; // String | Contract type.
Integer limit = 56; // Integer | Limit for data size, max size is 1000. Default size is 500
try {
    Object result = apiInstance.marketBigDeal(symbol, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketBigDeal");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **limit** | **Integer**| Limit for data size, max size is 1000. Default size is 500 | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketLiqRecords"></a>
# **marketLiqRecords**
> Object marketLiqRecords(symbol, from, limit, startTime, endTime)

Query liq records.

### Example
```java
// Import classes:
//import io.swagger.client.api.MarketApi;

MarketApi apiInstance = new MarketApi();
String symbol = "symbol_example"; // String | Contract type.
Integer from = 56; // Integer | From ID. Default: return latest data
Integer limit = 56; // Integer | Limit for data size, max size is 1000. Default size is 500
Integer startTime = 56; // Integer | Start timestamp point for result, in millisecond
Integer endTime = 56; // Integer | End timestamp point for result, in millisecond
try {
    Object result = apiInstance.marketLiqRecords(symbol, from, limit, startTime, endTime);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketLiqRecords");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **from** | **Integer**| From ID. Default: return latest data | [optional]
 **limit** | **Integer**| Limit for data size, max size is 1000. Default size is 500 | [optional]
 **startTime** | **Integer**| Start timestamp point for result, in millisecond | [optional]
 **endTime** | **Integer**| End timestamp point for result, in millisecond | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketOpenInterest"></a>
# **marketOpenInterest**
> Object marketOpenInterest(symbol, period, limit)

Query Open Interest

### Example
```java
// Import classes:
//import io.swagger.client.api.MarketApi;

MarketApi apiInstance = new MarketApi();
String symbol = "symbol_example"; // String | Contract type.
String period = "period_example"; // String | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
Integer limit = 56; // Integer | Limit for data size, max size is 200. Default size is 50
try {
    Object result = apiInstance.marketOpenInterest(symbol, period, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketOpenInterest");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **period** | **String**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d |
 **limit** | **Integer**| Limit for data size, max size is 200. Default size is 50 | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketOrderbook"></a>
# **marketOrderbook**
> Object marketOrderbook(symbol)

Get the orderbook.

### Example
```java
// Import classes:
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
> Object marketSymbolInfo(symbol)

Get the latest information for symbol.

### Example
```java
// Import classes:
//import io.swagger.client.api.MarketApi;

MarketApi apiInstance = new MarketApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.marketSymbolInfo(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketSymbolInfo");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketTradingRecords"></a>
# **marketTradingRecords**
> Object marketTradingRecords(symbol, from, limit)

Get recent trades

### Example
```java
// Import classes:
//import io.swagger.client.api.MarketApi;

MarketApi apiInstance = new MarketApi();
String symbol = "symbol_example"; // String | Contract type.
Integer from = 56; // Integer | From ID. Default: return latest data
Integer limit = 56; // Integer | Number of results. Default 500; max 1000
try {
    Object result = apiInstance.marketTradingRecords(symbol, from, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MarketApi#marketTradingRecords");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **from** | **Integer**| From ID. Default: return latest data | [optional]
 **limit** | **Integer**| Number of results. Default 500; max 1000 | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

