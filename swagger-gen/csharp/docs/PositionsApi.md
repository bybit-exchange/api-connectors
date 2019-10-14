# IO.Swagger.Api.PositionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PositionsChangeMargin**](PositionsApi.md#positionschangemargin) | **POST** /position/change-position-margin | Update margin.
[**PositionsMyPosition**](PositionsApi.md#positionsmyposition) | **GET** /position/list | Get my position list.
[**PositionsSaveLeverage**](PositionsApi.md#positionssaveleverage) | **POST** /user/leverage/save | Change user leverage.
[**PositionsTradingStop**](PositionsApi.md#positionstradingstop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.
[**PositionsUserLeverage**](PositionsApi.md#positionsuserleverage) | **GET** /user/leverage | Get user leverage setting.


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
            Configuration.Default.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("api-signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-signature", "Bearer");

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="positionsmyposition"></a>
# **PositionsMyPosition**
> Object PositionsMyPosition ()

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
            Configuration.Default.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("api-signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-signature", "Bearer");

            var apiInstance = new PositionsApi();

            try
            {
                // Get my position list.
                Object result = apiInstance.PositionsMyPosition();
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
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

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
            Configuration.Default.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("api-signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-signature", "Bearer");

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="positionstradingstop"></a>
# **PositionsTradingStop**
> Object PositionsTradingStop (string symbol, string takeProfit = null, string stopLoss = null, string trailingStop = null)

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
            Configuration.Default.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("api-signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-signature", "Bearer");

            var apiInstance = new PositionsApi();
            var symbol = symbol_example;  // string | Contract type
            var takeProfit = takeProfit_example;  // string | Not less than 0, 0 means cancel TP (optional) 
            var stopLoss = stopLoss_example;  // string | Not less than 0, 0 means cancel SL (optional) 
            var trailingStop = trailingStop_example;  // string | Not less than 0, 0 means cancel TS (optional) 

            try
            {
                // Set Trading-Stop Condition.
                Object result = apiInstance.PositionsTradingStop(symbol, takeProfit, stopLoss, trailingStop);
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

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="positionsuserleverage"></a>
# **PositionsUserLeverage**
> Object PositionsUserLeverage ()

Get user leverage setting.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PositionsUserLeverageExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: apiSignature
            Configuration.Default.AddApiKey("api-signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("api-signature", "Bearer");

            var apiInstance = new PositionsApi();

            try
            {
                // Get user leverage setting.
                Object result = apiInstance.PositionsUserLeverage();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PositionsApi.PositionsUserLeverage: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

