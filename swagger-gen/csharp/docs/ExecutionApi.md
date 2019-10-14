# IO.Swagger.Api.ExecutionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecutionGetTrades**](ExecutionApi.md#executiongettrades) | **GET** /v2/private/execution/list | Get the trade records of a order.


<a name="executiongettrades"></a>
# **ExecutionGetTrades**
> Object ExecutionGetTrades (string orderId)

Get the trade records of a order.

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
            var apiInstance = new ExecutionApi();
            var orderId = orderId_example;  // string | orderID.

            try
            {
                // Get the trade records of a order.
                Object result = apiInstance.ExecutionGetTrades(orderId);
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
 **orderId** | **string**| orderID. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

