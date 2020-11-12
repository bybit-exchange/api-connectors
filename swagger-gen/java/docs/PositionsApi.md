# PositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positionsChangeMargin**](PositionsApi.md#positionsChangeMargin) | **POST** /position/change-position-margin | Update margin.
[**positionsClosePnlRecords**](PositionsApi.md#positionsClosePnlRecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
[**positionsMyPosition**](PositionsApi.md#positionsMyPosition) | **GET** /v2/private/position/list | Get my position list.
[**positionsSaveLeverage**](PositionsApi.md#positionsSaveLeverage) | **POST** /user/leverage/save | Change user leverage.
[**positionsTradingStop**](PositionsApi.md#positionsTradingStop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.


<a name="positionsChangeMargin"></a>
# **positionsChangeMargin**
> Object positionsChangeMargin(symbol, margin)

Update margin.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PositionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

PositionsApi apiInstance = new PositionsApi();
String symbol = "symbol_example"; // String | Contract type which you want update its margin
String margin = "margin_example"; // String | New margin you want set
try {
    Object result = apiInstance.positionsChangeMargin(symbol, margin);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#positionsChangeMargin");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type which you want update its margin |
 **margin** | **String**| New margin you want set |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="positionsClosePnlRecords"></a>
# **positionsClosePnlRecords**
> Object positionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit)

Get user&#39;s closed profit and loss records

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PositionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

PositionsApi apiInstance = new PositionsApi();
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
    System.err.println("Exception when calling PositionsApi#positionsClosePnlRecords");
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

<a name="positionsMyPosition"></a>
# **positionsMyPosition**
> Object positionsMyPosition(symbol)

Get my position list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PositionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

PositionsApi apiInstance = new PositionsApi();
String symbol = "symbol_example"; // String | Contract type which you want update its margin
try {
    Object result = apiInstance.positionsMyPosition(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#positionsMyPosition");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type which you want update its margin | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="positionsSaveLeverage"></a>
# **positionsSaveLeverage**
> Object positionsSaveLeverage(symbol, leverage)

Change user leverage.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PositionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

PositionsApi apiInstance = new PositionsApi();
String symbol = "symbol_example"; // String | A symbol which you want change its leverage
String leverage = "leverage_example"; // String | New leverage you want set
try {
    Object result = apiInstance.positionsSaveLeverage(symbol, leverage);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#positionsSaveLeverage");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| A symbol which you want change its leverage |
 **leverage** | **String**| New leverage you want set |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="positionsTradingStop"></a>
# **positionsTradingStop**
> Object positionsTradingStop(symbol, takeProfit, stopLoss, trailingStop, newTrailingActive)

Set Trading-Stop Condition.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PositionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

PositionsApi apiInstance = new PositionsApi();
String symbol = "symbol_example"; // String | Contract type
String takeProfit = "takeProfit_example"; // String | Not less than 0, 0 means cancel TP
String stopLoss = "stopLoss_example"; // String | Not less than 0, 0 means cancel SL
String trailingStop = "trailingStop_example"; // String | Not less than 0, 0 means cancel TS
String newTrailingActive = "newTrailingActive_example"; // String | Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default.
try {
    Object result = apiInstance.positionsTradingStop(symbol, takeProfit, stopLoss, trailingStop, newTrailingActive);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#positionsTradingStop");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type |
 **takeProfit** | **String**| Not less than 0, 0 means cancel TP | [optional]
 **stopLoss** | **String**| Not less than 0, 0 means cancel SL | [optional]
 **trailingStop** | **String**| Not less than 0, 0 means cancel TS | [optional]
 **newTrailingActive** | **String**| Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

