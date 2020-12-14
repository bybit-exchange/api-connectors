# IO.Swagger.Api.LinearConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearConditionalCancel**](LinearConditionalApi.md#linearconditionalcancel) | **POST** /private/linear/stop-order/cancel | Cancel Active Order
[**LinearConditionalCancelAll**](LinearConditionalApi.md#linearconditionalcancelall) | **POST** /private/linear/stop-order/cancel-all | Cancel all stop orders.
[**LinearConditionalGetOrders**](LinearConditionalApi.md#linearconditionalgetorders) | **GET** /private/linear/stop-order/list | Get linear Stop Orders
[**LinearConditionalNew**](LinearConditionalApi.md#linearconditionalnew) | **POST** /private/linear/stop-order/create | Create linear stop Order
[**LinearConditionalQuery**](LinearConditionalApi.md#linearconditionalquery) | **GET** /private/linear/stop-order/search | Get Stop Orders(real-time)
[**LinearConditionalReplace**](LinearConditionalApi.md#linearconditionalreplace) | **POST** /private/linear/stop-order/replace | Replace conditional order


<a name="linearconditionalcancel"></a>
# **LinearConditionalCancel**
> Object LinearConditionalCancel (string stopOrderId = null, string orderLinkId = null, string symbol = null)

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
    public class LinearConditionalCancelExample
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

            var apiInstance = new LinearConditionalApi();
            var stopOrderId = stopOrderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 
            var symbol = symbol_example;  // string |  (optional) 

            try
            {
                // Cancel Active Order
                Object result = apiInstance.LinearConditionalCancel(stopOrderId, orderLinkId, symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearConditionalApi.LinearConditionalCancel: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **string**|  | [optional] 
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

<a name="linearconditionalcancelall"></a>
# **LinearConditionalCancelAll**
> Object LinearConditionalCancelAll (string symbol)

Cancel all stop orders.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearConditionalCancelAllExample
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

            var apiInstance = new LinearConditionalApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Cancel all stop orders.
                Object result = apiInstance.LinearConditionalCancelAll(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearConditionalApi.LinearConditionalCancelAll: " + e.Message );
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

<a name="linearconditionalgetorders"></a>
# **LinearConditionalGetOrders**
> Object LinearConditionalGetOrders (string stopOrderId = null, string orderLinkId = null, string symbol = null, string order = null, string page = null, string limit = null, string stopOrderStatus = null)

Get linear Stop Orders

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
    public class LinearConditionalGetOrdersExample
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

            var apiInstance = new LinearConditionalApi();
            var stopOrderId = stopOrderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 
            var symbol = symbol_example;  // string |  (optional) 
            var order = order_example;  // string |  (optional) 
            var page = page_example;  // string |  (optional) 
            var limit = limit_example;  // string |  (optional) 
            var stopOrderStatus = stopOrderStatus_example;  // string |  (optional) 

            try
            {
                // Get linear Stop Orders
                Object result = apiInstance.LinearConditionalGetOrders(stopOrderId, orderLinkId, symbol, order, page, limit, stopOrderStatus);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearConditionalApi.LinearConditionalGetOrders: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **string**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 
 **symbol** | **string**|  | [optional] 
 **order** | **string**|  | [optional] 
 **page** | **string**|  | [optional] 
 **limit** | **string**|  | [optional] 
 **stopOrderStatus** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearconditionalnew"></a>
# **LinearConditionalNew**
> Object LinearConditionalNew (string symbol = null, string side = null, string orderType = null, double? qty = null, double? price = null, double? basePrice = null, double? stopPx = null, string timeInForce = null, string triggerBy = null, bool? reduceOnly = null, bool? closeOnTrigger = null, string orderLinkId = null, double? takeProfit = null, double? stopLoss = null, string tpTriggerBy = null, string slTriggerBy = null)

Create linear stop Order

This will create linear stop order

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearConditionalNewExample
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

            var apiInstance = new LinearConditionalApi();
            var symbol = symbol_example;  // string |  (optional) 
            var side = side_example;  // string |  (optional) 
            var orderType = orderType_example;  // string |  (optional) 
            var qty = 1.2;  // double? |  (optional) 
            var price = 1.2;  // double? |  (optional) 
            var basePrice = 1.2;  // double? |  (optional) 
            var stopPx = 1.2;  // double? |  (optional) 
            var timeInForce = timeInForce_example;  // string |  (optional) 
            var triggerBy = triggerBy_example;  // string |  (optional) 
            var reduceOnly = true;  // bool? |  (optional) 
            var closeOnTrigger = true;  // bool? |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 
            var takeProfit = 1.2;  // double? |  (optional) 
            var stopLoss = 1.2;  // double? |  (optional) 
            var tpTriggerBy = tpTriggerBy_example;  // string |  (optional) 
            var slTriggerBy = slTriggerBy_example;  // string |  (optional) 

            try
            {
                // Create linear stop Order
                Object result = apiInstance.LinearConditionalNew(symbol, side, orderType, qty, price, basePrice, stopPx, timeInForce, triggerBy, reduceOnly, closeOnTrigger, orderLinkId, takeProfit, stopLoss, tpTriggerBy, slTriggerBy);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearConditionalApi.LinearConditionalNew: " + e.Message );
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
 **qty** | **double?**|  | [optional] 
 **price** | **double?**|  | [optional] 
 **basePrice** | **double?**|  | [optional] 
 **stopPx** | **double?**|  | [optional] 
 **timeInForce** | **string**|  | [optional] 
 **triggerBy** | **string**|  | [optional] 
 **reduceOnly** | **bool?**|  | [optional] 
 **closeOnTrigger** | **bool?**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 
 **takeProfit** | **double?**|  | [optional] 
 **stopLoss** | **double?**|  | [optional] 
 **tpTriggerBy** | **string**|  | [optional] 
 **slTriggerBy** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearconditionalquery"></a>
# **LinearConditionalQuery**
> Object LinearConditionalQuery (string symbol = null, string stopOrderId = null, string orderLinkId = null)

Get Stop Orders(real-time)

This will get linear stop orders(real-time)

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearConditionalQueryExample
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

            var apiInstance = new LinearConditionalApi();
            var symbol = symbol_example;  // string |  (optional) 
            var stopOrderId = stopOrderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 

            try
            {
                // Get Stop Orders(real-time)
                Object result = apiInstance.LinearConditionalQuery(symbol, stopOrderId, orderLinkId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearConditionalApi.LinearConditionalQuery: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 
 **stopOrderId** | **string**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearconditionalreplace"></a>
# **LinearConditionalReplace**
> Object LinearConditionalReplace (string symbol, string stopOrderId = null, string orderLinkId = null, string pRQty = null, decimal? pRPrice = null, decimal? pRTriggerPrice = null)

Replace conditional order

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearConditionalReplaceExample
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

            var apiInstance = new LinearConditionalApi();
            var symbol = symbol_example;  // string | 
            var stopOrderId = stopOrderId_example;  // string |  (optional) 
            var orderLinkId = orderLinkId_example;  // string |  (optional) 
            var pRQty = pRQty_example;  // string |  (optional) 
            var pRPrice = 8.14;  // decimal? |  (optional) 
            var pRTriggerPrice = 8.14;  // decimal? |  (optional) 

            try
            {
                // Replace conditional order
                Object result = apiInstance.LinearConditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearConditionalApi.LinearConditionalReplace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | 
 **stopOrderId** | **string**|  | [optional] 
 **orderLinkId** | **string**|  | [optional] 
 **pRQty** | **string**|  | [optional] 
 **pRPrice** | **decimal?**|  | [optional] 
 **pRTriggerPrice** | **decimal?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

