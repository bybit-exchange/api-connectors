# LinearOrderApi

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
> Object linearOrderCancel(orderId, orderLinkId, symbol)

Cancel Active Order

This will cancel linear active order

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearOrderApi;

LinearOrderApi apiInstance = new LinearOrderApi();
String orderId = "orderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
String symbol = "symbol_example"; // String | 
try {
    Object result = apiInstance.linearOrderCancel(orderId, orderLinkId, symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearOrderApi#linearOrderCancel");
    e.printStackTrace();
}
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
```java
// Import classes:
//import io.swagger.client.api.LinearOrderApi;

LinearOrderApi apiInstance = new LinearOrderApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.linearOrderCancelAll(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearOrderApi#linearOrderCancelAll");
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

<a name="linearOrderGetOrders"></a>
# **linearOrderGetOrders**
> Object linearOrderGetOrders(orderId, orderLinkId, symbol, order, page, limit, orderStatus)

Get linear Active Orders

This will get linear active orders

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearOrderApi;

LinearOrderApi apiInstance = new LinearOrderApi();
String orderId = "orderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
String symbol = "symbol_example"; // String | 
String order = "order_example"; // String | 
String page = "page_example"; // String | 
String limit = "limit_example"; // String | 
String orderStatus = "orderStatus_example"; // String | 
try {
    Object result = apiInstance.linearOrderGetOrders(orderId, orderLinkId, symbol, order, page, limit, orderStatus);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearOrderApi#linearOrderGetOrders");
    e.printStackTrace();
}
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
> Object linearOrderNew(symbol, side, orderType, timeInForce, qty, price, takeProfit, stopLoss, reduceOnly, tpTriggerBy, slTriggerBy, closeOnTrigger, orderLinkId)

Create Active Order

This will create linear order

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearOrderApi;

LinearOrderApi apiInstance = new LinearOrderApi();
String symbol = "symbol_example"; // String | 
String side = "side_example"; // String | 
String orderType = "orderType_example"; // String | 
String timeInForce = "timeInForce_example"; // String | 
Double qty = 3.4D; // Double | 
Double price = 3.4D; // Double | 
Double takeProfit = 3.4D; // Double | 
Double stopLoss = 3.4D; // Double | 
Boolean reduceOnly = true; // Boolean | 
String tpTriggerBy = "tpTriggerBy_example"; // String | 
String slTriggerBy = "slTriggerBy_example"; // String | 
Boolean closeOnTrigger = true; // Boolean | 
String orderLinkId = "orderLinkId_example"; // String | 
try {
    Object result = apiInstance.linearOrderNew(symbol, side, orderType, timeInForce, qty, price, takeProfit, stopLoss, reduceOnly, tpTriggerBy, slTriggerBy, closeOnTrigger, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearOrderApi#linearOrderNew");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **side** | **String**|  | [optional]
 **orderType** | **String**|  | [optional]
 **timeInForce** | **String**|  | [optional]
 **qty** | **Double**|  | [optional]
 **price** | **Double**|  | [optional]
 **takeProfit** | **Double**|  | [optional]
 **stopLoss** | **Double**|  | [optional]
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
> Object linearOrderQuery(symbol, orderId, orderLinkId)

Get Active Orders(real-time)

This will get linear active orders(real-time)

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearOrderApi;

LinearOrderApi apiInstance = new LinearOrderApi();
String symbol = "symbol_example"; // String | 
String orderId = "orderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
try {
    Object result = apiInstance.linearOrderQuery(symbol, orderId, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearOrderApi#linearOrderQuery");
    e.printStackTrace();
}
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
> Object linearOrderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice)

Replace Active Order

### Example
```java
// Import classes:
//import io.swagger.client.api.LinearOrderApi;

LinearOrderApi apiInstance = new LinearOrderApi();
String symbol = "symbol_example"; // String | 
String orderId = "orderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
String pRQty = "pRQty_example"; // String | 
BigDecimal pRPrice = new BigDecimal(); // BigDecimal | 
try {
    Object result = apiInstance.linearOrderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearOrderApi#linearOrderReplace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  |
 **orderId** | **String**|  | [optional]
 **orderLinkId** | **String**|  | [optional]
 **pRQty** | **String**|  | [optional]
 **pRPrice** | **BigDecimal**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

