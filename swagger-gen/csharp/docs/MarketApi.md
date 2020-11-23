# IO.Swagger.Api.MarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MarketAccountRatio**](MarketApi.md#marketaccountratio) | **GET** /v2/public/account-ratio | Query Account Long Short Ratio
[**MarketBigDeal**](MarketApi.md#marketbigdeal) | **GET** /v2/public/big-deal | Query Big Deal
[**MarketLiqRecords**](MarketApi.md#marketliqrecords) | **GET** /v2/public/liq-records | Query liq records.
[**MarketOpenInterest**](MarketApi.md#marketopeninterest) | **GET** /v2/public/open-interest | Query Open Interest
[**MarketOrderbook**](MarketApi.md#marketorderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**MarketSymbolInfo**](MarketApi.md#marketsymbolinfo) | **GET** /v2/public/tickers | Get the latest information for symbol.
[**MarketTradingRecords**](MarketApi.md#markettradingrecords) | **GET** /v2/public/trading-records | Get recent trades


<a name="marketaccountratio"></a>
# **MarketAccountRatio**
> Object MarketAccountRatio (string symbol, string period, int? limit = null)

Query Account Long Short Ratio

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class MarketAccountRatioExample
    {
        public void main()
        {
            var apiInstance = new MarketApi();
            var symbol = symbol_example;  // string | Contract type.
            var period = period_example;  // string | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
            var limit = 56;  // int? | Limit for data size, max size is 500. Default size is 50 (optional) 

            try
            {
                // Query Account Long Short Ratio
                Object result = apiInstance.MarketAccountRatio(symbol, period, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MarketApi.MarketAccountRatio: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **period** | **string**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **int?**| Limit for data size, max size is 500. Default size is 50 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="marketbigdeal"></a>
# **MarketBigDeal**
> Object MarketBigDeal (string symbol, int? limit = null)

Query Big Deal

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class MarketBigDealExample
    {
        public void main()
        {
            var apiInstance = new MarketApi();
            var symbol = symbol_example;  // string | Contract type.
            var limit = 56;  // int? | Limit for data size, max size is 1000. Default size is 500 (optional) 

            try
            {
                // Query Big Deal
                Object result = apiInstance.MarketBigDeal(symbol, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MarketApi.MarketBigDeal: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **limit** | **int?**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="marketliqrecords"></a>
# **MarketLiqRecords**
> Object MarketLiqRecords (string symbol, int? from = null, int? limit = null, int? startTime = null, int? endTime = null)

Query liq records.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class MarketLiqRecordsExample
    {
        public void main()
        {
            var apiInstance = new MarketApi();
            var symbol = symbol_example;  // string | Contract type.
            var from = 56;  // int? | From ID. Default: return latest data (optional) 
            var limit = 56;  // int? | Limit for data size, max size is 1000. Default size is 500 (optional) 
            var startTime = 56;  // int? | Start timestamp point for result, in millisecond (optional) 
            var endTime = 56;  // int? | End timestamp point for result, in millisecond (optional) 

            try
            {
                // Query liq records.
                Object result = apiInstance.MarketLiqRecords(symbol, from, limit, startTime, endTime);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MarketApi.MarketLiqRecords: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **from** | **int?**| From ID. Default: return latest data | [optional] 
 **limit** | **int?**| Limit for data size, max size is 1000. Default size is 500 | [optional] 
 **startTime** | **int?**| Start timestamp point for result, in millisecond | [optional] 
 **endTime** | **int?**| End timestamp point for result, in millisecond | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="marketopeninterest"></a>
# **MarketOpenInterest**
> Object MarketOpenInterest (string symbol, string period, int? limit = null)

Query Open Interest

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class MarketOpenInterestExample
    {
        public void main()
        {
            var apiInstance = new MarketApi();
            var symbol = symbol_example;  // string | Contract type.
            var period = period_example;  // string | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
            var limit = 56;  // int? | Limit for data size, max size is 200. Default size is 50 (optional) 

            try
            {
                // Query Open Interest
                Object result = apiInstance.MarketOpenInterest(symbol, period, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MarketApi.MarketOpenInterest: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **period** | **string**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **int?**| Limit for data size, max size is 200. Default size is 50 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="marketorderbook"></a>
# **MarketOrderbook**
> Object MarketOrderbook (string symbol)

Get the orderbook.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class MarketOrderbookExample
    {
        public void main()
        {
            var apiInstance = new MarketApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Get the orderbook.
                Object result = apiInstance.MarketOrderbook(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MarketApi.MarketOrderbook: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="marketsymbolinfo"></a>
# **MarketSymbolInfo**
> Object MarketSymbolInfo (string symbol = null)

Get the latest information for symbol.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class MarketSymbolInfoExample
    {
        public void main()
        {
            var apiInstance = new MarketApi();
            var symbol = symbol_example;  // string | Contract type. (optional) 

            try
            {
                // Get the latest information for symbol.
                Object result = apiInstance.MarketSymbolInfo(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MarketApi.MarketSymbolInfo: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="markettradingrecords"></a>
# **MarketTradingRecords**
> Object MarketTradingRecords (string symbol, int? from = null, int? limit = null)

Get recent trades

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class MarketTradingRecordsExample
    {
        public void main()
        {
            var apiInstance = new MarketApi();
            var symbol = symbol_example;  // string | Contract type.
            var from = 56;  // int? | From ID. Default: return latest data (optional) 
            var limit = 56;  // int? | Number of results. Default 500; max 1000 (optional) 

            try
            {
                // Get recent trades
                Object result = apiInstance.MarketTradingRecords(symbol, from, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MarketApi.MarketTradingRecords: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **from** | **int?**| From ID. Default: return latest data | [optional] 
 **limit** | **int?**| Number of results. Default 500; max 1000 | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

