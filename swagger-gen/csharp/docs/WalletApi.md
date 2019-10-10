# IO.Swagger.Api.WalletApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**WalletGetRecords**](WalletApi.md#walletgetrecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records


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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

