# IO.Swagger.Api.PositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PositionsChangeMargin**](PositionsApi.md#positionschangemargin) | **POST** /position/change-position-margin | Update margin.
[**PositionsClosePnlRecords**](PositionsApi.md#positionsclosepnlrecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
[**PositionsMyPosition**](PositionsApi.md#positionsmyposition) | **GET** /v2/private/position/list | Get my position list.
[**PositionsSaveLeverage**](PositionsApi.md#positionssaveleverage) | **POST** /user/leverage/save | Change user leverage.
[**PositionsTradingStop**](PositionsApi.md#positionstradingstop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.


<a name="positionschangemargin"></a>
# **PositionsChangeMargin**
> Object PositionsChangeMargin (string symbol, string margin)

Update margin.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PositionsChangeMarginExample
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

            var apiInstance = new PositionsApi();
            var symbol = symbol_example;  // string | Contract type which you want update its margin
            var margin = margin_example;  // string | New margin you want set

            try
            {
                // Update margin.
                Object result = apiInstance.PositionsChangeMargin(symbol, margin);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PositionsApi.PositionsChangeMargin: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type which you want update its margin | 
 **margin** | **string**| New margin you want set | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="positionsclosepnlrecords"></a>
# **PositionsClosePnlRecords**
> Object PositionsClosePnlRecords (string symbol, int? startTime = null, int? endTime = null, string execType = null, int? page = null, int? limit = null)

Get user's closed profit and loss records

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PositionsClosePnlRecordsExample
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

            var apiInstance = new PositionsApi();
            var symbol = symbol_example;  // string | Contract type
            var startTime = 56;  // int? | Start timestamp point for result, in second (optional) 
            var endTime = 56;  // int? | End timestamp point for result, in second (optional) 
            var execType = execType_example;  // string | Execution type (optional) 
            var page = 56;  // int? | Page. By default, gets first page of data. Maximum of 50 pages (optional) 
            var limit = 56;  // int? | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional) 

            try
            {
                // Get user's closed profit and loss records
                Object result = apiInstance.PositionsClosePnlRecords(symbol, startTime, endTime, execType, page, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PositionsApi.PositionsClosePnlRecords: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type | 
 **startTime** | **int?**| Start timestamp point for result, in second | [optional] 
 **endTime** | **int?**| End timestamp point for result, in second | [optional] 
 **execType** | **string**| Execution type | [optional] 
 **page** | **int?**| Page. By default, gets first page of data. Maximum of 50 pages | [optional] 
 **limit** | **int?**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="positionsmyposition"></a>
# **PositionsMyPosition**
> Object PositionsMyPosition (string symbol = null)

Get my position list.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PositionsMyPositionExample
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

            var apiInstance = new PositionsApi();
            var symbol = symbol_example;  // string | Contract type which you want update its margin (optional) 

            try
            {
                // Get my position list.
                Object result = apiInstance.PositionsMyPosition(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PositionsApi.PositionsMyPosition: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type which you want update its margin | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="positionssaveleverage"></a>
# **PositionsSaveLeverage**
> Object PositionsSaveLeverage (string symbol, string leverage)

Change user leverage.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PositionsSaveLeverageExample
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

            var apiInstance = new PositionsApi();
            var symbol = symbol_example;  // string | A symbol which you want change its leverage
            var leverage = leverage_example;  // string | New leverage you want set

            try
            {
                // Change user leverage.
                Object result = apiInstance.PositionsSaveLeverage(symbol, leverage);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PositionsApi.PositionsSaveLeverage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| A symbol which you want change its leverage | 
 **leverage** | **string**| New leverage you want set | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="positionstradingstop"></a>
# **PositionsTradingStop**
> Object PositionsTradingStop (string symbol, string takeProfit = null, string stopLoss = null, string trailingStop = null, string newTrailingActive = null)

Set Trading-Stop Condition.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PositionsTradingStopExample
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

            var apiInstance = new PositionsApi();
            var symbol = symbol_example;  // string | Contract type
            var takeProfit = takeProfit_example;  // string | Not less than 0, 0 means cancel TP (optional) 
            var stopLoss = stopLoss_example;  // string | Not less than 0, 0 means cancel SL (optional) 
            var trailingStop = trailingStop_example;  // string | Not less than 0, 0 means cancel TS (optional) 
            var newTrailingActive = newTrailingActive_example;  // string | Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. (optional) 

            try
            {
                // Set Trading-Stop Condition.
                Object result = apiInstance.PositionsTradingStop(symbol, takeProfit, stopLoss, trailingStop, newTrailingActive);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PositionsApi.PositionsTradingStop: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type | 
 **takeProfit** | **string**| Not less than 0, 0 means cancel TP | [optional] 
 **stopLoss** | **string**| Not less than 0, 0 means cancel SL | [optional] 
 **trailingStop** | **string**| Not less than 0, 0 means cancel TS | [optional] 
 **newTrailingActive** | **string**| Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

