# IO.Swagger.Api.LinearOrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearOrderCancel**](LinearOrderApi.md#linearordercancel) | **POST** /private/linear/order/cancel | Cancel Active Order
[**LinearOrderCancelAll**](LinearOrderApi.md#linearordercancelall) | **POST** /private/linear/order/cancel-all | Cancel all active orders.
[**LinearOrderGetOrders**](LinearOrderApi.md#linearordergetorders) | **GET** /private/linear/order/list | Get linear Active Orders
[**LinearOrderNew**](LinearOrderApi.md#linearordernew) | **POST** /private/linear/order/create | Create Active Order
[**LinearOrderQuery**](LinearOrderApi.md#linearorderquery) | **GET** /private/linear/order/search | Get Active Orders(real-time)
[**LinearOrderReplace**](LinearOrderApi.md#linearorderreplace) | **POST** /private/linear/order/replace | Replace Active Order


<a name="linearordercancel"></a>
# **LinearOrderCancel**
> Object LinearOrderCancel (string orderId = null, string orderLinkId = null, string symbol = null)

Cancel Active Order

This will cancel linear active order

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearOrderCancelExample
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

            var apiInstance = new LinearOrderApi();
            var orderId = orderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 
            var symbol = symbol_example;  // string |  (optional) 

            try
            {
                // Cancel Active Order
                Object result = apiInstance.LinearOrderCancel(orderId, orderLinkId, symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearOrderApi.LinearOrderCancel: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 
 **symbol** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearordercancelall"></a>
# **LinearOrderCancelAll**
> Object LinearOrderCancelAll (string symbol)

Cancel all active orders.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearOrderCancelAllExample
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

            var apiInstance = new LinearOrderApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Cancel all active orders.
                Object result = apiInstance.LinearOrderCancelAll(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearOrderApi.LinearOrderCancelAll: " + e.Message );
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

<a name="linearordergetorders"></a>
# **LinearOrderGetOrders**
> Object LinearOrderGetOrders (string orderId = null, string orderLinkId = null, string symbol = null, string order = null, string page = null, string limit = null, string orderStatus = null)

Get linear Active Orders

This will get linear active orders

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearOrderGetOrdersExample
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

            var apiInstance = new LinearOrderApi();
            var orderId = orderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 
            var symbol = symbol_example;  // string |  (optional) 
            var order = order_example;  // string |  (optional) 
            var page = page_example;  // string |  (optional) 
            var limit = limit_example;  // string |  (optional) 
            var orderStatus = orderStatus_example;  // string |  (optional) 

            try
            {
                // Get linear Active Orders
                Object result = apiInstance.LinearOrderGetOrders(orderId, orderLinkId, symbol, order, page, limit, orderStatus);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearOrderApi.LinearOrderGetOrders: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 
 **symbol** | **string**|  | [optional] 
 **order** | **string**|  | [optional] 
 **page** | **string**|  | [optional] 
 **limit** | **string**|  | [optional] 
 **orderStatus** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearordernew"></a>
# **LinearOrderNew**
> Object LinearOrderNew (string symbol = null, string side = null, string orderType = null, string timeInForce = null, double? qty = null, double? price = null, double? takeProfit = null, double? stopLoss = null, bool? reduceOnly = null, string tpTriggerBy = null, string slTriggerBy = null, bool? closeOnTrigger = null, string orderLinkId = null)

Create Active Order

This will create linear order

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearOrderNewExample
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

            var apiInstance = new LinearOrderApi();
            var symbol = symbol_example;  // string |  (optional) 
            var side = side_example;  // string |  (optional) 
            var orderType = orderType_example;  // string |  (optional) 
            var timeInForce = timeInForce_example;  // string |  (optional) 
            var qty = 1.2;  // double? |  (optional) 
            var price = 1.2;  // double? |  (optional) 
            var takeProfit = 1.2;  // double? |  (optional) 
            var stopLoss = 1.2;  // double? |  (optional) 
            var reduceOnly = true;  // bool? |  (optional) 
            var tpTriggerBy = tpTriggerBy_example;  // string |  (optional) 
            var slTriggerBy = slTriggerBy_example;  // string |  (optional) 
            var closeOnTrigger = true;  // bool? |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 

            try
            {
                // Create Active Order
                Object result = apiInstance.LinearOrderNew(symbol, side, orderType, timeInForce, qty, price, takeProfit, stopLoss, reduceOnly, tpTriggerBy, slTriggerBy, closeOnTrigger, orderLinkId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearOrderApi.LinearOrderNew: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 
 **side** | **string**|  | [optional] 
 **orderType** | **string**|  | [optional] 
 **timeInForce** | **string**|  | [optional] 
 **qty** | **double?**|  | [optional] 
 **price** | **double?**|  | [optional] 
 **takeProfit** | **double?**|  | [optional] 
 **stopLoss** | **double?**|  | [optional] 
 **reduceOnly** | **bool?**|  | [optional] 
 **tpTriggerBy** | **string**|  | [optional] 
 **slTriggerBy** | **string**|  | [optional] 
 **closeOnTrigger** | **bool?**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearorderquery"></a>
# **LinearOrderQuery**
> Object LinearOrderQuery (string symbol = null, string orderId = null, string orderLinkId = null)

Get Active Orders(real-time)

This will get linear active orders(real-time)

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearOrderQueryExample
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

            var apiInstance = new LinearOrderApi();
            var symbol = symbol_example;  // string |  (optional) 
            var orderId = orderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 

            try
            {
                // Get Active Orders(real-time)
                Object result = apiInstance.LinearOrderQuery(symbol, orderId, orderLinkId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearOrderApi.LinearOrderQuery: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 
 **orderId** | **string**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearorderreplace"></a>
# **LinearOrderReplace**
> Object LinearOrderReplace (string symbol, string orderId = null, string orderLinkId = null, string pRQty = null, decimal? pRPrice = null)

Replace Active Order

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearOrderReplaceExample
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

            var apiInstance = new LinearOrderApi();
            var symbol = symbol_example;  // string | 
            var orderId = orderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 
            var pRQty = pRQty_example;  // string |  (optional) 
            var pRPrice = 8.14;  // decimal? |  (optional) 

            try
            {
                // Replace Active Order
                Object result = apiInstance.LinearOrderReplace(symbol, orderId, orderLinkId, pRQty, pRPrice);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearOrderApi.LinearOrderReplace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | 
 **orderId** | **string**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 
 **pRQty** | **string**|  | [optional] 
 **pRPrice** | **decimal?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

