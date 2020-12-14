# \LinearConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearConditionalCancel**](LinearConditionalApi.md#LinearConditionalCancel) | **Post** /private/linear/stop-order/cancel | Cancel Active Order
[**LinearConditionalCancelAll**](LinearConditionalApi.md#LinearConditionalCancelAll) | **Post** /private/linear/stop-order/cancel-all | Cancel all stop orders.
[**LinearConditionalGetOrders**](LinearConditionalApi.md#LinearConditionalGetOrders) | **Get** /private/linear/stop-order/list | Get linear Stop Orders
[**LinearConditionalNew**](LinearConditionalApi.md#LinearConditionalNew) | **Post** /private/linear/stop-order/create | Create linear stop Order
[**LinearConditionalQuery**](LinearConditionalApi.md#LinearConditionalQuery) | **Get** /private/linear/stop-order/search | Get Stop Orders(real-time)
[**LinearConditionalReplace**](LinearConditionalApi.md#LinearConditionalReplace) | **Post** /private/linear/stop-order/replace | Replace conditional order


# **LinearConditionalCancel**
> interface{} LinearConditionalCancel(ctx, optional)
Cancel Active Order

This will cancel linear active order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearConditionalCancelOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearConditionalCancelOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **optional.String**|  | 
 **orderLinkId** | **optional.String**|  | 
 **symbol** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearConditionalCancelAll**
> interface{} LinearConditionalCancelAll(ctx, symbol)
Cancel all stop orders.

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

# **LinearConditionalGetOrders**
> interface{} LinearConditionalGetOrders(ctx, optional)
Get linear Stop Orders

This will get linear active orders

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearConditionalGetOrdersOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearConditionalGetOrdersOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **optional.String**|  | 
 **orderLinkId** | **optional.String**|  | 
 **symbol** | **optional.String**|  | 
 **order** | **optional.String**|  | 
 **page** | **optional.String**|  | 
 **limit** | **optional.String**|  | 
 **stopOrderStatus** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearConditionalNew**
> interface{} LinearConditionalNew(ctx, optional)
Create linear stop Order

This will create linear stop order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearConditionalNewOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearConditionalNewOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **side** | **optional.String**|  | 
 **orderType** | **optional.String**|  | 
 **qty** | **optional.Float64**|  | 
 **price** | **optional.Float64**|  | 
 **basePrice** | **optional.Float64**|  | 
 **stopPx** | **optional.Float64**|  | 
 **timeInForce** | **optional.String**|  | 
 **triggerBy** | **optional.String**|  | 
 **reduceOnly** | **optional.Bool**|  | 
 **closeOnTrigger** | **optional.Bool**|  | 
 **orderLinkId** | **optional.String**|  | 
 **takeProfit** | **optional.Float64**|  | 
 **stopLoss** | **optional.Float64**|  | 
 **tpTriggerBy** | **optional.String**|  | 
 **slTriggerBy** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearConditionalQuery**
> interface{} LinearConditionalQuery(ctx, optional)
Get Stop Orders(real-time)

This will get linear stop orders(real-time)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearConditionalQueryOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearConditionalQueryOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **stopOrderId** | **optional.String**|  | 
 **orderLinkId** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearConditionalReplace**
> interface{} LinearConditionalReplace(ctx, symbol, optional)
Replace conditional order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**|  | 
 **optional** | ***LinearConditionalReplaceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearConditionalReplaceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **stopOrderId** | **optional.String**|  | 
 **orderLinkId** | **optional.String**|  | 
 **pRQty** | **optional.String**|  | 
 **pRPrice** | **optional.Float32**|  | 
 **pRTriggerPrice** | **optional.Float32**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

