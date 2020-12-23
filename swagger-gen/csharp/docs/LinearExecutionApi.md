# IO.Swagger.Api.LinearExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearExecutionGetTrades**](LinearExecutionApi.md#linearexecutiongettrades) | **GET** /private/linear/trade/execution/list | Get user&#39;s trading records.


<a name="linearexecutiongettrades"></a>
# **LinearExecutionGetTrades**
> Object LinearExecutionGetTrades (string symbol = null, long? startTime = null, long? endTime = null, string execType = null, long? page = null, long? limit = null)

Get user's trading records.

This will get user's trading records.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class LinearExecutionGetTradesExample
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

            var apiInstance = new LinearExecutionApi();
            var symbol = symbol_example;  // string |  (optional) 
            var startTime = 789;  // long? |  (optional) 
            var endTime = 789;  // long? |  (optional) 
            var execType = execType_example;  // string |  (optional) 
            var page = 789;  // long? |  (optional) 
            var limit = 789;  // long? |  (optional) 

            try
            {
                // Get user's trading records.
                Object result = apiInstance.LinearExecutionGetTrades(symbol, startTime, endTime, execType, page, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LinearExecutionApi.LinearExecutionGetTrades: " + e.Message );
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

