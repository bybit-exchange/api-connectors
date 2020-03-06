# ConditionalApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](ConditionalApi.md#conditionalCancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**conditionalCancelAll**](ConditionalApi.md#conditionalCancelAll) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditionalGetOrders**](ConditionalApi.md#conditionalGetOrders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**conditionalNew**](ConditionalApi.md#conditionalNew) | **POST** /open-api/stop-order/create | Place a new conditional order.
[**conditionalReplace**](ConditionalApi.md#conditionalReplace) | **POST** /open-api/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


<a name="conditionalCancel"></a>
# **conditionalCancel**
> Object conditionalCancel(stopOrderId)

Cancel conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.api.ConditionalApi;

ConditionalApi apiInstance = new ConditionalApi();
String stopOrderId = "stopOrderId_example"; // String | Order ID of conditional order.
try {
    Object result = apiInstance.conditionalCancel(stopOrderId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalCancel");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **String**| Order ID of conditional order. |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="conditionalCancelAll"></a>
# **conditionalCancelAll**
> Object conditionalCancelAll(symbol)

Cancel conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.api.ConditionalApi;

ConditionalApi apiInstance = new ConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.conditionalCancelAll(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalCancelAll");
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="conditionalGetOrders"></a>
# **conditionalGetOrders**
> Object conditionalGetOrders(stopOrderId, orderLinkId, symbol, order, page, limit)

Get my conditional order list.

### Example
```java
// Import classes:
//import io.swagger.client.api.ConditionalApi;

ConditionalApi apiInstance = new ConditionalApi();
String stopOrderId = "stopOrderId_example"; // String | Order ID of conditional order.
String orderLinkId = "orderLinkId_example"; // String | Agency customized order ID.
String symbol = "symbol_example"; // String | Contract type. Default BTCUSD.
String order = "order_example"; // String | Sort orders by creation date
BigDecimal page = new BigDecimal(); // BigDecimal | Page. Default getting first page data
BigDecimal limit = new BigDecimal(); // BigDecimal | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
try {
    Object result = apiInstance.conditionalGetOrders(stopOrderId, orderLinkId, symbol, order, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalGetOrders");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **String**| Order ID of conditional order. | [optional]
 **orderLinkId** | **String**| Agency customized order ID. | [optional]
 **symbol** | **String**| Contract type. Default BTCUSD. | [optional]
 **order** | **String**| Sort orders by creation date | [optional]
 **page** | **BigDecimal**| Page. Default getting first page data | [optional]
 **limit** | **BigDecimal**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="conditionalNew"></a>
# **conditionalNew**
> Object conditionalNew(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, price, triggerBy, closeOnTrigger, orderLinkId)

Place a new conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.api.ConditionalApi;

ConditionalApi apiInstance = new ConditionalApi();
String side = "side_example"; // String | Side.
String symbol = "symbol_example"; // String | Contract type.
String orderType = "orderType_example"; // String | Conditional order type.
BigDecimal qty = new BigDecimal(); // BigDecimal | Order quantity.
Double basePrice = 3.4D; // Double | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
Double stopPx = 3.4D; // Double | Trigger price.
String timeInForce = "timeInForce_example"; // String | Time in force.
Double price = 3.4D; // Double | Execution price for conditional order
String triggerBy = "triggerBy_example"; // String | Trigger price type. Default LastPrice.
Boolean closeOnTrigger = true; // Boolean | close on trigger.
String orderLinkId = "orderLinkId_example"; // String | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..
try {
    Object result = apiInstance.conditionalNew(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, price, triggerBy, closeOnTrigger, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalNew");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side. |
 **symbol** | **String**| Contract type. |
 **orderType** | **String**| Conditional order type. |
 **qty** | **BigDecimal**| Order quantity. |
 **basePrice** | **Double**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. |
 **stopPx** | **Double**| Trigger price. |
 **timeInForce** | **String**| Time in force. |
 **price** | **Double**| Execution price for conditional order | [optional]
 **triggerBy** | **String**| Trigger price type. Default LastPrice. | [optional]
 **closeOnTrigger** | **Boolean**| close on trigger. | [optional]
 **orderLinkId** | **String**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="conditionalReplace"></a>
# **conditionalReplace**
> Object conditionalReplace(symbol, stopOrderId, orderId, pRQty, pRPrice, pRTriggerPrice)

Replace conditional order. Only incomplete orders can be modified. 

### Example
```java
// Import classes:
//import io.swagger.client.api.ConditionalApi;

ConditionalApi apiInstance = new ConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
String stopOrderId = "stopOrderId_example"; // String | Stop order ID.
String orderId = "orderId_example"; // String | Stop order ID.
BigDecimal pRQty = new BigDecimal(); // BigDecimal | Order quantity.
Double pRPrice = 3.4D; // Double | Order price.
Double pRTriggerPrice = 3.4D; // Double | Trigger price.
try {
    Object result = apiInstance.conditionalReplace(symbol, stopOrderId, orderId, pRQty, pRPrice, pRTriggerPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalReplace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **stopOrderId** | **String**| Stop order ID. | [optional]
 **orderId** | **String**| Stop order ID. | [optional]
 **pRQty** | **BigDecimal**| Order quantity. | [optional]
 **pRPrice** | **Double**| Order price. | [optional]
 **pRTriggerPrice** | **Double**| Trigger price. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

