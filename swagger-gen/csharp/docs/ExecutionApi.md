# IO.Swagger.Api.ExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecutionGetTrades**](ExecutionApi.md#executiongettrades) | **GET** /v2/private/execution/list | Get user’s trade records.
[**PositionsClosePnlRecords**](ExecutionApi.md#positionsclosepnlrecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records


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

            var apiInstance = new ExecutionApi();
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
                Debug.Print("Exception when calling ExecutionApi.PositionsClosePnlRecords: " + e.Message );
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

