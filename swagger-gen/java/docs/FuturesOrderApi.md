# FuturesOrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futuresOrderCancel**](FuturesOrderApi.md#futuresOrderCancel) | **POST** /futures/private/order/cancel | Get my active order list.
[**futuresOrderCancelAll**](FuturesOrderApi.md#futuresOrderCancelAll) | **POST** /futures/private/order/cancelAll | Get my active order list.
[**futuresOrderGetOrders**](FuturesOrderApi.md#futuresOrderGetOrders) | **GET** /futures/private/order/list | Get my active order list.
[**futuresOrderNew**](FuturesOrderApi.md#futuresOrderNew) | **POST** /futures/private/order/create | Place active order
[**futuresOrderQuery**](FuturesOrderApi.md#futuresOrderQuery) | **GET** /futures/private/order | Get my active order list.
[**futuresOrderReplace**](FuturesOrderApi.md#futuresOrderReplace) | **POST** /futures/private/order/replace | Replace active order. Only incomplete orders can be modified. 


<a name="futuresOrderCancel"></a>
# **futuresOrderCancel**
> Object futuresOrderCancel(symbol, orderId, orderLinkId)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesOrderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

FuturesOrderApi apiInstance = new FuturesOrderApi();
String symbol = "symbol_example"; // String | Contract type.
String orderId = "orderId_example"; // String | Order ID
String orderLinkId = "orderLinkId_example"; // String | Order link id.
try {
    Object result = apiInstance.futuresOrderCancel(symbol, orderId, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesOrderApi#futuresOrderCancel");
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

<a name="futuresOrderCancelAll"></a>
# **futuresOrderCancelAll**
> Object futuresOrderCancelAll(symbol)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesOrderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

FuturesOrderApi apiInstance = new FuturesOrderApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.futuresOrderCancelAll(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesOrderApi#futuresOrderCancelAll");
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

<a name="futuresOrderGetOrders"></a>
# **futuresOrderGetOrders**
> Object futuresOrderGetOrders(symbol, limit, orderStatus, direction, cursor)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesOrderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

FuturesOrderApi apiInstance = new FuturesOrderApi();
String symbol = "symbol_example"; // String | Contract type. Default BTCUSD
BigDecimal limit = new BigDecimal(); // BigDecimal | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
String orderStatus = "orderStatus_example"; // String | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by
String direction = "direction_example"; // String | Search direction. prev: prev page, next: next page. Defaults to next
String cursor = "cursor_example"; // String | cursor is a unique identifier for a specific record, which acts as a pointer to the next record we want to start querying from to get the next page of results
try {
    Object result = apiInstance.futuresOrderGetOrders(symbol, limit, orderStatus, direction, cursor);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesOrderApi#futuresOrderGetOrders");
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
 **cursor** | **String**| cursor is a unique identifier for a specific record, which acts as a pointer to the next record we want to start querying from to get the next page of results | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresOrderNew"></a>
# **futuresOrderNew**
> Object futuresOrderNew(side, symbol, orderType, qty, timeInForce, price, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId)

Place active order

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesOrderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

FuturesOrderApi apiInstance = new FuturesOrderApi();
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
    Object result = apiInstance.futuresOrderNew(side, symbol, orderType, qty, timeInForce, price, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesOrderApi#futuresOrderNew");
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

<a name="futuresOrderQuery"></a>
# **futuresOrderQuery**
> Object futuresOrderQuery(orderId, symbol, orderLinkId)

Get my active order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesOrderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

FuturesOrderApi apiInstance = new FuturesOrderApi();
String orderId = "orderId_example"; // String | Order ID
String symbol = "symbol_example"; // String | Contract type. Default BTCUSD
String orderLinkId = "orderLinkId_example"; // String | Agency customized order ID
try {
    Object result = apiInstance.futuresOrderQuery(orderId, symbol, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesOrderApi#futuresOrderQuery");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | [optional]
 **symbol** | **String**| Contract type. Default BTCUSD | [optional]
 **orderLinkId** | **String**| Agency customized order ID | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresOrderReplace"></a>
# **futuresOrderReplace**
> Object futuresOrderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice)

Replace active order. Only incomplete orders can be modified. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesOrderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKey
ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
apiKey.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.setApiKeyPrefix("Token");

// Configure API key authorization: apiSignature
ApiKeyAuth apiSignature = (ApiKeyAuth) defaultClient.getAuthentication("apiSignature");
apiSignature.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiSignature.setApiKeyPrefix("Token");

// Configure API key authorization: timestamp
ApiKeyAuth timestamp = (ApiKeyAuth) defaultClient.getAuthentication("timestamp");
timestamp.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//timestamp.setApiKeyPrefix("Token");

FuturesOrderApi apiInstance = new FuturesOrderApi();
String symbol = "symbol_example"; // String | Contract type.
String orderId = "orderId_example"; // String | Order ID.
String orderLinkId = "orderLinkId_example"; // String | Order Link ID.
String pRQty = "pRQty_example"; // String | Order quantity.
String pRPrice = "pRPrice_example"; // String | Order price.
try {
    Object result = apiInstance.futuresOrderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesOrderApi#futuresOrderReplace");
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

