# \LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearKlineGet**](LinearKlineApi.md#LinearKlineGet) | **Get** /public/linear/kline | Get kline
[**LinearKlineMarkPrice**](LinearKlineApi.md#LinearKlineMarkPrice) | **Get** /public/linear/mark-price-kline | Get kline


# **LinearKlineGet**
> interface{} LinearKlineGet(ctx, symbol, interval, from, optional)
Get kline

This will get kline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
  **interval** | **string**| Kline interval. | 
  **from** | **float32**| from timestamp. | 
 **optional** | ***LinearKlineGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearKlineGetOpts struct

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

# **LinearKlineMarkPrice**
> interface{} LinearKlineMarkPrice(ctx, symbol, interval, from, optional)
Get kline

This will get mark price kline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
  **interval** | **string**| Kline interval. | 
  **from** | **float32**| from timestamp. | 
 **optional** | ***LinearKlineMarkPriceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearKlineMarkPriceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **limit** | **optional.Float32**| Contract type. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

