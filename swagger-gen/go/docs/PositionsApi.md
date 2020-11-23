# \PositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PositionsChangeMargin**](PositionsApi.md#PositionsChangeMargin) | **Post** /position/change-position-margin | Update margin.
[**PositionsClosePnlRecords**](PositionsApi.md#PositionsClosePnlRecords) | **Get** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
[**PositionsMyPosition**](PositionsApi.md#PositionsMyPosition) | **Get** /v2/private/position/list | Get my position list.
[**PositionsSaveLeverage**](PositionsApi.md#PositionsSaveLeverage) | **Post** /user/leverage/save | Change user leverage.
[**PositionsTradingStop**](PositionsApi.md#PositionsTradingStop) | **Post** /open-api/position/trading-stop | Set Trading-Stop Condition.


# **PositionsChangeMargin**
> interface{} PositionsChangeMargin(ctx, symbol, margin)
Update margin.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type which you want update its margin | 
  **margin** | **string**| New margin you want set | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

# **PositionsMyPosition**
> interface{} PositionsMyPosition(ctx, optional)
Get my position list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***PositionsMyPositionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PositionsMyPositionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**| Contract type which you want update its margin | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PositionsSaveLeverage**
> interface{} PositionsSaveLeverage(ctx, symbol, leverage)
Change user leverage.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| A symbol which you want change its leverage | 
  **leverage** | **string**| New leverage you want set | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PositionsTradingStop**
> interface{} PositionsTradingStop(ctx, symbol, optional)
Set Trading-Stop Condition.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type | 
 **optional** | ***PositionsTradingStopOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PositionsTradingStopOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **takeProfit** | **optional.String**| Not less than 0, 0 means cancel TP | 
 **stopLoss** | **optional.String**| Not less than 0, 0 means cancel SL | 
 **trailingStop** | **optional.String**| Not less than 0, 0 means cancel TS | 
 **newTrailingActive** | **optional.String**| Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

