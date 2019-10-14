# IO.Swagger.Api.CommonApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommonGet**](CommonApi.md#commonget) | **GET** /v2/public/time | Get bybit server time.


<a name="commonget"></a>
# **CommonGet**
> Object CommonGet ()

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
    public class CommonGetExample
    {
        public void main()
        {
            var apiInstance = new CommonApi();

            try
            {
                // Get bybit server time.
                Object result = apiInstance.CommonGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CommonApi.CommonGet: " + e.Message );
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

