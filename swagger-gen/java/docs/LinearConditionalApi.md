# LinearConditionalApi

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
> Object linearConditionalCancel(stopOrderId, orderLinkId, symbol)

Cancel Active Order

This will cancel linear active order

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearConditionalApi;

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

LinearConditionalApi apiInstance = new LinearConditionalApi();
String stopOrderId = "stopOrderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
String symbol = "symbol_example"; // String | 
try {
    Object result = apiInstance.linearConditionalCancel(stopOrderId, orderLinkId, symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearConditionalApi#linearConditionalCancel");
    e.printStackTrace();
}
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearConditionalApi;

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

LinearConditionalApi apiInstance = new LinearConditionalApi();
String symbol = "symbol_example"; // String | Contract type.
try {
    Object result = apiInstance.linearConditionalCancelAll(symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearConditionalApi#linearConditionalCancelAll");
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

<a name="linearConditionalGetOrders"></a>
# **linearConditionalGetOrders**
> Object linearConditionalGetOrders(stopOrderId, orderLinkId, symbol, order, page, limit, stopOrderStatus)

Get linear Stop Orders

This will get linear active orders

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearConditionalApi;

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

LinearConditionalApi apiInstance = new LinearConditionalApi();
String stopOrderId = "stopOrderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
String symbol = "symbol_example"; // String | 
String order = "order_example"; // String | 
String page = "page_example"; // String | 
String limit = "limit_example"; // String | 
String stopOrderStatus = "stopOrderStatus_example"; // String | 
try {
    Object result = apiInstance.linearConditionalGetOrders(stopOrderId, orderLinkId, symbol, order, page, limit, stopOrderStatus);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearConditionalApi#linearConditionalGetOrders");
    e.printStackTrace();
}
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
> Object linearConditionalNew(symbol, side, orderType, qty, price, basePrice, stopPx, timeInForce, triggerBy, reduceOnly, closeOnTrigger, orderLinkId, takeProfit, stopLoss, tpTriggerBy, slTriggerBy)

Create linear stop Order

This will create linear stop order

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearConditionalApi;

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

LinearConditionalApi apiInstance = new LinearConditionalApi();
String symbol = "symbol_example"; // String | 
String side = "side_example"; // String | 
String orderType = "orderType_example"; // String | 
Double qty = 3.4D; // Double | 
Double price = 3.4D; // Double | 
Double basePrice = 3.4D; // Double | 
Double stopPx = 3.4D; // Double | 
String timeInForce = "timeInForce_example"; // String | 
String triggerBy = "triggerBy_example"; // String | 
Boolean reduceOnly = true; // Boolean | 
Boolean closeOnTrigger = true; // Boolean | 
String orderLinkId = "orderLinkId_example"; // String | 
Double takeProfit = 3.4D; // Double | 
Double stopLoss = 3.4D; // Double | 
String tpTriggerBy = "tpTriggerBy_example"; // String | 
String slTriggerBy = "slTriggerBy_example"; // String | 
try {
    Object result = apiInstance.linearConditionalNew(symbol, side, orderType, qty, price, basePrice, stopPx, timeInForce, triggerBy, reduceOnly, closeOnTrigger, orderLinkId, takeProfit, stopLoss, tpTriggerBy, slTriggerBy);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearConditionalApi#linearConditionalNew");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | [optional]
 **side** | **String**|  | [optional]
 **orderType** | **String**|  | [optional]
 **qty** | **Double**|  | [optional]
 **price** | **Double**|  | [optional]
 **basePrice** | **Double**|  | [optional]
 **stopPx** | **Double**|  | [optional]
 **timeInForce** | **String**|  | [optional]
 **triggerBy** | **String**|  | [optional]
 **reduceOnly** | **Boolean**|  | [optional]
 **closeOnTrigger** | **Boolean**|  | [optional]
 **orderLinkId** | **String**|  | [optional]
 **takeProfit** | **Double**|  | [optional]
 **stopLoss** | **Double**|  | [optional]
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
> Object linearConditionalQuery(symbol, stopOrderId, orderLinkId)

Get Stop Orders(real-time)

This will get linear stop orders(real-time)

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearConditionalApi;

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

LinearConditionalApi apiInstance = new LinearConditionalApi();
String symbol = "symbol_example"; // String | 
String stopOrderId = "stopOrderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
try {
    Object result = apiInstance.linearConditionalQuery(symbol, stopOrderId, orderLinkId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearConditionalApi#linearConditionalQuery");
    e.printStackTrace();
}
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
> Object linearConditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice)

Replace conditional order

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LinearConditionalApi;

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

LinearConditionalApi apiInstance = new LinearConditionalApi();
String symbol = "symbol_example"; // String | 
String stopOrderId = "stopOrderId_example"; // String | 
String orderLinkId = "orderLinkId_example"; // String | 
String pRQty = "pRQty_example"; // String | 
BigDecimal pRPrice = new BigDecimal(); // BigDecimal | 
BigDecimal pRTriggerPrice = new BigDecimal(); // BigDecimal | 
try {
    Object result = apiInstance.linearConditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinearConditionalApi#linearConditionalReplace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  |
 **stopOrderId** | **String**|  | [optional]
 **orderLinkId** | **String**|  | [optional]
 **pRQty** | **String**|  | [optional]
 **pRPrice** | **BigDecimal**|  | [optional]
 **pRTriggerPrice** | **BigDecimal**|  | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

