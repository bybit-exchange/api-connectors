# IO.Swagger.Api.KlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KlineGet**](KlineApi.md#klineget) | **GET** /v2/public/kline/list | Query historical kline.
[**KlineMarkPrice**](KlineApi.md#klinemarkprice) | **GET** /v2/public/mark-price-kline | Query mark price kline.


<a name="klineget"></a>
# **KlineGet**
> Object KlineGet (string symbol, string interval, decimal? from, decimal? limit = null)

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
            var limit = 8.14;  // decimal? | Contract type. (optional) 

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
 **limit** | **decimal?**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="klinemarkprice"></a>
# **KlineMarkPrice**
> Object KlineMarkPrice (string symbol, string interval, int? from, int? limit = null)

Query mark price kline.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class KlineMarkPriceExample
    {
        public void main()
        {
            var apiInstance = new KlineApi();
            var symbol = symbol_example;  // string | Contract type.
            var interval = interval_example;  // string | Data refresh interval
            var from = 56;  // int? | From timestamp in seconds
            var limit = 56;  // int? | Limit for data size, max size is 1000. Default size is 500 (optional) 

            try
            {
                // Query mark price kline.
                Object result = apiInstance.KlineMarkPrice(symbol, interval, from, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling KlineApi.KlineMarkPrice: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **interval** | **string**| Data refresh interval | 
 **from** | **int?**| From timestamp in seconds | 
 **limit** | **int?**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

