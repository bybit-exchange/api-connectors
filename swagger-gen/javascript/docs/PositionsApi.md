# BybitApi.PositionsApi

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
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.PositionsApi();

var symbol = "symbol_example"; // String | Contract type which you want update its margin

var margin = "margin_example"; // String | New margin you want set


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.positionsChangeMargin(symbol, margin, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type which you want update its margin | 
 **margin** | **String**| New margin you want set | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="positionsMyPosition"></a>
# **positionsMyPosition**
> Object positionsMyPosition()

Get my position list.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.PositionsApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.positionsMyPosition(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="positionsSaveLeverage"></a>
# **positionsSaveLeverage**
> Object positionsSaveLeverage(symbol, leverage)

Change user leverage.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.PositionsApi();

var symbol = "symbol_example"; // String | A symbol which you want change its leverage

var leverage = "leverage_example"; // String | New leverage you want set


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.positionsSaveLeverage(symbol, leverage, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| A symbol which you want change its leverage | 
 **leverage** | **String**| New leverage you want set | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="positionsTradingStop"></a>
# **positionsTradingStop**
> Object positionsTradingStop(symbol, opts)

Set Trading-Stop Condition.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.PositionsApi();

var symbol = "symbol_example"; // String | Contract type

var opts = { 
  'takeProfit': "takeProfit_example", // String | Not less than 0, 0 means cancel TP
  'stopLoss': "stopLoss_example", // String | Not less than 0, 0 means cancel SL
  'trailingStop': "trailingStop_example" // String | Not less than 0, 0 means cancel TS
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.positionsTradingStop(symbol, opts, callback);
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="positionsUserLeverage"></a>
# **positionsUserLeverage**
> Object positionsUserLeverage()

Get user leverage setting.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.PositionsApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.positionsUserLeverage(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

