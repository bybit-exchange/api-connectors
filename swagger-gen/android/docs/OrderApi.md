# OrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderCancel**](OrderApi.md#orderCancel) | **POST** /v2/private/order/cancel | Get my active order list.
[**orderCancelAll**](OrderApi.md#orderCancelAll) | **POST** /v2/private/order/cancelAll | Get my active order list.
[**orderGetOrders**](OrderApi.md#orderGetOrders) | **GET** /v2/private/order/list | Get my active order list.
[**orderNew**](OrderApi.md#orderNew) | **POST** /v2/private/order/create | Place active order
[**orderQuery**](OrderApi.md#orderQuery) | **GET** /v2/private/order | Get my active order list.
[**orderReplace**](OrderApi.md#orderReplace) | **POST** /v2/private/order/replace | Replace active order. Only incomplete orders can be modified. 


<a name="orderCancel"></a>
# **orderCancel**
> Object orderCancel(symbol, orderId, orderLinkId)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.api.OrderApi;

OrderApi apiInstance = new OrderApi();
String symbol = "symbol_example"; // String | Contract type.
String orderId = "orderId_example"; // String | Order ID
String orderLinkId = "orderLinkId_example"; // String | Order link id.
try {
    Object result = apiInstance.orderCancel(symbol, orderId, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderCancel");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **orderId** | **String**| Order ID | [optional]
 **orderLinkId** | **String**| Order link id. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderCancelAll"></a>
# **orderCancelAll**
> Object orderCancelAll(symbol)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.api.OrderApi;

OrderApi apiInstance = new OrderApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.orderCancelAll(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderCancelAll");
    e.printStackTrace();
}
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

<a name="orderGetOrders"></a>
# **orderGetOrders**
> Object orderGetOrders(symbol, limit, orderStatus, direction, cursor)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.api.OrderApi;

OrderApi apiInstance = new OrderApi();
String symbol = "symbol_example"; // String | Contract type. Default BTCUSD
BigDecimal limit = new BigDecimal(); // BigDecimal | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
String orderStatus = "orderStatus_example"; // String | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by
String direction = "direction_example"; // String | Search direction. prev: prev page, next: next page. Defaults to next
String cursor = "cursor_example"; // String | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode
try {
    Object result = apiInstance.orderGetOrders(symbol, limit, orderStatus, direction, cursor);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderGetOrders");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. Default BTCUSD |
 **limit** | **BigDecimal**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional]
 **orderStatus** | **String**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional]
 **direction** | **String**| Search direction. prev: prev page, next: next page. Defaults to next | [optional]
 **cursor** | **String**| Page turning mark，Use return cursor,Sign use origin data, in request please urlencode | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderNew"></a>
# **orderNew**
> Object orderNew(side, symbol, orderType, qty, timeInForce, price, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId)

Place active order

### Example
```java
// Import classes:
//import io.swagger.client.api.OrderApi;

OrderApi apiInstance = new OrderApi();
String side = "side_example"; // String | Side
String symbol = "symbol_example"; // String | Contract type.
String orderType = "orderType_example"; // String | Active order type
BigDecimal qty = new BigDecimal(); // BigDecimal | 
String timeInForce = "timeInForce_example"; // String | Time in force
Double price = 3.4D; // Double | Order price.
Double takeProfit = 3.4D; // Double | take profit price
Double stopLoss = 3.4D; // Double | stop loss price
Boolean reduceOnly = true; // Boolean | reduce only
Boolean closeOnTrigger = true; // Boolean | close on trigger
String orderLinkId = "orderLinkId_example"; // String | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
try {
    Object result = apiInstance.orderNew(side, symbol, orderType, qty, timeInForce, price, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderNew");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side |
 **symbol** | **String**| Contract type. |
 **orderType** | **String**| Active order type |
 **qty** | **BigDecimal**|  |
 **timeInForce** | **String**| Time in force |
 **price** | **Double**| Order price. | [optional]
 **takeProfit** | **Double**| take profit price | [optional]
 **stopLoss** | **Double**| stop loss price | [optional]
 **reduceOnly** | **Boolean**| reduce only | [optional]
 **closeOnTrigger** | **Boolean**| close on trigger | [optional]
 **orderLinkId** | **String**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="orderQuery"></a>
# **orderQuery**
> Object orderQuery(orderId, symbol)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.api.OrderApi;

OrderApi apiInstance = new OrderApi();
String orderId = "orderId_example"; // String | Order ID
String symbol = "symbol_example"; // String | Contract type. Default BTCUSD
try {
    Object result = apiInstance.orderQuery(orderId, symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderQuery");
    e.printStackTrace();
}
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
> Object orderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice)

Replace active order. Only incomplete orders can be modified. 

### Example
```java
// Import classes:
//import io.swagger.client.api.OrderApi;

OrderApi apiInstance = new OrderApi();
String symbol = "symbol_example"; // String | Contract type.
String orderId = "orderId_example"; // String | Order ID.
String orderLinkId = "orderLinkId_example"; // String | Order Link ID.
String pRQty = "pRQty_example"; // String | Order quantity.
String pRPrice = "pRPrice_example"; // String | Order price.
try {
    Object result = apiInstance.orderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderReplace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **orderId** | **String**| Order ID. | [optional]
 **orderLinkId** | **String**| Order Link ID. | [optional]
 **pRQty** | **String**| Order quantity. | [optional]
 **pRPrice** | **String**| Order price. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

