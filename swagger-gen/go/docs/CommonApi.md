# \CommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommonAnnouncements**](CommonApi.md#CommonAnnouncements) | **Get** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[**CommonGetLcp**](CommonApi.md#CommonGetLcp) | **Get** /v2/private/account/lcp | Query LCP info.
[**CommonGetTime**](CommonApi.md#CommonGetTime) | **Get** /v2/public/time | Get bybit server time.


# **CommonAnnouncements**
> interface{} CommonAnnouncements(ctx, )
Get Bybit OpenAPI announcements in the last 30 days in reverse order.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CommonGetLcp**
> interface{} CommonGetLcp(ctx, symbol)
Query LCP info.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CommonGetTime**
> interface{} CommonGetTime(ctx, )
Get bybit server time.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

