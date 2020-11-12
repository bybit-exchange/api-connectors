# SymbolApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**symbolGet**](SymbolApi.md#symbolGet) | **GET** /v2/public/symbols | Query Symbols.


<a name="symbolGet"></a>
# **symbolGet**
> Object symbolGet()

Query Symbols.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.SymbolApi;


SymbolApi apiInstance = new SymbolApi();
try {
    Object result = apiInstance.symbolGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SymbolApi#symbolGet");
    e.printStackTrace();
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

