# \OrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrderCancel**](OrderApi.md#OrderCancel) | **Post** /v2/private/order/cancel | Get my active order list.
[**OrderCancelAll**](OrderApi.md#OrderCancelAll) | **Post** /v2/private/order/cancelAll | Get my active order list.
[**OrderGetOrders**](OrderApi.md#OrderGetOrders) | **Get** /v2/private/order/list | Get my active order list.
[**OrderNew**](OrderApi.md#OrderNew) | **Post** /v2/private/order/create | Place active order
[**OrderQuery**](OrderApi.md#OrderQuery) | **Get** /v2/private/order | Get my active order list.
[**OrderReplace**](OrderApi.md#OrderReplace) | **Post** /v2/private/order/replace | Replace active order. Only incomplete orders can be modified. 


# **OrderCancel**
> interface{} OrderCancel(ctx, symbol, optional)
Get my active order list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
 **optional** | ***OrderCancelOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a OrderCancelOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **orderId** | **optional.String**| Order ID | 
 **orderLinkId** | **optional.String**| Order link id. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderCancelAll**
> interface{} OrderCancelAll(ctx, symbol)
Get my active order list.

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

# **OrderGetOrders**
> interface{} OrderGetOrders(ctx, symbol, optional)
Get my active order list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. Default BTCUSD | 
 **optional** | ***OrderGetOrdersOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a OrderGetOrdersOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limit** | **optional.Float32**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | 
 **orderStatus** | **optional.String**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | 
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

# **OrderNew**
> interface{} OrderNew(ctx, side, symbol, orderType, qty, timeInForce, optional)
Place active order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **side** | **string**| Side | 
  **symbol** | **string**| Contract type. | 
  **orderType** | **string**| Active order type | 
  **qty** | **float32**|  | 
  **timeInForce** | **string**| Time in force | 
 **optional** | ***OrderNewOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a OrderNewOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





 **price** | **optional.Float64**| Order price. | 
 **takeProfit** | **optional.Float64**| take profit price | 
 **stopLoss** | **optional.Float64**| stop loss price | 
 **reduceOnly** | **optional.Bool**| reduce only | 
 **closeOnTrigger** | **optional.Bool**| close on trigger | 
 **orderLinkId** | **optional.String**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderQuery**
> interface{} OrderQuery(ctx, optional)
Get my active order list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***OrderQueryOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a OrderQueryOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **optional.String**| Order ID | 
 **symbol** | **optional.String**| Contract type. Default BTCUSD | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderReplace**
> interface{} OrderReplace(ctx, symbol, optional)
Replace active order. Only incomplete orders can be modified. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
 **optional** | ***OrderReplaceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a OrderReplaceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **orderId** | **optional.String**| Order ID. | 
 **orderLinkId** | **optional.String**| Order Link ID. | 
 **pRQty** | **optional.String**| Order quantity. | 
 **pRPrice** | **optional.String**| Order price. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

