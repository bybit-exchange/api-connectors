# FuturesPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futuresPositionsChangeMargin**](FuturesPositionsApi.md#futuresPositionsChangeMargin) | **POST** /futures/private/position/change-position-margin | Update margin.
[**futuresPositionsClosePnlRecords**](FuturesPositionsApi.md#futuresPositionsClosePnlRecords) | **GET** /futures/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
[**futuresPositionsMyPosition**](FuturesPositionsApi.md#futuresPositionsMyPosition) | **GET** /futures/private/position/list | Get my position list.
[**futuresPositionsSaveLeverage**](FuturesPositionsApi.md#futuresPositionsSaveLeverage) | **POST** /futures/private/position/leverage/save | Change user leverage.
[**futuresPositionsSwitchIsolated**](FuturesPositionsApi.md#futuresPositionsSwitchIsolated) | **POST** /futures/private/position/switch-isolated | Switch position isolated.
[**futuresPositionsSwitchPositionMode**](FuturesPositionsApi.md#futuresPositionsSwitchPositionMode) | **POST** /futures/private/position/switch-mode | Switch position mode.
[**futuresPositionsTradingStop**](FuturesPositionsApi.md#futuresPositionsTradingStop) | **POST** /futures/private/position/trading-stop | Set Trading-Stop Condition.


<a name="futuresPositionsChangeMargin"></a>
# **futuresPositionsChangeMargin**
> Object futuresPositionsChangeMargin(symbol, margin)

Update margin.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesPositionsApi;

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

FuturesPositionsApi apiInstance = new FuturesPositionsApi();
String symbol = "symbol_example"; // String | Contract type which you want update its margin
String margin = "margin_example"; // String | New margin you want set
try {
    Object result = apiInstance.futuresPositionsChangeMargin(symbol, margin);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesPositionsApi#futuresPositionsChangeMargin");
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

<a name="futuresPositionsClosePnlRecords"></a>
# **futuresPositionsClosePnlRecords**
> Object futuresPositionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit)

Get user&#39;s closed profit and loss records

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesPositionsApi;

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

FuturesPositionsApi apiInstance = new FuturesPositionsApi();
String symbol = "symbol_example"; // String | Contract type
Integer startTime = 56; // Integer | Start timestamp point for result, in second
Integer endTime = 56; // Integer | End timestamp point for result, in second
String execType = "execType_example"; // String | Execution type
Integer page = 56; // Integer | Page. By default, gets first page of data. Maximum of 50 pages
Integer limit = 56; // Integer | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
try {
    Object result = apiInstance.futuresPositionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesPositionsApi#futuresPositionsClosePnlRecords");
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

<a name="futuresPositionsMyPosition"></a>
# **futuresPositionsMyPosition**
> Object futuresPositionsMyPosition(symbol)

Get my position list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesPositionsApi;

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

FuturesPositionsApi apiInstance = new FuturesPositionsApi();
String symbol = "symbol_example"; // String | Contract type which you want update its margin
try {
    Object result = apiInstance.futuresPositionsMyPosition(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesPositionsApi#futuresPositionsMyPosition");
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

<a name="futuresPositionsSaveLeverage"></a>
# **futuresPositionsSaveLeverage**
> Object futuresPositionsSaveLeverage(symbol, positionIdx, buyLeverage, sellLeverage)

Change user leverage.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesPositionsApi;

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

FuturesPositionsApi apiInstance = new FuturesPositionsApi();
String symbol = "symbol_example"; // String | A symbol which you want change its leverage
Integer positionIdx = 56; // Integer | Position idx, used to identify positions in different position modes
String buyLeverage = "buyLeverage_example"; // String | New buy leverage you want set
String sellLeverage = "sellLeverage_example"; // String | New sell leverage you want set
try {
    Object result = apiInstance.futuresPositionsSaveLeverage(symbol, positionIdx, buyLeverage, sellLeverage);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesPositionsApi#futuresPositionsSaveLeverage");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| A symbol which you want change its leverage |
 **positionIdx** | **Integer**| Position idx, used to identify positions in different position modes |
 **buyLeverage** | **String**| New buy leverage you want set |
 **sellLeverage** | **String**| New sell leverage you want set |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresPositionsSwitchIsolated"></a>
# **futuresPositionsSwitchIsolated**
> Object futuresPositionsSwitchIsolated(symbol, positionIdx, buyLeverage, sellLeverage, isIsolated)

Switch position isolated.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesPositionsApi;

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

FuturesPositionsApi apiInstance = new FuturesPositionsApi();
String symbol = "symbol_example"; // String | A symbol which you want change its leverage
Integer positionIdx = 56; // Integer | Position idx, used to identify positions in different position modes
String buyLeverage = "buyLeverage_example"; // String | New buy leverage you want set
String sellLeverage = "sellLeverage_example"; // String | New sell leverage you want set
Boolean isIsolated = true; // Boolean | Position margin mode
try {
    Object result = apiInstance.futuresPositionsSwitchIsolated(symbol, positionIdx, buyLeverage, sellLeverage, isIsolated);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesPositionsApi#futuresPositionsSwitchIsolated");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| A symbol which you want change its leverage |
 **positionIdx** | **Integer**| Position idx, used to identify positions in different position modes |
 **buyLeverage** | **String**| New buy leverage you want set |
 **sellLeverage** | **String**| New sell leverage you want set |
 **isIsolated** | **Boolean**| Position margin mode | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresPositionsSwitchPositionMode"></a>
# **futuresPositionsSwitchPositionMode**
> Object futuresPositionsSwitchPositionMode(symbol, mode)

Switch position mode.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesPositionsApi;

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

FuturesPositionsApi apiInstance = new FuturesPositionsApi();
String symbol = "symbol_example"; // String | A symbol which you want change its leverage
Integer mode = 56; // Integer | Position Mode. 0: One-Way Mode; 3: Hedge Mode
try {
    Object result = apiInstance.futuresPositionsSwitchPositionMode(symbol, mode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesPositionsApi#futuresPositionsSwitchPositionMode");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| A symbol which you want change its leverage |
 **mode** | **Integer**| Position Mode. 0: One-Way Mode; 3: Hedge Mode |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresPositionsTradingStop"></a>
# **futuresPositionsTradingStop**
> Object futuresPositionsTradingStop(symbol, takeProfit, stopLoss, trailingStop, newTrailingActive)

Set Trading-Stop Condition.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesPositionsApi;

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

FuturesPositionsApi apiInstance = new FuturesPositionsApi();
String symbol = "symbol_example"; // String | Contract type
String takeProfit = "takeProfit_example"; // String | Not less than 0, 0 means cancel TP
String stopLoss = "stopLoss_example"; // String | Not less than 0, 0 means cancel SL
String trailingStop = "trailingStop_example"; // String | Not less than 0, 0 means cancel TS
String newTrailingActive = "newTrailingActive_example"; // String | Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default.
try {
    Object result = apiInstance.futuresPositionsTradingStop(symbol, takeProfit, stopLoss, trailingStop, newTrailingActive);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesPositionsApi#futuresPositionsTradingStop");
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

