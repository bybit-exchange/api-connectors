# BybitApi.MarketApi

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
> Object marketSymbolInfo()

Get the latest information for symbol.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.MarketApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.marketSymbolInfo(callback);
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

