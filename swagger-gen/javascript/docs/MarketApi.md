# BybitApi.MarketApi

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
> Object marketAccountRatio(symbol, period, opts)

Query Account Long Short Ratio

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var symbol = "symbol_example"; // String | Contract type.

var period = "period_example"; // String | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d

var opts = { 
  'limit': 56 // Number | Limit for data size, max size is 500. Default size is 50
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketAccountRatio(symbol, period, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **period** | **String**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **Number**| Limit for data size, max size is 500. Default size is 50 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketBigDeal"></a>
# **marketBigDeal**
> Object marketBigDeal(symbol, opts)

Query Big Deal

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var symbol = "symbol_example"; // String | Contract type.

var opts = { 
  'limit': 56 // Number | Limit for data size, max size is 1000. Default size is 500
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketBigDeal(symbol, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **limit** | **Number**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketLiqRecords"></a>
# **marketLiqRecords**
> Object marketLiqRecords(symbol, opts)

Query liq records.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var symbol = "symbol_example"; // String | Contract type.

var opts = { 
  'from': 56, // Number | From ID. Default: return latest data
  'limit': 56, // Number | Limit for data size, max size is 1000. Default size is 500
  'startTime': 56, // Number | Start timestamp point for result, in millisecond
  'endTime': 56 // Number | End timestamp point for result, in millisecond
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketLiqRecords(symbol, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **from** | **Number**| From ID. Default: return latest data | [optional] 
 **limit** | **Number**| Limit for data size, max size is 1000. Default size is 500 | [optional] 
 **startTime** | **Number**| Start timestamp point for result, in millisecond | [optional] 
 **endTime** | **Number**| End timestamp point for result, in millisecond | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="marketOpenInterest"></a>
# **marketOpenInterest**
> Object marketOpenInterest(symbol, period, opts)

Query Open Interest

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var symbol = "symbol_example"; // String | Contract type.

var period = "period_example"; // String | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d

var opts = { 
  'limit': 56 // Number | Limit for data size, max size is 200. Default size is 50
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketOpenInterest(symbol, period, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **period** | **String**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **Number**| Limit for data size, max size is 200. Default size is 50 | [optional] 

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
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var symbol = "symbol_example"; // String | Contract type.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketOrderbook(symbol, callback);
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
> Object marketSymbolInfo(opts)

Get the latest information for symbol.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var opts = { 
  'symbol': "symbol_example" // String | Contract type.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketSymbolInfo(opts, callback);
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
> Object marketTradingRecords(symbol, opts)

Get recent trades

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var symbol = "symbol_example"; // String | Contract type.

var opts = { 
  'from': 56, // Number | From ID. Default: return latest data
  'limit': 56 // Number | Number of results. Default 500; max 1000
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketTradingRecords(symbol, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 
 **from** | **Number**| From ID. Default: return latest data | [optional] 
 **limit** | **Number**| Number of results. Default 500; max 1000 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

