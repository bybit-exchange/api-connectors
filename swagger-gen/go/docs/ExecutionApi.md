# \ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecutionGetTrades**](ExecutionApi.md#ExecutionGetTrades) | **Get** /v2/private/execution/list | Get user’s trade records.


# **ExecutionGetTrades**
> interface{} ExecutionGetTrades(ctx, optional)
Get user’s trade records.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***ExecutionGetTradesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ExecutionGetTradesOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **optional.String**| OrderID. If not provided, will return user’s trading records. | 
 **symbol** | **optional.String**| Contract type. If order_id not provided, symbol is required. | 
 **startTime** | **optional.String**| Start timestamp point for result. | 
 **page** | **optional.String**| Page. Default getting first page data. | 
 **limit** | **optional.String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

