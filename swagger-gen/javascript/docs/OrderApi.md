# BybitApi.OrderApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderCancel**](OrderApi.md#orderCancel) | **POST** /open-api/order/cancel | Get my active order list.
[**orderCancelAll**](OrderApi.md#orderCancelAll) | **POST** /v2/private/order/cancelAll | Get my active order list.
[**orderCancelV2**](OrderApi.md#orderCancelV2) | **POST** /v2/private/order/cancel | Get my active order list.
[**orderGetOrders**](OrderApi.md#orderGetOrders) | **GET** /open-api/order/list | Get my active order list.
[**orderNew**](OrderApi.md#orderNew) | **POST** /open-api/order/create | Place active order
[**orderNewV2**](OrderApi.md#orderNewV2) | **POST** /v2/private/order/create | Place active order
[**orderQuery**](OrderApi.md#orderQuery) | **GET** /v2/private/order | Get my active order list.
[**orderReplace**](OrderApi.md#orderReplace) | **POST** /open-api/order/replace | Replace active order. Only incomplete orders can be modified. 


<a name="orderCancel"></a>
# **orderCancel**
> Object orderCancel(orderId, opts)

Get my active order list.

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

var apiInstance = new BybitApi.OrderApi();

var orderId = "orderId_example"; // String | Order ID

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
apiInstance.orderCancel(orderId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | 
 **symbol** | **String**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderCancelAll"></a>
# **orderCancelAll**
> Object orderCancelAll(symbol)

Get my active order list.

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

var apiInstance = new BybitApi.OrderApi();

var symbol = "symbol_example"; // String | Contract type.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.orderCancelAll(symbol, callback);
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderCancelV2"></a>
# **orderCancelV2**
> Object orderCancelV2(opts)

Get my active order list.

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

var apiInstance = new BybitApi.OrderApi();

var opts = { 
  'orderId': "orderId_example", // String | Order ID
  'symbol': "symbol_example", // String | Contract type.
  'orderLinkId': "orderLinkId_example" // String | Order link id.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.orderCancelV2(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | [optional] 
 **symbol** | **String**| Contract type. | [optional] 
 **orderLinkId** | **String**| Order link id. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderGetOrders"></a>
# **orderGetOrders**
> Object orderGetOrders(opts)

Get my active order list.

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

var apiInstance = new BybitApi.OrderApi();

var opts = { 
  'orderId': "orderId_example", // String | Order ID
  'orderLinkId': "orderLinkId_example", // String | Customized order ID.
  'symbol': "symbol_example", // String | Contract type. Default BTCUSD
  'order': "order_example", // String | Sort orders by creation date
  'page': 8.14, // Number | Page. Default getting first page data
  'limit': 8.14, // Number | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
  'orderStatus': "orderStatus_example" // String | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.orderGetOrders(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | [optional] 
 **orderLinkId** | **String**| Customized order ID. | [optional] 
 **symbol** | **String**| Contract type. Default BTCUSD | [optional] 
 **order** | **String**| Sort orders by creation date | [optional] 
 **page** | **Number**| Page. Default getting first page data | [optional] 
 **limit** | **Number**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **orderStatus** | **String**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderNew"></a>
# **orderNew**
> Object orderNew(side, symbol, orderType, qty, price, timeInForce, opts)

Place active order

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

var apiInstance = new BybitApi.OrderApi();

var side = "side_example"; // String | Side

var symbol = "symbol_example"; // String | Contract type.

var orderType = "orderType_example"; // String | Active order type

var qty = 8.14; // Number | 

var price = 1.2; // Number | Order price.

var timeInForce = "timeInForce_example"; // String | Time in force

var opts = { 
  'takeProfit': 1.2, // Number | take profit price
  'stopLoss': 1.2, // Number | stop loss price
  'reduceOnly': true, // Boolean | reduce only
  'closeOnTrigger': true, // Boolean | close on trigger
  'orderLinkId': "orderLinkId_example" // String | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.orderNew(side, symbol, orderType, qty, price, timeInForce, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side | 
 **symbol** | **String**| Contract type. | 
 **orderType** | **String**| Active order type | 
 **qty** | **Number**|  | 
 **price** | **Number**| Order price. | 
 **timeInForce** | **String**| Time in force | 
 **takeProfit** | **Number**| take profit price | [optional] 
 **stopLoss** | **Number**| stop loss price | [optional] 
 **reduceOnly** | **Boolean**| reduce only | [optional] 
 **closeOnTrigger** | **Boolean**| close on trigger | [optional] 
 **orderLinkId** | **String**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderNewV2"></a>
# **orderNewV2**
> Object orderNewV2(side, symbol, orderType, qty, price, timeInForce, opts)

Place active order

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

var apiInstance = new BybitApi.OrderApi();

var side = "side_example"; // String | Side

var symbol = "symbol_example"; // String | Contract type.

var orderType = "orderType_example"; // String | Active order type

var qty = 8.14; // Number | 

var price = 1.2; // Number | Order price.

var timeInForce = "timeInForce_example"; // String | Time in force

var opts = { 
  'takeProfit': 1.2, // Number | take profit price
  'stopLoss': 1.2, // Number | stop loss price
  'reduceOnly': true, // Boolean | reduce only
  'closeOnTrigger': true, // Boolean | close on trigger
  'orderLinkId': "orderLinkId_example", // String | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
  'trailingStop': "trailingStop_example" // String | Trailing stop.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.orderNewV2(side, symbol, orderType, qty, price, timeInForce, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side | 
 **symbol** | **String**| Contract type. | 
 **orderType** | **String**| Active order type | 
 **qty** | **Number**|  | 
 **price** | **Number**| Order price. | 
 **timeInForce** | **String**| Time in force | 
 **takeProfit** | **Number**| take profit price | [optional] 
 **stopLoss** | **Number**| stop loss price | [optional] 
 **reduceOnly** | **Boolean**| reduce only | [optional] 
 **closeOnTrigger** | **Boolean**| close on trigger | [optional] 
 **orderLinkId** | **String**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 
 **trailingStop** | **String**| Trailing stop. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderQuery"></a>
# **orderQuery**
> Object orderQuery(opts)

Get my active order list.

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

var apiInstance = new BybitApi.OrderApi();

var opts = { 
  'orderId': "orderId_example", // String | Order ID
  'symbol': "symbol_example" // String | Contract type. Default BTCUSD
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.orderQuery(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | [optional] 
 **symbol** | **String**| Contract type. Default BTCUSD | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderReplace"></a>
# **orderReplace**
> Object orderReplace(orderId, symbol, opts)

Replace active order. Only incomplete orders can be modified. 

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

var apiInstance = new BybitApi.OrderApi();

var orderId = "orderId_example"; // String | Order ID.

var symbol = "symbol_example"; // String | Contract type.

var opts = { 
  'pRQty': 8.14, // Number | Order quantity.
  'pRPrice': 1.2 // Number | Order price.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.orderReplace(orderId, symbol, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID. | 
 **symbol** | **String**| Contract type. | 
 **pRQty** | **Number**| Order quantity. | [optional] 
 **pRPrice** | **Number**| Order price. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

