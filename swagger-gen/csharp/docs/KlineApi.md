# IO.Swagger.Api.KlineApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KlineGet**](KlineApi.md#klineget) | **GET** /v2/public/kline/list | Query historical kline.


<a name="klineget"></a>
# **KlineGet**
> Object KlineGet (string symbol, string interval, decimal? from, string limit = null)

Query historical kline.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class KlineGetExample
    {
        public void main()
        {
            var apiInstance = new KlineApi();
            var symbol = symbol_example;  // string | Contract type.
            var interval = interval_example;  // string | Kline interval.
            var from = 8.14;  // decimal? | from timestamp.
            var limit = limit_example;  // string | Contract type. (optional) 

            try
            {
                // Query historical kline.
                Object result = apiInstance.KlineGet(symbol, interval, from, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling KlineApi.KlineGet: " + e.Message );
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
 **limit** | **string**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

