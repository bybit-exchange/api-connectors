# \ConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConditionalCancel**](ConditionalApi.md#ConditionalCancel) | **Post** /v2/private/stop-order/cancel | Cancel conditional order.
[**ConditionalCancelAll**](ConditionalApi.md#ConditionalCancelAll) | **Post** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**ConditionalGetOrders**](ConditionalApi.md#ConditionalGetOrders) | **Get** /v2/private/stop-order/list | Get my conditional order list.
[**ConditionalNew**](ConditionalApi.md#ConditionalNew) | **Post** /v2/private/stop-order/create | Place a new conditional order.
[**ConditionalQuery**](ConditionalApi.md#ConditionalQuery) | **Get** /v2/private/stop-order | Query real-time stop order information.
[**ConditionalReplace**](ConditionalApi.md#ConditionalReplace) | **Post** /v2/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


# **ConditionalCancel**
> interface{} ConditionalCancel(ctx, symbol, optional)
Cancel conditional order.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
 **optional** | ***ConditionalCancelOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ConditionalCancelOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **stopOrderId** | **optional.String**| Order ID of conditional order. | 
 **orderLinkId** | **optional.String**| Agency customized order ID. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ConditionalCancelAll**
> interface{} ConditionalCancelAll(ctx, symbol)
Cancel conditional order.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ConditionalGetOrders**
> interface{} ConditionalGetOrders(ctx, symbol, optional)
Get my conditional order list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type | 
 **optional** | ***ConditionalGetOrdersOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ConditionalGetOrdersOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **stopOrderStatus** | **optional.String**| Stop order status. | 
 **limit** | **optional.Float32**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | 
 **direction** | **optional.String**| Search direction. prev: prev page, next: next page. Defaults to next | 
 **cursor** | **optional.String**| Page turning mark，Use return cursor,Sign use origin data, in request please urlencode | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ConditionalNew**
> interface{} ConditionalNew(ctx, side, symbol, orderType, qty, basePrice, stopPx, timeInForce, optional)
Place a new conditional order.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **side** | **string**| Side. | 
  **symbol** | **string**| Contract type. | 
  **orderType** | **string**| Conditional order type. | 
  **qty** | **string**| Order quantity. | 
  **basePrice** | **string**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
  **stopPx** | **string**| Trigger price. | 
  **timeInForce** | **string**| Time in force. | 
 **optional** | ***ConditionalNewOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ConditionalNewOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------







 **price** | **optional.String**| Execution price for conditional order | 
 **triggerBy** | **optional.String**| Trigger price type. Default LastPrice. | 
 **closeOnTrigger** | **optional.Bool**| close on trigger. | 
 **orderLinkId** | **optional.String**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ConditionalQuery**
> interface{} ConditionalQuery(ctx, optional)
Query real-time stop order information.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***ConditionalQueryOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ConditionalQueryOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **optional.String**| Order ID of conditional order. | 
 **orderLinkId** | **optional.String**| Agency customized order ID. | 
 **symbol** | **optional.String**| Contract type. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ConditionalReplace**
> interface{} ConditionalReplace(ctx, symbol, optional)
Replace conditional order. Only incomplete orders can be modified. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
 **optional** | ***ConditionalReplaceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ConditionalReplaceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **stopOrderId** | **optional.String**| Stop order ID. | 
 **orderLinkId** | **optional.String**| Order Link ID. | 
 **pRQty** | **optional.String**| Order quantity. | 
 **pRPrice** | **optional.String**| Order price. | 
 **pRTriggerPrice** | **optional.String**| Trigger price. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

