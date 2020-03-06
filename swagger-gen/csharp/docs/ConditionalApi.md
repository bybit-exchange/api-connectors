# IO.Swagger.Api.ConditionalApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConditionalCancel**](ConditionalApi.md#conditionalcancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**ConditionalCancelAll**](ConditionalApi.md#conditionalcancelall) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**ConditionalGetOrders**](ConditionalApi.md#conditionalgetorders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**ConditionalNew**](ConditionalApi.md#conditionalnew) | **POST** /open-api/stop-order/create | Place a new conditional order.
[**ConditionalReplace**](ConditionalApi.md#conditionalreplace) | **POST** /open-api/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


<a name="conditionalcancel"></a>
# **ConditionalCancel**
> Object ConditionalCancel (string stopOrderId)

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
            var stopOrderId = stopOrderId_example;  // string | Order ID of conditional order.

            try
            {
                // Cancel conditional order.
                Object result = apiInstance.ConditionalCancel(stopOrderId);
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
 **stopOrderId** | **string**| Order ID of conditional order. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="conditionalgetorders"></a>
# **ConditionalGetOrders**
> Object ConditionalGetOrders (string stopOrderId = null, string orderLinkId = null, string symbol = null, string order = null, decimal? page = null, decimal? limit = null)

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
            var stopOrderId = stopOrderId_example;  // string | Order ID of conditional order. (optional) 
            var orderLinkId = orderLinkId_example;  // string | Agency customized order ID. (optional) 
            var symbol = symbol_example;  // string | Contract type. Default BTCUSD. (optional) 
            var order = order_example;  // string | Sort orders by creation date (optional) 
            var page = 8.14;  // decimal? | Page. Default getting first page data (optional) 
            var limit = 8.14;  // decimal? | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional) 

            try
            {
                // Get my conditional order list.
                Object result = apiInstance.ConditionalGetOrders(stopOrderId, orderLinkId, symbol, order, page, limit);
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
 **stopOrderId** | **string**| Order ID of conditional order. | [optional] 
 **orderLinkId** | **string**| Agency customized order ID. | [optional] 
 **symbol** | **string**| Contract type. Default BTCUSD. | [optional] 
 **order** | **string**| Sort orders by creation date | [optional] 
 **page** | **decimal?**| Page. Default getting first page data | [optional] 
 **limit** | **decimal?**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

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
> Object ConditionalNew (string side, string symbol, string orderType, decimal? qty, double? basePrice, double? stopPx, string timeInForce, double? price = null, string triggerBy = null, bool? closeOnTrigger = null, string orderLinkId = null)

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
            var qty = 8.14;  // decimal? | Order quantity.
            var basePrice = 1.2;  // double? | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
            var stopPx = 1.2;  // double? | Trigger price.
            var timeInForce = timeInForce_example;  // string | Time in force.
            var price = 1.2;  // double? | Execution price for conditional order (optional) 
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
 **qty** | **decimal?**| Order quantity. | 
 **basePrice** | **double?**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stopPx** | **double?**| Trigger price. | 
 **timeInForce** | **string**| Time in force. | 
 **price** | **double?**| Execution price for conditional order | [optional] 
 **triggerBy** | **string**| Trigger price type. Default LastPrice. | [optional] 
 **closeOnTrigger** | **bool?**| close on trigger. | [optional] 
 **orderLinkId** | **string**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

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
> Object ConditionalReplace (string symbol, string stopOrderId = null, string orderId = null, decimal? pRQty = null, double? pRPrice = null, double? pRTriggerPrice = null)

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
            var orderId = orderId_example;  // string | Stop order ID. (optional) 
            var pRQty = 8.14;  // decimal? | Order quantity. (optional) 
            var pRPrice = 1.2;  // double? | Order price. (optional) 
            var pRTriggerPrice = 1.2;  // double? | Trigger price. (optional) 

            try
            {
                // Replace conditional order. Only incomplete orders can be modified. 
                Object result = apiInstance.ConditionalReplace(symbol, stopOrderId, orderId, pRQty, pRPrice, pRTriggerPrice);
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
 **orderId** | **string**| Stop order ID. | [optional] 
 **pRQty** | **decimal?**| Order quantity. | [optional] 
 **pRPrice** | **double?**| Order price. | [optional] 
 **pRTriggerPrice** | **double?**| Trigger price. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

