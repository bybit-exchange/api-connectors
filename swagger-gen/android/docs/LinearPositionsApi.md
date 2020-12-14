# LinearPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearPositionsChangeMargin**](LinearPositionsApi.md#linearPositionsChangeMargin) | **POST** /private/linear/position/add-margin | Add/Reduce Margin
[**linearPositionsClosePnlRecords**](LinearPositionsApi.md#linearPositionsClosePnlRecords) | **GET** /private/linear/trade/closed-pnl/list | Get user&#39;s closed profit and loss records.
[**linearPositionsMyPosition**](LinearPositionsApi.md#linearPositionsMyPosition) | **GET** /private/linear/position/list | Get my position list.
[**linearPositionsSaveLeverage**](LinearPositionsApi.md#linearPositionsSaveLeverage) | **POST** /private/linear/position/set-leverage | Set leverage
[**linearPositionsSetAutoAddMargin**](LinearPositionsApi.md#linearPositionsSetAutoAddMargin) | **POST** /private/linear/position/set-auto-add-margin | Set auto add margin
[**linearPositionsSwitchIsolated**](LinearPositionsApi.md#linearPositionsSwitchIsolated) | **POST** /private/linear/position/switch-isolated | Switch isolated
[**linearPositionsSwitchMode**](LinearPositionsApi.md#linearPositionsSwitchMode) | **POST** /private/linear/tpsl/switch-mode | Switch Mode
[**linearPositionsTradingStop**](LinearPositionsApi.md#linearPositionsTradingStop) | **POST** /private/linear/position/trading-stop | Set tradingStop


<a name="linearPositionsChangeMargin"></a>
# **linearPositionsChangeMargin**
> Object linearPositionsChangeMargin(symbol, side, margin)

Add/Reduce Margin

This will Add/Reduce Margin

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
String side = "side_example"; // String | 
Double margin = 3.4D; // Double | 
try {
    Object result = apiInstance.linearPositionsChangeMargin(symbol, side, margin);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsChangeMargin");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **side** | **String**|  | [optional]
 **margin** | **Double**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearPositionsClosePnlRecords"></a>
# **linearPositionsClosePnlRecords**
> Object linearPositionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit)

Get user&#39;s closed profit and loss records.

This will get user&#39;s closed profit and loss records.

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
Long startTime = 789L; // Long | 
Long endTime = 789L; // Long | 
String execType = "execType_example"; // String | 
Long page = 789L; // Long | 
Long limit = 789L; // Long | 
try {
    Object result = apiInstance.linearPositionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsClosePnlRecords");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **startTime** | **Long**|  | [optional]
 **endTime** | **Long**|  | [optional]
 **execType** | **String**|  | [optional]
 **page** | **Long**|  | [optional]
 **limit** | **Long**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearPositionsMyPosition"></a>
# **linearPositionsMyPosition**
> Object linearPositionsMyPosition(symbol)

Get my position list.

This will get my position list.

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
try {
    Object result = apiInstance.linearPositionsMyPosition(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsMyPosition");
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

<a name="linearPositionsSaveLeverage"></a>
# **linearPositionsSaveLeverage**
> Object linearPositionsSaveLeverage(symbol, buyLeverage, sellLeverage)

Set leverage

This will Set Leverage

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
Double buyLeverage = 3.4D; // Double | 
Double sellLeverage = 3.4D; // Double | 
try {
    Object result = apiInstance.linearPositionsSaveLeverage(symbol, buyLeverage, sellLeverage);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsSaveLeverage");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **buyLeverage** | **Double**|  | [optional]
 **sellLeverage** | **Double**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearPositionsSetAutoAddMargin"></a>
# **linearPositionsSetAutoAddMargin**
> Object linearPositionsSetAutoAddMargin(symbol, side, autoAddMargin)

Set auto add margin

This will Set auto add margin

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
String side = "side_example"; // String | 
Boolean autoAddMargin = true; // Boolean | 
try {
    Object result = apiInstance.linearPositionsSetAutoAddMargin(symbol, side, autoAddMargin);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsSetAutoAddMargin");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **side** | **String**|  | [optional]
 **autoAddMargin** | **Boolean**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearPositionsSwitchIsolated"></a>
# **linearPositionsSwitchIsolated**
> Object linearPositionsSwitchIsolated(symbol, isIsolated, buyLeverage, sellLeverage)

Switch isolated

This will switch isolated

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
Boolean isIsolated = true; // Boolean | 
Double buyLeverage = 3.4D; // Double | 
Double sellLeverage = 3.4D; // Double | 
try {
    Object result = apiInstance.linearPositionsSwitchIsolated(symbol, isIsolated, buyLeverage, sellLeverage);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsSwitchIsolated");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **isIsolated** | **Boolean**|  | [optional]
 **buyLeverage** | **Double**|  | [optional]
 **sellLeverage** | **Double**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearPositionsSwitchMode"></a>
# **linearPositionsSwitchMode**
> Object linearPositionsSwitchMode(symbol, tpSlMode)

Switch Mode

This will Switch TP/SL Mode

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
String tpSlMode = "tpSlMode_example"; // String | 
try {
    Object result = apiInstance.linearPositionsSwitchMode(symbol, tpSlMode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsSwitchMode");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **tpSlMode** | **String**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearPositionsTradingStop"></a>
# **linearPositionsTradingStop**
> Object linearPositionsTradingStop(symbol, side, takeProfit, stopLoss, trailingStop, tpTriggerBy, slTriggerBy, slSize, tpSize)

Set tradingStop

This will set tradingStop

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearPositionsApi;

LinearPositionsApi apiInstance = new LinearPositionsApi();
String symbol = "symbol_example"; // String | 
String side = "side_example"; // String | 
Double takeProfit = 3.4D; // Double | 
Double stopLoss = 3.4D; // Double | 
Double trailingStop = 3.4D; // Double | 
String tpTriggerBy = "tpTriggerBy_example"; // String | 
String slTriggerBy = "slTriggerBy_example"; // String | 
Double slSize = 3.4D; // Double | 
Double tpSize = 3.4D; // Double | 
try {
    Object result = apiInstance.linearPositionsTradingStop(symbol, side, takeProfit, stopLoss, trailingStop, tpTriggerBy, slTriggerBy, slSize, tpSize);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearPositionsApi#linearPositionsTradingStop");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **side** | **String**|  | [optional]
 **takeProfit** | **Double**|  | [optional]
 **stopLoss** | **Double**|  | [optional]
 **trailingStop** | **Double**|  | [optional]
 **tpTriggerBy** | **String**|  | [optional]
 **slTriggerBy** | **String**|  | [optional]
 **slSize** | **Double**|  | [optional]
 **tpSize** | **Double**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

