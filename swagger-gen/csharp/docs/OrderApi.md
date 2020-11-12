# IO.Swagger.Api.OrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrderCancel**](OrderApi.md#ordercancel) | **POST** /v2/private/order/cancel | Get my active order list.
[**OrderCancelAll**](OrderApi.md#ordercancelall) | **POST** /v2/private/order/cancelAll | Get my active order list.
[**OrderGetOrders**](OrderApi.md#ordergetorders) | **GET** /v2/private/order/list | Get my active order list.
[**OrderNew**](OrderApi.md#ordernew) | **POST** /v2/private/order/create | Place active order
[**OrderQuery**](OrderApi.md#orderquery) | **GET** /v2/private/order | Get my active order list.
[**OrderReplace**](OrderApi.md#orderreplace) | **POST** /v2/private/order/replace | Replace active order. Only incomplete orders can be modified. 


<a name="ordercancel"></a>
# **OrderCancel**
> Object OrderCancel (string symbol, string orderId = null, string orderLinkId = null)

Get my active order list.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OrderCancelExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api_key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("sign", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("sign", "Bearer");
            // Configure API key authorization: timestamp
            Configuration.Default.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new OrderApi();
            var symbol = symbol_example;  // string | Contract type.
            var orderId = orderId_example;  // string | Order ID (optional) 
            var orderLinkId = orderLinkId_example;  // string | Order link id. (optional) 

            try
            {
                // Get my active order list.
                Object result = apiInstance.OrderCancel(symbol, orderId, orderLinkId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderCancel: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **orderId** | **string**| Order ID | [optional] 
 **orderLinkId** | **string**| Order link id. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ordercancelall"></a>
# **OrderCancelAll**
> Object OrderCancelAll (string symbol)

Get my active order list.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OrderCancelAllExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api_key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("sign", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("sign", "Bearer");
            // Configure API key authorization: timestamp
            Configuration.Default.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new OrderApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Get my active order list.
                Object result = apiInstance.OrderCancelAll(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderCancelAll: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ordergetorders"></a>
# **OrderGetOrders**
> Object OrderGetOrders (string symbol, decimal? limit = null, string orderStatus = null, string direction = null, string cursor = null)

Get my active order list.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OrderGetOrdersExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api_key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("sign", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("sign", "Bearer");
            // Configure API key authorization: timestamp
            Configuration.Default.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new OrderApi();
            var symbol = symbol_example;  // string | Contract type. Default BTCUSD
            var limit = 8.14;  // decimal? | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional) 
            var orderStatus = orderStatus_example;  // string | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by (optional) 
            var direction = direction_example;  // string | Search direction. prev: prev page, next: next page. Defaults to next (optional) 
            var cursor = cursor_example;  // string | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode (optional) 

            try
            {
                // Get my active order list.
                Object result = apiInstance.OrderGetOrders(symbol, limit, orderStatus, direction, cursor);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderGetOrders: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. Default BTCUSD | 
 **limit** | **decimal?**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **orderStatus** | **string**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional] 
 **direction** | **string**| Search direction. prev: prev page, next: next page. Defaults to next | [optional] 
 **cursor** | **string**| Page turning mark，Use return cursor,Sign use origin data, in request please urlencode | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ordernew"></a>
# **OrderNew**
> Object OrderNew (string side, string symbol, string orderType, decimal? qty, string timeInForce, double? price = null, double? takeProfit = null, double? stopLoss = null, bool? reduceOnly = null, bool? closeOnTrigger = null, string orderLinkId = null)

Place active order

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OrderNewExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api_key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("sign", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("sign", "Bearer");
            // Configure API key authorization: timestamp
            Configuration.Default.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new OrderApi();
            var side = side_example;  // string | Side
            var symbol = symbol_example;  // string | Contract type.
            var orderType = orderType_example;  // string | Active order type
            var qty = 8.14;  // decimal? | 
            var timeInForce = timeInForce_example;  // string | Time in force
            var price = 1.2;  // double? | Order price. (optional) 
            var takeProfit = 1.2;  // double? | take profit price (optional) 
            var stopLoss = 1.2;  // double? | stop loss price (optional) 
            var reduceOnly = true;  // bool? | reduce only (optional) 
            var closeOnTrigger = true;  // bool? | close on trigger (optional) 
            var orderLinkId = orderLinkId_example;  // string | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional) 

            try
            {
                // Place active order
                Object result = apiInstance.OrderNew(side, symbol, orderType, qty, timeInForce, price, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderNew: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **string**| Side | 
 **symbol** | **string**| Contract type. | 
 **orderType** | **string**| Active order type | 
 **qty** | **decimal?**|  | 
 **timeInForce** | **string**| Time in force | 
 **price** | **double?**| Order price. | [optional] 
 **takeProfit** | **double?**| take profit price | [optional] 
 **stopLoss** | **double?**| stop loss price | [optional] 
 **reduceOnly** | **bool?**| reduce only | [optional] 
 **closeOnTrigger** | **bool?**| close on trigger | [optional] 
 **orderLinkId** | **string**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="orderquery"></a>
# **OrderQuery**
> Object OrderQuery (string orderId = null, string symbol = null)

Get my active order list.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OrderQueryExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api_key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("sign", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("sign", "Bearer");
            // Configure API key authorization: timestamp
            Configuration.Default.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new OrderApi();
            var orderId = orderId_example;  // string | Order ID (optional) 
            var symbol = symbol_example;  // string | Contract type. Default BTCUSD (optional) 

            try
            {
                // Get my active order list.
                Object result = apiInstance.OrderQuery(orderId, symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderQuery: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string**| Order ID | [optional] 
 **symbol** | **string**| Contract type. Default BTCUSD | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="orderreplace"></a>
# **OrderReplace**
> Object OrderReplace (string symbol, string orderId = null, string orderLinkId = null, string pRQty = null, string pRPrice = null)

Replace active order. Only incomplete orders can be modified. 

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OrderReplaceExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api_key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("sign", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("sign", "Bearer");
            // Configure API key authorization: timestamp
            Configuration.Default.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new OrderApi();
            var symbol = symbol_example;  // string | Contract type.
            var orderId = orderId_example;  // string | Order ID. (optional) 
            var orderLinkId = orderLinkId_example;  // string | Order Link ID. (optional) 
            var pRQty = pRQty_example;  // string | Order quantity. (optional) 
            var pRPrice = pRPrice_example;  // string | Order price. (optional) 

            try
            {
                // Replace active order. Only incomplete orders can be modified. 
                Object result = apiInstance.OrderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderReplace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **orderId** | **string**| Order ID. | [optional] 
 **orderLinkId** | **string**| Order Link ID. | [optional] 
 **pRQty** | **string**| Order quantity. | [optional] 
 **pRPrice** | **string**| Order price. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

