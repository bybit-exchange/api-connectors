# IO.Swagger.Api.FundingApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FundingGetRate**](FundingApi.md#fundinggetrate) | **GET** /open-api/funding/prev-funding | Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval&#39;s fund fee settlement is based on the previous interval&#39;s fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.
[**FundingPredicted**](FundingApi.md#fundingpredicted) | **GET** /open-api/funding/predicted-funding | Get predicted funding rate and funding fee.
[**FundingPredictedRate**](FundingApi.md#fundingpredictedrate) | **GET** /open-api/funding/prev-funding-rate | Get predicted funding rate and funding fee.


<a name="fundinggetrate"></a>
# **FundingGetRate**
> Object FundingGetRate (string symbol)

Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval's fund fee settlement is based on the previous interval's fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FundingGetRateExample
    {
        public void main()
        {
            var apiInstance = new FundingApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval's fund fee settlement is based on the previous interval's fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.
                Object result = apiInstance.FundingGetRate(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FundingApi.FundingGetRate: " + e.Message );
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="fundingpredicted"></a>
# **FundingPredicted**
> Object FundingPredicted (string symbol)

Get predicted funding rate and funding fee.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FundingPredictedExample
    {
        public void main()
        {
            var apiInstance = new FundingApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Get predicted funding rate and funding fee.
                Object result = apiInstance.FundingPredicted(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FundingApi.FundingPredicted: " + e.Message );
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="fundingpredictedrate"></a>
# **FundingPredictedRate**
> Object FundingPredictedRate (string symbol)

Get predicted funding rate and funding fee.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FundingPredictedRateExample
    {
        public void main()
        {
            var apiInstance = new FundingApi();
            var symbol = symbol_example;  // string | Contract type.

            try
            {
                // Get predicted funding rate and funding fee.
                Object result = apiInstance.FundingPredictedRate(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FundingApi.FundingPredictedRate: " + e.Message );
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

