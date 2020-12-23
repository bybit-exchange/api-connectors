# ConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](ConditionalApi.md#conditionalCancel) | **POST** /v2/private/stop-order/cancel | Cancel conditional order.
[**conditionalCancelAll**](ConditionalApi.md#conditionalCancelAll) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditionalGetOrders**](ConditionalApi.md#conditionalGetOrders) | **GET** /v2/private/stop-order/list | Get my conditional order list.
[**conditionalNew**](ConditionalApi.md#conditionalNew) | **POST** /v2/private/stop-order/create | Place a new conditional order.
[**conditionalQuery**](ConditionalApi.md#conditionalQuery) | **GET** /v2/private/stop-order | Query real-time stop order information.
[**conditionalReplace**](ConditionalApi.md#conditionalReplace) | **POST** /v2/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


<a name="conditionalCancel"></a>
# **conditionalCancel**
> Object conditionalCancel(symbol, stopOrderId, orderLinkId)

Cancel conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ConditionalApi;

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

ConditionalApi apiInstance = new ConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
String stopOrderId = "stopOrderId_example"; // String | Order ID of conditional order.
String orderLinkId = "orderLinkId_example"; // String | Agency customized order ID.
try {
    Object result = apiInstance.conditionalCancel(symbol, stopOrderId, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalCancel");
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

<a name="conditionalCancelAll"></a>
# **conditionalCancelAll**
> Object conditionalCancelAll(symbol)

Cancel conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ConditionalApi;

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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="conditionalGetOrders"></a>
# **conditionalGetOrders**
> Object conditionalGetOrders(symbol, stopOrderStatus, limit, direction, cursor)

Get my conditional order list.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ConditionalApi;

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

ConditionalApi apiInstance = new ConditionalApi();
String symbol = "symbol_example"; // String | Contract type
String stopOrderStatus = "stopOrderStatus_example"; // String | Stop order status.
BigDecimal limit = new BigDecimal(); // BigDecimal | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
String direction = "direction_example"; // String | Search direction. prev: prev page, next: next page. Defaults to next
String cursor = "cursor_example"; // String | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode
try {
    Object result = apiInstance.conditionalGetOrders(symbol, stopOrderStatus, limit, direction, cursor);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalGetOrders");
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

<a name="conditionalNew"></a>
# **conditionalNew**
> Object conditionalNew(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, price, triggerBy, closeOnTrigger, orderLinkId)

Place a new conditional order.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ConditionalApi;

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

ConditionalApi apiInstance = new ConditionalApi();
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

<a name="conditionalQuery"></a>
# **conditionalQuery**
> Object conditionalQuery(stopOrderId, orderLinkId, symbol)

Query real-time stop order information.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ConditionalApi;

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

ConditionalApi apiInstance = new ConditionalApi();
String stopOrderId = "stopOrderId_example"; // String | Order ID of conditional order.
String orderLinkId = "orderLinkId_example"; // String | Agency customized order ID.
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.conditionalQuery(stopOrderId, orderLinkId, symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ConditionalApi#conditionalQuery");
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

<a name="conditionalReplace"></a>
# **conditionalReplace**
> Object conditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice)

Replace conditional order. Only incomplete orders can be modified. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ConditionalApi;

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

ConditionalApi apiInstance = new ConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
String stopOrderId = "stopOrderId_example"; // String | Stop order ID.
String orderLinkId = "orderLinkId_example"; // String | Order Link ID.
String pRQty = "pRQty_example"; // String | Order quantity.
String pRPrice = "pRPrice_example"; // String | Order price.
String pRTriggerPrice = "pRTriggerPrice_example"; // String | Trigger price.
try {
    Object result = apiInstance.conditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice);
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

