# \ExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecutionGetTrades**](ExecutionApi.md#ExecutionGetTrades) | **Get** /v2/private/execution/list | Get the trade records of a order.


# **ExecutionGetTrades**
> interface{} ExecutionGetTrades(ctx, orderId)
Get the trade records of a order.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **orderId** | **string**| orderID. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

