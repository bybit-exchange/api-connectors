# IO.Swagger.Api.OrderApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrderCancel**](OrderApi.md#ordercancel) | **POST** /open-api/order/cancel | Get my active order list.
[**OrderCancelAll**](OrderApi.md#ordercancelall) | **POST** /v2/private/order/cancelAll | Get my active order list.
[**OrderCancelV2**](OrderApi.md#ordercancelv2) | **POST** /v2/private/order/cancel | Get my active order list.
[**OrderGetOrders**](OrderApi.md#ordergetorders) | **GET** /open-api/order/list | Get my active order list.
[**OrderNew**](OrderApi.md#ordernew) | **POST** /open-api/order/create | Place active order
[**OrderNewV2**](OrderApi.md#ordernewv2) | **POST** /v2/private/order/create | Place active order
[**OrderQuery**](OrderApi.md#orderquery) | **GET** /v2/private/order | Get my active order list.
[**OrderReplace**](OrderApi.md#orderreplace) | **POST** /open-api/order/replace | Replace active order. Only incomplete orders can be modified. 


<a name="ordercancel"></a>
# **OrderCancel**
> Object OrderCancel (string orderId, string symbol = null)

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
            var orderId = orderId_example;  // string | Order ID
            var symbol = symbol_example;  // string | Contract type. (optional) 

            try
            {
                // Get my active order list.
                Object result = apiInstance.OrderCancel(orderId, symbol);
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
 **orderId** | **string**| Order ID | 
 **symbol** | **string**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ordercancelv2"></a>
# **OrderCancelV2**
> Object OrderCancelV2 (string orderId, string symbol = null)

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
    public class OrderCancelV2Example
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
            var orderId = orderId_example;  // string | Order ID
            var symbol = symbol_example;  // string | Contract type. (optional) 

            try
            {
                // Get my active order list.
                Object result = apiInstance.OrderCancelV2(orderId, symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderCancelV2: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string**| Order ID | 
 **symbol** | **string**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ordergetorders"></a>
# **OrderGetOrders**
> Object OrderGetOrders (string orderId = null, string orderLinkId = null, string symbol = null, string order = null, decimal? page = null, decimal? limit = null, string orderStatus = null)

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
            var orderId = orderId_example;  // string | Order ID (optional) 
            var orderLinkId = orderLinkId_example;  // string | Customized order ID. (optional) 
            var symbol = symbol_example;  // string | Contract type. Default BTCUSD (optional) 
            var order = order_example;  // string | Sort orders by creation date (optional) 
            var page = 8.14;  // decimal? | Page. Default getting first page data (optional) 
            var limit = 8.14;  // decimal? | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional) 
            var orderStatus = orderStatus_example;  // string | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by (optional) 

            try
            {
                // Get my active order list.
                Object result = apiInstance.OrderGetOrders(orderId, orderLinkId, symbol, order, page, limit, orderStatus);
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
 **orderId** | **string**| Order ID | [optional] 
 **orderLinkId** | **string**| Customized order ID. | [optional] 
 **symbol** | **string**| Contract type. Default BTCUSD | [optional] 
 **order** | **string**| Sort orders by creation date | [optional] 
 **page** | **decimal?**| Page. Default getting first page data | [optional] 
 **limit** | **decimal?**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **orderStatus** | **string**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional] 

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
> Object OrderNew (string side, string symbol, string orderType, decimal? qty, double? price, string timeInForce, double? takeProfit = null, double? stopLoss = null, bool? reduceOnly = null, bool? closeOnTrigger = null, string orderLinkId = null)

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
            var price = 1.2;  // double? | Order price.
            var timeInForce = timeInForce_example;  // string | Time in force
            var takeProfit = 1.2;  // double? | take profit price (optional) 
            var stopLoss = 1.2;  // double? | stop loss price (optional) 
            var reduceOnly = true;  // bool? | reduce only (optional) 
            var closeOnTrigger = true;  // bool? | close on trigger (optional) 
            var orderLinkId = orderLinkId_example;  // string | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional) 

            try
            {
                // Place active order
                Object result = apiInstance.OrderNew(side, symbol, orderType, qty, price, timeInForce, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId);
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
 **price** | **double?**| Order price. | 
 **timeInForce** | **string**| Time in force | 
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ordernewv2"></a>
# **OrderNewV2**
> Object OrderNewV2 (string side, string symbol, string orderType, decimal? qty, double? price, string timeInForce, double? takeProfit = null, double? stopLoss = null, bool? reduceOnly = null, bool? closeOnTrigger = null, string orderLinkId = null, string trailingStop = null)

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
    public class OrderNewV2Example
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
            var price = 1.2;  // double? | Order price.
            var timeInForce = timeInForce_example;  // string | Time in force
            var takeProfit = 1.2;  // double? | take profit price (optional) 
            var stopLoss = 1.2;  // double? | stop loss price (optional) 
            var reduceOnly = true;  // bool? | reduce only (optional) 
            var closeOnTrigger = true;  // bool? | close on trigger (optional) 
            var orderLinkId = orderLinkId_example;  // string | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional) 
            var trailingStop = trailingStop_example;  // string | Trailing stop. (optional) 

            try
            {
                // Place active order
                Object result = apiInstance.OrderNewV2(side, symbol, orderType, qty, price, timeInForce, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId, trailingStop);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrderApi.OrderNewV2: " + e.Message );
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
 **price** | **double?**| Order price. | 
 **timeInForce** | **string**| Time in force | 
 **takeProfit** | **double?**| take profit price | [optional] 
 **stopLoss** | **double?**| stop loss price | [optional] 
 **reduceOnly** | **bool?**| reduce only | [optional] 
 **closeOnTrigger** | **bool?**| close on trigger | [optional] 
 **orderLinkId** | **string**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 
 **trailingStop** | **string**| Trailing stop. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
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
> Object OrderReplace (string orderId, string symbol, decimal? pRQty = null, double? pRPrice = null)

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
            var orderId = orderId_example;  // string | Order ID.
            var symbol = symbol_example;  // string | Contract type.
            var pRQty = 8.14;  // decimal? | Order quantity. (optional) 
            var pRPrice = 1.2;  // double? | Order price. (optional) 

            try
            {
                // Replace active order. Only incomplete orders can be modified. 
                Object result = apiInstance.OrderReplace(orderId, symbol, pRQty, pRPrice);
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
 **orderId** | **string**| Order ID. | 
 **symbol** | **string**| Contract type. | 
 **pRQty** | **decimal?**| Order quantity. | [optional] 
 **pRPrice** | **double?**| Order price. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

