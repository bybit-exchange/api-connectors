# IO.Swagger.Api.WalletApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**WalletExchangeOrder**](WalletApi.md#walletexchangeorder) | **GET** /v2/private/exchange-order/list | Asset Exchange Records
[**WalletGetBalance**](WalletApi.md#walletgetbalance) | **GET** /v2/private/wallet/balance | get wallet balance info
[**WalletGetRecords**](WalletApi.md#walletgetrecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records
[**WalletGetRiskLimit**](WalletApi.md#walletgetrisklimit) | **GET** /open-api/wallet/risk-limit/list | Get risk limit.
[**WalletSetRiskLimit**](WalletApi.md#walletsetrisklimit) | **POST** /open-api/wallet/risk-limit | Set risk limit
[**WalletWithdraw**](WalletApi.md#walletwithdraw) | **GET** /open-api/wallet/withdraw/list | Get wallet fund records


<a name="walletexchangeorder"></a>
# **WalletExchangeOrder**
> Object WalletExchangeOrder (decimal? limit = null, decimal? from = null, string direction = null)

Asset Exchange Records

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class WalletExchangeOrderExample
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

            var apiInstance = new WalletApi();
            var limit = 8.14;  // decimal? | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional) 
            var from = 8.14;  // decimal? | Start ID. By default, returns the latest IDs (optional) 
            var direction = direction_example;  // string | Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next (optional) 

            try
            {
                // Asset Exchange Records
                Object result = apiInstance.WalletExchangeOrder(limit, from, direction);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WalletApi.WalletExchangeOrder: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **decimal?**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **from** | **decimal?**| Start ID. By default, returns the latest IDs | [optional] 
 **direction** | **string**| Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="walletgetbalance"></a>
# **WalletGetBalance**
> Object WalletGetBalance (string coin = null)

get wallet balance info

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class WalletGetBalanceExample
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

            var apiInstance = new WalletApi();
            var coin = coin_example;  // string | Coin.enum {BTC,EOS,XRP,ETH,USDT} (optional) 

            try
            {
                // get wallet balance info
                Object result = apiInstance.WalletGetBalance(coin);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WalletApi.WalletGetBalance: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **string**| Coin.enum {BTC,EOS,XRP,ETH,USDT} | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="walletgetrecords"></a>
# **WalletGetRecords**
> Object WalletGetRecords (string startDate = null, string endDate = null, string currency = null, string walletFundType = null, string page = null, string limit = null)

Get wallet fund records

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class WalletGetRecordsExample
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

            var apiInstance = new WalletApi();
            var startDate = startDate_example;  // string | Start point for result (optional) 
            var endDate = endDate_example;  // string | End point for result (optional) 
            var currency = currency_example;  // string | Currency type (optional) 
            var walletFundType = walletFundType_example;  // string | wallet fund type (optional) 
            var page = page_example;  // string | Page. Default getting first page data (optional) 
            var limit = limit_example;  // string | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional) 

            try
            {
                // Get wallet fund records
                Object result = apiInstance.WalletGetRecords(startDate, endDate, currency, walletFundType, page, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WalletApi.WalletGetRecords: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string**| Start point for result | [optional] 
 **endDate** | **string**| End point for result | [optional] 
 **currency** | **string**| Currency type | [optional] 
 **walletFundType** | **string**| wallet fund type | [optional] 
 **page** | **string**| Page. Default getting first page data | [optional] 
 **limit** | **string**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="walletgetrisklimit"></a>
# **WalletGetRiskLimit**
> Object WalletGetRiskLimit ()

Get risk limit.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class WalletGetRiskLimitExample
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

            var apiInstance = new WalletApi();

            try
            {
                // Get risk limit.
                Object result = apiInstance.WalletGetRiskLimit();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WalletApi.WalletGetRiskLimit: " + e.Message );
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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="walletsetrisklimit"></a>
# **WalletSetRiskLimit**
> Object WalletSetRiskLimit (string symbol, decimal? riskId)

Set risk limit

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class WalletSetRiskLimitExample
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

            var apiInstance = new WalletApi();
            var symbol = symbol_example;  // string | Contract type.
            var riskId = 8.14;  // decimal? | Risk ID. Can be found with the Get risk limit list endpoint.

            try
            {
                // Set risk limit
                Object result = apiInstance.WalletSetRiskLimit(symbol, riskId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WalletApi.WalletSetRiskLimit: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | 
 **riskId** | **decimal?**| Risk ID. Can be found with the Get risk limit list endpoint. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="walletwithdraw"></a>
# **WalletWithdraw**
> Object WalletWithdraw (string startDate = null, string endDate = null, string coin = null, string status = null, string page = null, string limit = null)

Get wallet fund records

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class WalletWithdrawExample
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

            var apiInstance = new WalletApi();
            var startDate = startDate_example;  // string | Start point for result (optional) 
            var endDate = endDate_example;  // string | End point for result (optional) 
            var coin = coin_example;  // string | Currency (optional) 
            var status = status_example;  // string | Withdraw status (optional) 
            var page = page_example;  // string | Page. Default getting first page data (optional) 
            var limit = limit_example;  // string | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional) 

            try
            {
                // Get wallet fund records
                Object result = apiInstance.WalletWithdraw(startDate, endDate, coin, status, page, limit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WalletApi.WalletWithdraw: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string**| Start point for result | [optional] 
 **endDate** | **string**| End point for result | [optional] 
 **coin** | **string**| Currency | [optional] 
 **status** | **string**| Withdraw status | [optional] 
 **page** | **string**| Page. Default getting first page data | [optional] 
 **limit** | **string**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

