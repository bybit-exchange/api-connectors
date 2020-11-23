# IO.Swagger.Api.CommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommonAnnouncements**](CommonApi.md#commonannouncements) | **GET** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[**CommonGetLcp**](CommonApi.md#commongetlcp) | **GET** /v2/private/account/lcp | Query LCP info.
[**CommonGetTime**](CommonApi.md#commongettime) | **GET** /v2/public/time | Get bybit server time.


<a name="commonannouncements"></a>
# **CommonAnnouncements**
> Object CommonAnnouncements ()

Get Bybit OpenAPI announcements in the last 30 days in reverse order.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class CommonAnnouncementsExample
    {
        public void main()
        {
            var apiInstance = new CommonApi();

            try
            {
                // Get Bybit OpenAPI announcements in the last 30 days in reverse order.
                Object result = apiInstance.CommonAnnouncements();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CommonApi.CommonAnnouncements: " + e.Message );
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

<a name="commongetlcp"></a>
# **CommonGetLcp**
> Object CommonGetLcp (string symbol)

Query LCP info.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class CommonGetLcpExample
    {
        public void main()
        {
            var apiInstance = new CommonApi();
            var symbol = symbol_example;  // string | Contract type

            try
            {
                // Query LCP info.
                Object result = apiInstance.CommonGetLcp(symbol);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CommonApi.CommonGetLcp: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="commongettime"></a>
# **CommonGetTime**
> Object CommonGetTime ()

Get bybit server time.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class CommonGetTimeExample
    {
        public void main()
        {
            var apiInstance = new CommonApi();

            try
            {
                // Get bybit server time.
                Object result = apiInstance.CommonGetTime();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CommonApi.CommonGetTime: " + e.Message );
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

