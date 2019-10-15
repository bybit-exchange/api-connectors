# IO.Swagger.Api.MarketApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MarketOrderbook**](MarketApi.md#marketorderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**MarketSymbolInfo**](MarketApi.md#marketsymbolinfo) | **GET** /v2/public/tickers | Get the latest information for symbol.


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
> Object MarketSymbolInfo ()

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

            try
            {
                // Get the latest information for symbol.
                Object result = apiInstance.MarketSymbolInfo();
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
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

