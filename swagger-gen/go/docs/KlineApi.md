# \KlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KlineGet**](KlineApi.md#KlineGet) | **Get** /v2/public/kline/list | Query historical kline.
[**KlineMarkPrice**](KlineApi.md#KlineMarkPrice) | **Get** /v2/public/mark-price-kline | Query mark price kline.


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



 **limit** | **optional.Float32**| Contract type. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **KlineMarkPrice**
> interface{} KlineMarkPrice(ctx, symbol, interval, from, optional)
Query mark price kline.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
  **interval** | **string**| Data refresh interval | 
  **from** | **int32**| From timestamp in seconds | 
 **optional** | ***KlineMarkPriceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a KlineMarkPriceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **limit** | **optional.Int32**| Limit for data size, max size is 1000. Default size is 500 | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

