# IO.Swagger.Api.LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearKlineGet**](LinearKlineApi.md#linearklineget) | **GET** /public/linear/kline | Get kline
[**LinearKlineMarkPrice**](LinearKlineApi.md#linearklinemarkprice) | **GET** /public/linear/mark-price-kline | Get kline


<a name="linearklineget"></a>
# **LinearKlineGet**
> Object LinearKlineGet (string symbol, string interval, decimal? from, decimal? limit = null)

Get kline

This will get kline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearKlineGetExample
    {
        public void main()
        {
            var apiInstance = new LinearKlineApi();
            var symbol = symbol_example;  // string | Contract type.
            var interval = interval_example;  // string | Kline interval.
            var from = 8.14;  // decimal? | from timestamp.
            var limit = 8.14;  // decimal? | Contract type. (optional) 

            try
            {
                // Get kline
                Object result = apiInstance.LinearKlineGet(symbol, interval, from, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearKlineApi.LinearKlineGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **interval** | **string**| Kline interval. | 
 **from** | **decimal?**| from timestamp. | 
 **limit** | **decimal?**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linearklinemarkprice"></a>
# **LinearKlineMarkPrice**
> Object LinearKlineMarkPrice (string symbol, string interval, decimal? from, decimal? limit = null)

Get kline

This will get mark price kline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearKlineMarkPriceExample
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

            var apiInstance = new LinearKlineApi();
            var symbol = symbol_example;  // string | Contract type.
            var interval = interval_example;  // string | Kline interval.
            var from = 8.14;  // decimal? | from timestamp.
            var limit = 8.14;  // decimal? | Contract type. (optional) 

            try
            {
                // Get kline
                Object result = apiInstance.LinearKlineMarkPrice(symbol, interval, from, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearKlineApi.LinearKlineMarkPrice: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **interval** | **string**| Kline interval. | 
 **from** | **decimal?**| from timestamp. | 
 **limit** | **decimal?**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

