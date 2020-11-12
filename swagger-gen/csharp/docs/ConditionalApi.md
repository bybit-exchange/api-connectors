# IO.Swagger.Api.ConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConditionalCancel**](ConditionalApi.md#conditionalcancel) | **POST** /v2/private/stop-order/cancel | Cancel conditional order.
[**ConditionalCancelAll**](ConditionalApi.md#conditionalcancelall) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**ConditionalGetOrders**](ConditionalApi.md#conditionalgetorders) | **GET** /v2/private/stop-order/list | Get my conditional order list.
[**ConditionalNew**](ConditionalApi.md#conditionalnew) | **POST** /v2/private/stop-order/create | Place a new conditional order.
[**ConditionalQuery**](ConditionalApi.md#conditionalquery) | **GET** /v2/private/stop-order | Query real-time stop order information.
[**ConditionalReplace**](ConditionalApi.md#conditionalreplace) | **POST** /v2/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


<a name="conditionalcancel"></a>
# **ConditionalCancel**
> Object ConditionalCancel (string symbol, string stopOrderId = null, string orderLinkId = null)

Cancel conditional order.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ConditionalCancelExample
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

            var apiInstance = new ConditionalApi();
            var symbol = symbol_example;  // string | Contract type.
            var stopOrderId = stopOrderId_example;  // string | Order ID of conditional order. (optional) 
            var orderLinkId = orderLinkId_example;  // string | Agency customized order ID. (optional) 

            try
            {
                // Cancel conditional order.
                Object result = apiInstance.ConditionalCancel(symbol, stopOrderId, orderLinkId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ConditionalApi.ConditionalCancel: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **stopOrderId** | **string**| Order ID of conditional order. | [optional] 
 **orderLinkId** | **string**| Agency customized order ID. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="conditionalcancelall"></a>
# **ConditionalCancelAll**
> Object ConditionalCancelAll (string symbol)

Cancel conditional order.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ConditionalCancelAllExample
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

            var apiInstance = new ConditionalApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Cancel conditional order.
                Object result = apiInstance.ConditionalCancelAll(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ConditionalApi.ConditionalCancelAll: " + e.Message );
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

<a name="conditionalgetorders"></a>
# **ConditionalGetOrders**
> Object ConditionalGetOrders (string symbol, string stopOrderStatus = null, decimal? limit = null, string direction = null, string cursor = null)

Get my conditional order list.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ConditionalGetOrdersExample
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

            var apiInstance = new ConditionalApi();
            var symbol = symbol_example;  // string | Contract type
            var stopOrderStatus = stopOrderStatus_example;  // string | Stop order status. (optional) 
            var limit = 8.14;  // decimal? | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional) 
            var direction = direction_example;  // string | Search direction. prev: prev page, next: next page. Defaults to next (optional) 
            var cursor = cursor_example;  // string | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode (optional) 

            try
            {
                // Get my conditional order list.
                Object result = apiInstance.ConditionalGetOrders(symbol, stopOrderStatus, limit, direction, cursor);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ConditionalApi.ConditionalGetOrders: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type | 
 **stopOrderStatus** | **string**| Stop order status. | [optional] 
 **limit** | **decimal?**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 
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

<a name="conditionalnew"></a>
# **ConditionalNew**
> Object ConditionalNew (string side, string symbol, string orderType, string qty, string basePrice, string stopPx, string timeInForce, string price = null, string triggerBy = null, bool? closeOnTrigger = null, string orderLinkId = null)

Place a new conditional order.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ConditionalNewExample
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

            var apiInstance = new ConditionalApi();
            var side = side_example;  // string | Side.
            var symbol = symbol_example;  // string | Contract type.
            var orderType = orderType_example;  // string | Conditional order type.
            var qty = qty_example;  // string | Order quantity.
            var basePrice = basePrice_example;  // string | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
            var stopPx = stopPx_example;  // string | Trigger price.
            var timeInForce = timeInForce_example;  // string | Time in force.
            var price = price_example;  // string | Execution price for conditional order (optional) 
            var triggerBy = triggerBy_example;  // string | Trigger price type. Default LastPrice. (optional) 
            var closeOnTrigger = true;  // bool? | close on trigger. (optional) 
            var orderLinkId = orderLinkId_example;  // string | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. (optional) 

            try
            {
                // Place a new conditional order.
                Object result = apiInstance.ConditionalNew(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, price, triggerBy, closeOnTrigger, orderLinkId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ConditionalApi.ConditionalNew: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **string**| Side. | 
 **symbol** | **string**| Contract type. | 
 **orderType** | **string**| Conditional order type. | 
 **qty** | **string**| Order quantity. | 
 **basePrice** | **string**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stopPx** | **string**| Trigger price. | 
 **timeInForce** | **string**| Time in force. | 
 **price** | **string**| Execution price for conditional order | [optional] 
 **triggerBy** | **string**| Trigger price type. Default LastPrice. | [optional] 
 **closeOnTrigger** | **bool?**| close on trigger. | [optional] 
 **orderLinkId** | **string**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="conditionalquery"></a>
# **ConditionalQuery**
> Object ConditionalQuery (string stopOrderId = null, string orderLinkId = null, string symbol = null)

Query real-time stop order information.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ConditionalQueryExample
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

            var apiInstance = new ConditionalApi();
            var stopOrderId = stopOrderId_example;  // string | Order ID of conditional order. (optional) 
            var orderLinkId = orderLinkId_example;  // string | Agency customized order ID. (optional) 
            var symbol = symbol_example;  // string | Contract type. (optional) 

            try
            {
                // Query real-time stop order information.
                Object result = apiInstance.ConditionalQuery(stopOrderId, orderLinkId, symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ConditionalApi.ConditionalQuery: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **string**| Order ID of conditional order. | [optional] 
 **orderLinkId** | **string**| Agency customized order ID. | [optional] 
 **symbol** | **string**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="conditionalreplace"></a>
# **ConditionalReplace**
> Object ConditionalReplace (string symbol, string stopOrderId = null, string orderLinkId = null, string pRQty = null, string pRPrice = null, string pRTriggerPrice = null)

Replace conditional order. Only incomplete orders can be modified. 

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ConditionalReplaceExample
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

            var apiInstance = new ConditionalApi();
            var symbol = symbol_example;  // string | Contract type.
            var stopOrderId = stopOrderId_example;  // string | Stop order ID. (optional) 
            var orderLinkId = orderLinkId_example;  // string | Order Link ID. (optional) 
            var pRQty = pRQty_example;  // string | Order quantity. (optional) 
            var pRPrice = pRPrice_example;  // string | Order price. (optional) 
            var pRTriggerPrice = pRTriggerPrice_example;  // string | Trigger price. (optional) 

            try
            {
                // Replace conditional order. Only incomplete orders can be modified. 
                Object result = apiInstance.ConditionalReplace(symbol, stopOrderId, orderLinkId, pRQty, pRPrice, pRTriggerPrice);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ConditionalApi.ConditionalReplace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **stopOrderId** | **string**| Stop order ID. | [optional] 
 **orderLinkId** | **string**| Order Link ID. | [optional] 
 **pRQty** | **string**| Order quantity. | [optional] 
 **pRPrice** | **string**| Order price. | [optional] 
 **pRTriggerPrice** | **string**| Trigger price. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

