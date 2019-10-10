# OrderApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderCancel**](OrderApi.md#orderCancel) | **POST** /open-api/order/cancel | Get my active order list.
[**orderGetOrders**](OrderApi.md#orderGetOrders) | **GET** /open-api/order/list | Get my active order list.
[**orderNew**](OrderApi.md#orderNew) | **POST** /open-api/order/create | Place active order


<a name="orderCancel"></a>
# **orderCancel**
> Object orderCancel(orderId, symbol)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.OrderApi;


OrderApi apiInstance = new OrderApi();
String orderId = "orderId_example"; // String | Order ID
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.orderCancel(orderId, symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderCancel");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID |
 **symbol** | **String**| Contract type. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="orderGetOrders"></a>
# **orderGetOrders**
> Object orderGetOrders(orderId, orderLinkId, symbol, order, page, limit, orderStatus)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.OrderApi;


OrderApi apiInstance = new OrderApi();
String orderId = "orderId_example"; // String | Order ID
String orderLinkId = "orderLinkId_example"; // String | Customized order ID.
String symbol = "symbol_example"; // String | Contract type. Default BTCUSD
String order = "order_example"; // String | Sort orders by creation date
BigDecimal page = new BigDecimal(); // BigDecimal | Page. Default getting first page data
BigDecimal limit = new BigDecimal(); // BigDecimal | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
String orderStatus = "orderStatus_example"; // String | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by
try {
    Object result = apiInstance.orderGetOrders(orderId, orderLinkId, symbol, order, page, limit, orderStatus);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#orderGetOrders");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | [optional]
 **orderLinkId** | **String**| Customized order ID. | [optional]
 **symbol** | **String**| Contract type. Default BTCUSD | [optional]
 **order** | **String**| Sort orders by creation date | [optional]
 **page** | **BigDecimal**| Page. Default getting first page data | [optional]
 **limit** | **BigDecimal**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional]
 **orderStatus** | **String**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="orderNew"></a>
# **orderNew**
> Object orderNew(side, symbol, orderType, qty, price, timeInForce, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId)

Place active order

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.OrderApi;


OrderApi apiInstance = new OrderApi();
String side = "side_example"; // String | Side
String symbol = "symbol_example"; // String | Contract type.
String orderType = "orderType_example"; // String | Active order type
BigDecimal qty = new BigDecimal(); // BigDecimal | 
Double price = 3.4D; // Double | Order price.
String timeInForce = "timeInForce_example"; // String | Time in force
Double takeProfit = 3.4D; // Double | take profit price
Double stopLoss = 3.4D; // Double | stop loss price
Boolean reduceOnly = true; // Boolean | reduce only
Boolean closeOnTrigger = true; // Boolean | close on trigger
String orderLinkId = "orderLinkId_example"; // String | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
try {
    Object result = apiInstance.orderNew(side, symbol, orderType, qty, price, timeInForce, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId);
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
 **price** | **Double**| Order price. |
 **timeInForce** | **String**| Time in force |
 **takeProfit** | **Double**| take profit price | [optional]
 **stopLoss** | **Double**| stop loss price | [optional]
 **reduceOnly** | **Boolean**| reduce only | [optional]
 **closeOnTrigger** | **Boolean**| close on trigger | [optional]
 **orderLinkId** | **String**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

