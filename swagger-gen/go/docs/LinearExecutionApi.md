# \LinearExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearExecutionGetTrades**](LinearExecutionApi.md#LinearExecutionGetTrades) | **Get** /private/linear/trade/execution/list | Get user&#39;s trading records.


# **LinearExecutionGetTrades**
> interface{} LinearExecutionGetTrades(ctx, optional)
Get user's trading records.

This will get user's trading records.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearExecutionGetTradesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearExecutionGetTradesOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **startTime** | **optional.Int64**|  | 
 **endTime** | **optional.Int64**|  | 
 **execType** | **optional.String**|  | 
 **page** | **optional.Int64**|  | 
 **limit** | **optional.Int64**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

