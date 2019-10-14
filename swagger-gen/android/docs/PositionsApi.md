# PositionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positionsChangeMargin**](PositionsApi.md#positionsChangeMargin) | **POST** /position/change-position-margin | Update margin.
[**positionsMyPosition**](PositionsApi.md#positionsMyPosition) | **GET** /position/list | Get my position list.
[**positionsSaveLeverage**](PositionsApi.md#positionsSaveLeverage) | **POST** /user/leverage/save | Change user leverage.
[**positionsTradingStop**](PositionsApi.md#positionsTradingStop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.
[**positionsUserLeverage**](PositionsApi.md#positionsUserLeverage) | **GET** /user/leverage | Get user leverage setting.


<a name="positionsChangeMargin"></a>
# **positionsChangeMargin**
> Object positionsChangeMargin(symbol, margin)

Update margin.

### Example
```java
// Import classes:
//import io.swagger.client.api.PositionsApi;

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="positionsMyPosition"></a>
# **positionsMyPosition**
> Object positionsMyPosition()

Get my position list.

### Example
```java
// Import classes:
//import io.swagger.client.api.PositionsApi;

PositionsApi apiInstance = new PositionsApi();
try {
    Object result = apiInstance.positionsMyPosition();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#positionsMyPosition");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

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
//import io.swagger.client.api.PositionsApi;

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="positionsTradingStop"></a>
# **positionsTradingStop**
> Object positionsTradingStop(symbol, takeProfit, stopLoss, trailingStop)

Set Trading-Stop Condition.

### Example
```java
// Import classes:
//import io.swagger.client.api.PositionsApi;

PositionsApi apiInstance = new PositionsApi();
String symbol = "symbol_example"; // String | Contract type
String takeProfit = "takeProfit_example"; // String | Not less than 0, 0 means cancel TP
String stopLoss = "stopLoss_example"; // String | Not less than 0, 0 means cancel SL
String trailingStop = "trailingStop_example"; // String | Not less than 0, 0 means cancel TS
try {
    Object result = apiInstance.positionsTradingStop(symbol, takeProfit, stopLoss, trailingStop);
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

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="positionsUserLeverage"></a>
# **positionsUserLeverage**
> Object positionsUserLeverage()

Get user leverage setting.

### Example
```java
// Import classes:
//import io.swagger.client.api.PositionsApi;

PositionsApi apiInstance = new PositionsApi();
try {
    Object result = apiInstance.positionsUserLeverage();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#positionsUserLeverage");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

