# BybitApi.LinearOrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearOrderCancel**](LinearOrderApi.md#linearOrderCancel) | **POST** /private/linear/order/cancel | Cancel Active Order
[**linearOrderCancelAll**](LinearOrderApi.md#linearOrderCancelAll) | **POST** /private/linear/order/cancel-all | Cancel all active orders.
[**linearOrderGetOrders**](LinearOrderApi.md#linearOrderGetOrders) | **GET** /private/linear/order/list | Get linear Active Orders
[**linearOrderNew**](LinearOrderApi.md#linearOrderNew) | **POST** /private/linear/order/create | Create Active Order
[**linearOrderQuery**](LinearOrderApi.md#linearOrderQuery) | **GET** /private/linear/order/search | Get Active Orders(real-time)
[**linearOrderReplace**](LinearOrderApi.md#linearOrderReplace) | **POST** /private/linear/order/replace | Replace Active Order


<a name="linearOrderCancel"></a>
# **linearOrderCancel**
> Object linearOrderCancel(opts)

Cancel Active Order

This will cancel linear active order

### Example
```javascript
var BybitApi = require('bybit_api');
var defaultClient = BybitApi.ApiClient.instance;

// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

// Configure API key authorization: apiSignature
var apiSignature = defaultClient.authentications['apiSignature'];
apiSignature.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.apiKeyPrefix = 'Token';

// Configure API key authorization: timestamp
var timestamp = defaultClient.authentications['timestamp'];
timestamp.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.apiKeyPrefix = 'Token';

var apiInstance = new BybitApi.LinearOrderApi();

var opts = { 
  'orderId': "orderId_example", // String | 
  'orderLinkId': "orderLinkId_example", // String | 
  'symbol': "symbol_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearOrderCancel(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearOrderCancelAll"></a>
# **linearOrderCancelAll**
> Object linearOrderCancelAll(symbol)

Cancel all active orders.

### Example
```javascript
var BybitApi = require('bybit_api');
var defaultClient = BybitApi.ApiClient.instance;

// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

// Configure API key authorization: apiSignature
var apiSignature = defaultClient.authentications['apiSignature'];
apiSignature.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.apiKeyPrefix = 'Token';

// Configure API key authorization: timestamp
var timestamp = defaultClient.authentications['timestamp'];
timestamp.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.apiKeyPrefix = 'Token';

var apiInstance = new BybitApi.LinearOrderApi();

var symbol = "symbol_example"; // String | Contract type.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearOrderCancelAll(symbol, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearOrderGetOrders"></a>
# **linearOrderGetOrders**
> Object linearOrderGetOrders(opts)

Get linear Active Orders

This will get linear active orders

### Example
```javascript
var BybitApi = require('bybit_api');
var defaultClient = BybitApi.ApiClient.instance;

// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

// Configure API key authorization: apiSignature
var apiSignature = defaultClient.authentications['apiSignature'];
apiSignature.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.apiKeyPrefix = 'Token';

// Configure API key authorization: timestamp
var timestamp = defaultClient.authentications['timestamp'];
timestamp.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.apiKeyPrefix = 'Token';

var apiInstance = new BybitApi.LinearOrderApi();

var opts = { 
  'orderId': "orderId_example", // String | 
  'orderLinkId': "orderLinkId_example", // String | 
  'symbol': "symbol_example", // String | 
  'order': "order_example", // String | 
  'page': "page_example", // String | 
  'limit': "limit_example", // String | 
  'orderStatus': "orderStatus_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearOrderGetOrders(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 
 **order** | **String**|  | [optional] 
 **page** | **String**|  | [optional] 
 **limit** | **String**|  | [optional] 
 **orderStatus** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearOrderNew"></a>
# **linearOrderNew**
> Object linearOrderNew(opts)

Create Active Order

This will create linear order

### Example
```javascript
var BybitApi = require('bybit_api');
var defaultClient = BybitApi.ApiClient.instance;

// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

// Configure API key authorization: apiSignature
var apiSignature = defaultClient.authentications['apiSignature'];
apiSignature.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.apiKeyPrefix = 'Token';

// Configure API key authorization: timestamp
var timestamp = defaultClient.authentications['timestamp'];
timestamp.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.apiKeyPrefix = 'Token';

var apiInstance = new BybitApi.LinearOrderApi();

var opts = { 
  'symbol': "symbol_example", // String | 
  'side': "side_example", // String | 
  'orderType': "orderType_example", // String | 
  'timeInForce': "timeInForce_example", // String | 
  'qty': 1.2, // Number | 
  'price': 1.2, // Number | 
  'takeProfit': 1.2, // Number | 
  'stopLoss': 1.2, // Number | 
  'reduceOnly': true, // Boolean | 
  'tpTriggerBy': "tpTriggerBy_example", // String | 
  'slTriggerBy': "slTriggerBy_example", // String | 
  'closeOnTrigger': true, // Boolean | 
  'orderLinkId': "orderLinkId_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearOrderNew(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **side** | **String**|  | [optional] 
 **orderType** | **String**|  | [optional] 
 **timeInForce** | **String**|  | [optional] 
 **qty** | **Number**|  | [optional] 
 **price** | **Number**|  | [optional] 
 **takeProfit** | **Number**|  | [optional] 
 **stopLoss** | **Number**|  | [optional] 
 **reduceOnly** | **Boolean**|  | [optional] 
 **tpTriggerBy** | **String**|  | [optional] 
 **slTriggerBy** | **String**|  | [optional] 
 **closeOnTrigger** | **Boolean**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearOrderQuery"></a>
# **linearOrderQuery**
> Object linearOrderQuery(opts)

Get Active Orders(real-time)

This will get linear active orders(real-time)

### Example
```javascript
var BybitApi = require('bybit_api');
var defaultClient = BybitApi.ApiClient.instance;

// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

// Configure API key authorization: apiSignature
var apiSignature = defaultClient.authentications['apiSignature'];
apiSignature.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.apiKeyPrefix = 'Token';

// Configure API key authorization: timestamp
var timestamp = defaultClient.authentications['timestamp'];
timestamp.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.apiKeyPrefix = 'Token';

var apiInstance = new BybitApi.LinearOrderApi();

var opts = { 
  'symbol': "symbol_example", // String | 
  'orderId': "orderId_example", // String | 
  'orderLinkId': "orderLinkId_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearOrderQuery(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **orderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearOrderReplace"></a>
# **linearOrderReplace**
> Object linearOrderReplace(symbol, opts)

Replace Active Order

### Example
```javascript
var BybitApi = require('bybit_api');
var defaultClient = BybitApi.ApiClient.instance;

// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

// Configure API key authorization: apiSignature
var apiSignature = defaultClient.authentications['apiSignature'];
apiSignature.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.apiKeyPrefix = 'Token';

// Configure API key authorization: timestamp
var timestamp = defaultClient.authentications['timestamp'];
timestamp.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.apiKeyPrefix = 'Token';

var apiInstance = new BybitApi.LinearOrderApi();

var symbol = "symbol_example"; // String | 

var opts = { 
  'orderId': "orderId_example", // String | 
  'orderLinkId': "orderLinkId_example", // String | 
  'pRQty': "pRQty_example", // String | 
  'pRPrice': 8.14 // Number | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearOrderReplace(symbol, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | 
 **orderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 
 **pRQty** | **String**|  | [optional] 
 **pRPrice** | **Number**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

