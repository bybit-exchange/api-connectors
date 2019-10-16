# IO.Swagger.Api.ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecutionGetTrades**](ExecutionApi.md#executiongettrades) | **GET** /v2/private/execution/list | Get user’s trade records.


<a name="executiongettrades"></a>
# **ExecutionGetTrades**
> Object ExecutionGetTrades (string orderId = null, string symbol = null, string startTime = null, string page = null, string limit = null)

Get user’s trade records.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ExecutionGetTradesExample
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

            var apiInstance = new ExecutionApi();
            var orderId = orderId_example;  // string | OrderID. If not provided, will return user’s trading records. (optional) 
            var symbol = symbol_example;  // string | Contract type. If order_id not provided, symbol is required. (optional) 
            var startTime = startTime_example;  // string | Start timestamp point for result. (optional) 
            var page = page_example;  // string | Page. Default getting first page data. (optional) 
            var limit = limit_example;  // string | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional) 

            try
            {
                // Get user’s trade records.
                Object result = apiInstance.ExecutionGetTrades(orderId, symbol, startTime, page, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ExecutionApi.ExecutionGetTrades: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string**| OrderID. If not provided, will return user’s trading records. | [optional] 
 **symbol** | **string**| Contract type. If order_id not provided, symbol is required. | [optional] 
 **startTime** | **string**| Start timestamp point for result. | [optional] 
 **page** | **string**| Page. Default getting first page data. | [optional] 
 **limit** | **string**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

