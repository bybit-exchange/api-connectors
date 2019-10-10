# \KlineApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KlineGet**](KlineApi.md#KlineGet) | **Get** /v2/public/kline/list | Query historical kline.


# **KlineGet**
> interface{} KlineGet(ctx, symbol, interval, from, optional)
Query historical kline.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
  **interval** | **string**| Kline interval. | 
  **from** | **float32**| from timestamp. | 
 **optional** | ***KlineGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a KlineGetOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **limit** | **optional.String**| Contract type. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

