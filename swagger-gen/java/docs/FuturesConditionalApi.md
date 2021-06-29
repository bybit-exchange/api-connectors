# FuturesConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futuresConditionalCancel**](FuturesConditionalApi.md#futuresConditionalCancel) | **POST** /futures/private/stop-order/cancel | Cancel conditional order.
[**futuresConditionalCancelAll**](FuturesConditionalApi.md#futuresConditionalCancelAll) | **POST** /futures/private/stop-order/cancelAll | Cancel conditional order.
[**futuresConditionalGetOrders**](FuturesConditionalApi.md#futuresConditionalGetOrders) | **GET** /futures/private/stop-order/list | Get my conditional order list.
[**futuresConditionalNew**](FuturesConditionalApi.md#futuresConditionalNew) | **POST** /futures/private/stop-order/create | Place a new conditional order.
[**futuresConditionalQuery**](FuturesConditionalApi.md#futuresConditionalQuery) | **GET** /futures/private/stop-order | Query real-time stop order information.
[**futuresConditionalReplace**](FuturesConditionalApi.md#futuresConditionalReplace) | **POST** /futures/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


<a name="futuresConditionalCancel"></a>
# **futuresConditionalCancel**
> Object futuresConditionalCancel(symbol, stopOrderId, orderLinkId)

Cancel conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesConditionalApi;

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

FuturesConditionalApi apiInstance = new FuturesConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
String stopOrderId = "stopOrderId_example"; // String | Order ID of conditional order.
String orderLinkId = "orderLinkId_example"; // String | Agency customized order ID.
try {
    Object result = apiInstance.futuresConditionalCancel(symbol, stopOrderId, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesConditionalApi#futuresConditionalCancel");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **stopOrderId** | **String**| Order ID of conditional order. | [optional]
 **orderLinkId** | **String**| Agency customized order ID. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresConditionalCancelAll"></a>
# **futuresConditionalCancelAll**
> Object futuresConditionalCancelAll(symbol)

Cancel conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesConditionalApi;

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

FuturesConditionalApi apiInstance = new FuturesConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.futuresConditionalCancelAll(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesConditionalApi#futuresConditionalCancelAll");
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

<a name="futuresConditionalGetOrders"></a>
# **futuresConditionalGetOrders**
> Object futuresConditionalGetOrders(symbol, stopOrderStatus, limit, direction, cursor)

Get my conditional order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesConditionalApi;

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

FuturesConditionalApi apiInstance = new FuturesConditionalApi();
String symbol = "symbol_example"; // String | Contract type
String stopOrderStatus = "stopOrderStatus_example"; // String | Stop order status.
BigDecimal limit = new BigDecimal(); // BigDecimal | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
String direction = "direction_example"; // String | Search direction. prev: prev page, next: next page. Defaults to next
String cursor = "cursor_example"; // String | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode
try {
    Object result = apiInstance.futuresConditionalGetOrders(symbol, stopOrderStatus, limit, direction, cursor);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesConditionalApi#futuresConditionalGetOrders");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type |
 **stopOrderStatus** | **String**| Stop order status. | [optional]
 **limit** | **BigDecimal**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]
 **direction** | **String**| Search direction. prev: prev page, next: next page. Defaults to next | [optional]
 **cursor** | **String**| Page turning mark，Use return cursor,Sign use origin data, in request please urlencode | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresConditionalNew"></a>
# **futuresConditionalNew**
> Object futuresConditionalNew(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, price, triggerBy, closeOnTrigger, orderLinkId)

Place a new conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesConditionalApi;

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

FuturesConditionalApi apiInstance = new FuturesConditionalApi();
String side = "side_example"; // String | Side.
String symbol = "symbol_example"; // String | Contract type.
String orderType = "orderType_example"; // String | Conditional order type.
String qty = "qty_example"; // String | Order quantity.
String basePrice = "basePrice_example"; // String | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
String stopPx = "stopPx_example"; // String | Trigger price.
String timeInForce = "timeInForce_example"; // String | Time in force.
String price = "price_example"; // String | Execution price for conditional order
String triggerBy = "triggerBy_example"; // String | Trigger price type. Default LastPrice.
Boolean closeOnTrigger = true; // Boolean | close on trigger.
String orderLinkId = "orderLinkId_example"; // String | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..
try {
    Object result = apiInstance.futuresConditionalNew(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, price, triggerBy, closeOnTrigger, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesConditionalApi#futuresConditionalNew");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| Side. |
 **symbol** | **String**| Contract type. |
 **orderType** | **String**| Conditional order type. |
 **qty** | **String**| Order quantity. |
 **basePrice** | **String**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. |
 **stopPx** | **String**| Trigger price. |
 **timeInForce** | **String**| Time in force. |
 **price** | **String**| Execution price for conditional order | [optional]
 **triggerBy** | **String**| Trigger price type. Default LastPrice. | [optional]
 **closeOnTrigger** | **Boolean**| close on trigger. | [optional]
 **orderLinkId** | **String**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresConditionalQuery"></a>
# **futuresConditionalQuery**
> Object futuresConditionalQuery(stopOrderId, orderLinkId, symbol)

Query real-time stop order information.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesConditionalApi;

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

FuturesConditionalApi apiInstance = new FuturesConditionalApi();
String stopOrderId = "stopOrderId_example"; // String | Order ID of conditional order.
String orderLinkId = "orderLinkId_example"; // String | Agency customized order ID.
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.futuresConditionalQuery(stopOrderId, orderLinkId, symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesConditionalApi#futuresConditionalQuery");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **String**| Order ID of conditional order. | [optional]
 **orderLinkId** | **String**| Agency customized order ID. | [optional]
 **symbol** | **String**| Contract type. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="futuresConditionalReplace"></a>
# **futuresConditionalReplace**
> Object futuresConditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice)

Replace conditional order. Only incomplete orders can be modified. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FuturesConditionalApi;

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

FuturesConditionalApi apiInstance = new FuturesConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
String stopOrderId = "stopOrderId_example"; // String | Stop order ID.
String orderLinkId = "orderLinkId_example"; // String | Order Link ID.
String pRQty = "pRQty_example"; // String | Order quantity.
String pRPrice = "pRPrice_example"; // String | Order price.
String pRTriggerPrice = "pRTriggerPrice_example"; // String | Trigger price.
try {
    Object result = apiInstance.futuresConditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FuturesConditionalApi#futuresConditionalReplace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Contract type. |
 **stopOrderId** | **String**| Stop order ID. | [optional]
 **orderLinkId** | **String**| Order Link ID. | [optional]
 **pRQty** | **String**| Order quantity. | [optional]
 **pRPrice** | **String**| Order price. | [optional]
 **pRTriggerPrice** | **String**| Trigger price. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

