# CommonApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commonGet**](CommonApi.md#commonGet) | **GET** /v2/public/time | Get bybit server time.


<a name="commonGet"></a>
# **commonGet**
> Object commonGet()

Get bybit server time.

### Example
```java
// Import classes:
//import io.swagger.client.api.CommonApi;

CommonApi apiInstance = new CommonApi();
try {
    Object result = apiInstance.commonGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CommonApi#commonGet");
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

