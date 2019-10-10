# BybitApi.ConditionalApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](ConditionalApi.md#conditionalCancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**conditionalGetOrders**](ConditionalApi.md#conditionalGetOrders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**conditionalNew**](ConditionalApi.md#conditionalNew) | **POST** /open-api/stop-order/create | Place a new conditional order.


<a name="conditionalCancel"></a>
# **conditionalCancel**
> Object conditionalCancel(stopOrderId)

Cancel conditional order.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.ConditionalApi();

var stopOrderId = "stopOrderId_example"; // String | Order ID of conditional order.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.conditionalCancel(stopOrderId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **String**| Order ID of conditional order. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="conditionalGetOrders"></a>
# **conditionalGetOrders**
> Object conditionalGetOrders(opts)

Get my conditional order list.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.ConditionalApi();

var opts = { 
  'stopOrderId': "stopOrderId_example", // String | Order ID of conditional order.
  'orderLinkId': "orderLinkId_example", // String | Agency customized order ID.
  'symbol': "symbol_example", // String | Contract type. Default BTCUSD.
  'order': "order_example", // String | Sort orders by creation date
  'page': 8.14, // Number | Page. Default getting first page data
  'limit': 8.14 // Number | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.conditionalGetOrders(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **String**| Order ID of conditional order. | [optional] 
 **orderLinkId** | **String**| Agency customized order ID. | [optional] 
 **symbol** | **String**| Contract type. Default BTCUSD. | [optional] 
 **order** | **String**| Sort orders by creation date | [optional] 
 **page** | **Number**| Page. Default getting first page data | [optional] 
 **limit** | **Number**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="conditionalNew"></a>
# **conditionalNew**
> Object conditionalNew(side, symbol, orderType, qty, price, basePrice, stopPx, timeInForce, opts)

Place a new conditional order.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.ConditionalApi();

var side = "side_example"; // String | Side.

var symbol = "symbol_example"; // String | Contract type.

var orderType = "orderType_example"; // String | Conditional order type.

var qty = 8.14; // Number | Order quantity.

var price = 1.2; // Number | Execution price for conditional order

var basePrice = 1.2; // Number | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..

var stopPx = 1.2; // Number | Trigger price.

var timeInForce = "timeInForce_example"; // String | Time in force.

var opts = { 
  'closeOnTrigger': true, // Boolean | close on trigger.
  'orderLinkId': "orderLinkId_example" // String | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.conditionalNew(side, symbol, orderType, qty, price, basePrice, stopPx, timeInForce, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side. | 
 **symbol** | **String**| Contract type. | 
 **orderType** | **String**| Conditional order type. | 
 **qty** | **Number**| Order quantity. | 
 **price** | **Number**| Execution price for conditional order | 
 **basePrice** | **Number**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stopPx** | **Number**| Trigger price. | 
 **timeInForce** | **String**| Time in force. | 
 **closeOnTrigger** | **Boolean**| close on trigger. | [optional] 
 **orderLinkId** | **String**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

