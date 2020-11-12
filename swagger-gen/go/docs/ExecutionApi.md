# \ExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecutionGetTrades**](ExecutionApi.md#ExecutionGetTrades) | **Get** /v2/private/execution/list | Get user’s trade records.
[**PositionsClosePnlRecords**](ExecutionApi.md#PositionsClosePnlRecords) | **Get** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records


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

# **PositionsClosePnlRecords**
> interface{} PositionsClosePnlRecords(ctx, symbol, optional)
Get user's closed profit and loss records

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type | 
 **optional** | ***PositionsClosePnlRecordsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PositionsClosePnlRecordsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **startTime** | **optional.Int32**| Start timestamp point for result, in second | 
 **endTime** | **optional.Int32**| End timestamp point for result, in second | 
 **execType** | **optional.String**| Execution type | 
 **page** | **optional.Int32**| Page. By default, gets first page of data. Maximum of 50 pages | 
 **limit** | **optional.Int32**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

