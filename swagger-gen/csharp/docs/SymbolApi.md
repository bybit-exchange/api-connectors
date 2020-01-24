# IO.Swagger.Api.SymbolApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SymbolGet**](SymbolApi.md#symbolget) | **GET** /v2/public/symbols | Query Symbols.


<a name="symbolget"></a>
# **SymbolGet**
> Object SymbolGet ()

Query Symbols.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class SymbolGetExample
    {
        public void main()
        {
            var apiInstance = new SymbolApi();

            try
            {
                // Query Symbols.
                Object result = apiInstance.SymbolGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SymbolApi.SymbolGet: " + e.Message );
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

