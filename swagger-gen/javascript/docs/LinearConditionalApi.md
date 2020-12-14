# BybitApi.LinearConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearConditionalCancel**](LinearConditionalApi.md#linearConditionalCancel) | **POST** /private/linear/stop-order/cancel | Cancel Active Order
[**linearConditionalCancelAll**](LinearConditionalApi.md#linearConditionalCancelAll) | **POST** /private/linear/stop-order/cancel-all | Cancel all stop orders.
[**linearConditionalGetOrders**](LinearConditionalApi.md#linearConditionalGetOrders) | **GET** /private/linear/stop-order/list | Get linear Stop Orders
[**linearConditionalNew**](LinearConditionalApi.md#linearConditionalNew) | **POST** /private/linear/stop-order/create | Create linear stop Order
[**linearConditionalQuery**](LinearConditionalApi.md#linearConditionalQuery) | **GET** /private/linear/stop-order/search | Get Stop Orders(real-time)
[**linearConditionalReplace**](LinearConditionalApi.md#linearConditionalReplace) | **POST** /private/linear/stop-order/replace | Replace conditional order


<a name="linearConditionalCancel"></a>
# **linearConditionalCancel**
> Object linearConditionalCancel(opts)

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

var apiInstance = new BybitApi.LinearConditionalApi();

var opts = { 
  'stopOrderId': "stopOrderId_example", // String | 
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
apiInstance.linearConditionalCancel(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearConditionalCancelAll"></a>
# **linearConditionalCancelAll**
> Object linearConditionalCancelAll(symbol)

Cancel all stop orders.

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

var apiInstance = new BybitApi.LinearConditionalApi();

var symbol = "symbol_example"; // String | Contract type.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearConditionalCancelAll(symbol, callback);
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

<a name="linearConditionalGetOrders"></a>
# **linearConditionalGetOrders**
> Object linearConditionalGetOrders(opts)

Get linear Stop Orders

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

var apiInstance = new BybitApi.LinearConditionalApi();

var opts = { 
  'stopOrderId': "stopOrderId_example", // String | 
  'orderLinkId': "orderLinkId_example", // String | 
  'symbol': "symbol_example", // String | 
  'order': "order_example", // String | 
  'page': "page_example", // String | 
  'limit': "limit_example", // String | 
  'stopOrderStatus': "stopOrderStatus_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearConditionalGetOrders(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 
 **order** | **String**|  | [optional] 
 **page** | **String**|  | [optional] 
 **limit** | **String**|  | [optional] 
 **stopOrderStatus** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearConditionalNew"></a>
# **linearConditionalNew**
> Object linearConditionalNew(opts)

Create linear stop Order

This will create linear stop order

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

var apiInstance = new BybitApi.LinearConditionalApi();

var opts = { 
  'symbol': "symbol_example", // String | 
  'side': "side_example", // String | 
  'orderType': "orderType_example", // String | 
  'qty': 1.2, // Number | 
  'price': 1.2, // Number | 
  'basePrice': 1.2, // Number | 
  'stopPx': 1.2, // Number | 
  'timeInForce': "timeInForce_example", // String | 
  'triggerBy': "triggerBy_example", // String | 
  'reduceOnly': true, // Boolean | 
  'closeOnTrigger': true, // Boolean | 
  'orderLinkId': "orderLinkId_example", // String | 
  'takeProfit': 1.2, // Number | 
  'stopLoss': 1.2, // Number | 
  'tpTriggerBy': "tpTriggerBy_example", // String | 
  'slTriggerBy': "slTriggerBy_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearConditionalNew(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **side** | **String**|  | [optional] 
 **orderType** | **String**|  | [optional] 
 **qty** | **Number**|  | [optional] 
 **price** | **Number**|  | [optional] 
 **basePrice** | **Number**|  | [optional] 
 **stopPx** | **Number**|  | [optional] 
 **timeInForce** | **String**|  | [optional] 
 **triggerBy** | **String**|  | [optional] 
 **reduceOnly** | **Boolean**|  | [optional] 
 **closeOnTrigger** | **Boolean**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 
 **takeProfit** | **Number**|  | [optional] 
 **stopLoss** | **Number**|  | [optional] 
 **tpTriggerBy** | **String**|  | [optional] 
 **slTriggerBy** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearConditionalQuery"></a>
# **linearConditionalQuery**
> Object linearConditionalQuery(opts)

Get Stop Orders(real-time)

This will get linear stop orders(real-time)

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

var apiInstance = new BybitApi.LinearConditionalApi();

var opts = { 
  'symbol': "symbol_example", // String | 
  'stopOrderId': "stopOrderId_example", // String | 
  'orderLinkId': "orderLinkId_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearConditionalQuery(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional] 
 **stopOrderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="linearConditionalReplace"></a>
# **linearConditionalReplace**
> Object linearConditionalReplace(symbol, opts)

Replace conditional order

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

var apiInstance = new BybitApi.LinearConditionalApi();

var symbol = "symbol_example"; // String | 

var opts = { 
  'stopOrderId': "stopOrderId_example", // String | 
  'orderLinkId': "orderLinkId_example", // String | 
  'pRQty': "pRQty_example", // String | 
  'pRPrice': 8.14, // Number | 
  'pRTriggerPrice': 8.14 // Number | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.linearConditionalReplace(symbol, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | 
 **stopOrderId** | **String**|  | [optional] 
 **orderLinkId** | **String**|  | [optional] 
 **pRQty** | **String**|  | [optional] 
 **pRPrice** | **Number**|  | [optional] 
 **pRTriggerPrice** | **Number**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

