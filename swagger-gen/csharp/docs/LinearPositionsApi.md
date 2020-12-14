# IO.Swagger.Api.LinearPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearPositionsChangeMargin**](LinearPositionsApi.md#linearpositionschangemargin) | **POST** /private/linear/position/add-margin | Add/Reduce Margin
[**LinearPositionsClosePnlRecords**](LinearPositionsApi.md#linearpositionsclosepnlrecords) | **GET** /private/linear/trade/closed-pnl/list | Get user&#39;s closed profit and loss records.
[**LinearPositionsMyPosition**](LinearPositionsApi.md#linearpositionsmyposition) | **GET** /private/linear/position/list | Get my position list.
[**LinearPositionsSaveLeverage**](LinearPositionsApi.md#linearpositionssaveleverage) | **POST** /private/linear/position/set-leverage | Set leverage
[**LinearPositionsSetAutoAddMargin**](LinearPositionsApi.md#linearpositionssetautoaddmargin) | **POST** /private/linear/position/set-auto-add-margin | Set auto add margin
[**LinearPositionsSwitchIsolated**](LinearPositionsApi.md#linearpositionsswitchisolated) | **POST** /private/linear/position/switch-isolated | Switch isolated
[**LinearPositionsSwitchMode**](LinearPositionsApi.md#linearpositionsswitchmode) | **POST** /private/linear/tpsl/switch-mode | Switch Mode
[**LinearPositionsTradingStop**](LinearPositionsApi.md#linearpositionstradingstop) | **POST** /private/linear/position/trading-stop | Set tradingStop


<a name="linearpositionschangemargin"></a>
# **LinearPositionsChangeMargin**
> Object LinearPositionsChangeMargin (string symbol = null, string side = null, double? margin = null)

Add/Reduce Margin

This will Add/Reduce Margin

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsChangeMarginExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 
            var side = side_example;  // string |  (optional) 
            var margin = 1.2;  // double? |  (optional) 

            try
            {
                // Add/Reduce Margin
                Object result = apiInstance.LinearPositionsChangeMargin(symbol, side, margin);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsChangeMargin: " + e.Message );
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
 **margin** | **double?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearpositionsclosepnlrecords"></a>
# **LinearPositionsClosePnlRecords**
> Object LinearPositionsClosePnlRecords (string symbol = null, long? startTime = null, long? endTime = null, string execType = null, long? page = null, long? limit = null)

Get user's closed profit and loss records.

This will get user's closed profit and loss records.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsClosePnlRecordsExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 
            var startTime = 789;  // long? |  (optional) 
            var endTime = 789;  // long? |  (optional) 
            var execType = execType_example;  // string |  (optional) 
            var page = 789;  // long? |  (optional) 
            var limit = 789;  // long? |  (optional) 

            try
            {
                // Get user's closed profit and loss records.
                Object result = apiInstance.LinearPositionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsClosePnlRecords: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 
 **startTime** | **long?**|  | [optional] 
 **endTime** | **long?**|  | [optional] 
 **execType** | **string**|  | [optional] 
 **page** | **long?**|  | [optional] 
 **limit** | **long?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearpositionsmyposition"></a>
# **LinearPositionsMyPosition**
> Object LinearPositionsMyPosition (string symbol = null)

Get my position list.

This will get my position list.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsMyPositionExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 

            try
            {
                // Get my position list.
                Object result = apiInstance.LinearPositionsMyPosition(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsMyPosition: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearpositionssaveleverage"></a>
# **LinearPositionsSaveLeverage**
> Object LinearPositionsSaveLeverage (string symbol = null, double? buyLeverage = null, double? sellLeverage = null)

Set leverage

This will Set Leverage

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsSaveLeverageExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 
            var buyLeverage = 1.2;  // double? |  (optional) 
            var sellLeverage = 1.2;  // double? |  (optional) 

            try
            {
                // Set leverage
                Object result = apiInstance.LinearPositionsSaveLeverage(symbol, buyLeverage, sellLeverage);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsSaveLeverage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 
 **buyLeverage** | **double?**|  | [optional] 
 **sellLeverage** | **double?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearpositionssetautoaddmargin"></a>
# **LinearPositionsSetAutoAddMargin**
> Object LinearPositionsSetAutoAddMargin (string symbol = null, string side = null, bool? autoAddMargin = null)

Set auto add margin

This will Set auto add margin

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsSetAutoAddMarginExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 
            var side = side_example;  // string |  (optional) 
            var autoAddMargin = true;  // bool? |  (optional) 

            try
            {
                // Set auto add margin
                Object result = apiInstance.LinearPositionsSetAutoAddMargin(symbol, side, autoAddMargin);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsSetAutoAddMargin: " + e.Message );
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
 **autoAddMargin** | **bool?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearpositionsswitchisolated"></a>
# **LinearPositionsSwitchIsolated**
> Object LinearPositionsSwitchIsolated (string symbol = null, bool? isIsolated = null, double? buyLeverage = null, double? sellLeverage = null)

Switch isolated

This will switch isolated

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsSwitchIsolatedExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 
            var isIsolated = true;  // bool? |  (optional) 
            var buyLeverage = 1.2;  // double? |  (optional) 
            var sellLeverage = 1.2;  // double? |  (optional) 

            try
            {
                // Switch isolated
                Object result = apiInstance.LinearPositionsSwitchIsolated(symbol, isIsolated, buyLeverage, sellLeverage);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsSwitchIsolated: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 
 **isIsolated** | **bool?**|  | [optional] 
 **buyLeverage** | **double?**|  | [optional] 
 **sellLeverage** | **double?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearpositionsswitchmode"></a>
# **LinearPositionsSwitchMode**
> Object LinearPositionsSwitchMode (string symbol = null, string tpSlMode = null)

Switch Mode

This will Switch TP/SL Mode

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsSwitchModeExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 
            var tpSlMode = tpSlMode_example;  // string |  (optional) 

            try
            {
                // Switch Mode
                Object result = apiInstance.LinearPositionsSwitchMode(symbol, tpSlMode);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsSwitchMode: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional] 
 **tpSlMode** | **string**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearpositionstradingstop"></a>
# **LinearPositionsTradingStop**
> Object LinearPositionsTradingStop (string symbol = null, string side = null, double? takeProfit = null, double? stopLoss = null, double? trailingStop = null, string tpTriggerBy = null, string slTriggerBy = null, double? slSize = null, double? tpSize = null)

Set tradingStop

This will set tradingStop

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearPositionsTradingStopExample
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

            var apiInstance = new LinearPositionsApi();
            var symbol = symbol_example;  // string |  (optional) 
            var side = side_example;  // string |  (optional) 
            var takeProfit = 1.2;  // double? |  (optional) 
            var stopLoss = 1.2;  // double? |  (optional) 
            var trailingStop = 1.2;  // double? |  (optional) 
            var tpTriggerBy = tpTriggerBy_example;  // string |  (optional) 
            var slTriggerBy = slTriggerBy_example;  // string |  (optional) 
            var slSize = 1.2;  // double? |  (optional) 
            var tpSize = 1.2;  // double? |  (optional) 

            try
            {
                // Set tradingStop
                Object result = apiInstance.LinearPositionsTradingStop(symbol, side, takeProfit, stopLoss, trailingStop, tpTriggerBy, slTriggerBy, slSize, tpSize);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearPositionsApi.LinearPositionsTradingStop: " + e.Message );
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
 **takeProfit** | **double?**|  | [optional] 
 **stopLoss** | **double?**|  | [optional] 
 **trailingStop** | **double?**|  | [optional] 
 **tpTriggerBy** | **string**|  | [optional] 
 **slTriggerBy** | **string**|  | [optional] 
 **slSize** | **double?**|  | [optional] 
 **tpSize** | **double?**|  | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

