# \LinearPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearPositionsChangeMargin**](LinearPositionsApi.md#LinearPositionsChangeMargin) | **Post** /private/linear/position/add-margin | Add/Reduce Margin
[**LinearPositionsClosePnlRecords**](LinearPositionsApi.md#LinearPositionsClosePnlRecords) | **Get** /private/linear/trade/closed-pnl/list | Get user&#39;s closed profit and loss records.
[**LinearPositionsMyPosition**](LinearPositionsApi.md#LinearPositionsMyPosition) | **Get** /private/linear/position/list | Get my position list.
[**LinearPositionsSaveLeverage**](LinearPositionsApi.md#LinearPositionsSaveLeverage) | **Post** /private/linear/position/set-leverage | Set leverage
[**LinearPositionsSetAutoAddMargin**](LinearPositionsApi.md#LinearPositionsSetAutoAddMargin) | **Post** /private/linear/position/set-auto-add-margin | Set auto add margin
[**LinearPositionsSwitchIsolated**](LinearPositionsApi.md#LinearPositionsSwitchIsolated) | **Post** /private/linear/position/switch-isolated | Switch isolated
[**LinearPositionsSwitchMode**](LinearPositionsApi.md#LinearPositionsSwitchMode) | **Post** /private/linear/tpsl/switch-mode | Switch Mode
[**LinearPositionsTradingStop**](LinearPositionsApi.md#LinearPositionsTradingStop) | **Post** /private/linear/position/trading-stop | Set tradingStop


# **LinearPositionsChangeMargin**
> interface{} LinearPositionsChangeMargin(ctx, optional)
Add/Reduce Margin

This will Add/Reduce Margin

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsChangeMarginOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsChangeMarginOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **side** | **optional.String**|  | 
 **margin** | **optional.Float64**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearPositionsClosePnlRecords**
> interface{} LinearPositionsClosePnlRecords(ctx, optional)
Get user's closed profit and loss records.

This will get user's closed profit and loss records.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsClosePnlRecordsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsClosePnlRecordsOpts struct

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

# **LinearPositionsMyPosition**
> interface{} LinearPositionsMyPosition(ctx, optional)
Get my position list.

This will get my position list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsMyPositionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsMyPositionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearPositionsSaveLeverage**
> interface{} LinearPositionsSaveLeverage(ctx, optional)
Set leverage

This will Set Leverage

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsSaveLeverageOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsSaveLeverageOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **buyLeverage** | **optional.Float64**|  | 
 **sellLeverage** | **optional.Float64**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearPositionsSetAutoAddMargin**
> interface{} LinearPositionsSetAutoAddMargin(ctx, optional)
Set auto add margin

This will Set auto add margin

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsSetAutoAddMarginOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsSetAutoAddMarginOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **side** | **optional.String**|  | 
 **autoAddMargin** | **optional.Bool**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearPositionsSwitchIsolated**
> interface{} LinearPositionsSwitchIsolated(ctx, optional)
Switch isolated

This will switch isolated

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsSwitchIsolatedOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsSwitchIsolatedOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **isIsolated** | **optional.Bool**|  | 
 **buyLeverage** | **optional.Float64**|  | 
 **sellLeverage** | **optional.Float64**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearPositionsSwitchMode**
> interface{} LinearPositionsSwitchMode(ctx, optional)
Switch Mode

This will Switch TP/SL Mode

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsSwitchModeOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsSwitchModeOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **tpSlMode** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearPositionsTradingStop**
> interface{} LinearPositionsTradingStop(ctx, optional)
Set tradingStop

This will set tradingStop

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearPositionsTradingStopOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearPositionsTradingStopOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **side** | **optional.String**|  | 
 **takeProfit** | **optional.Float64**|  | 
 **stopLoss** | **optional.Float64**|  | 
 **trailingStop** | **optional.Float64**|  | 
 **tpTriggerBy** | **optional.String**|  | 
 **slTriggerBy** | **optional.String**|  | 
 **slSize** | **optional.Float64**|  | 
 **tpSize** | **optional.Float64**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

