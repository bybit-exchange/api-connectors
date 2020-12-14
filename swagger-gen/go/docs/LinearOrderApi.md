# \LinearOrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinearOrderCancel**](LinearOrderApi.md#LinearOrderCancel) | **Post** /private/linear/order/cancel | Cancel Active Order
[**LinearOrderCancelAll**](LinearOrderApi.md#LinearOrderCancelAll) | **Post** /private/linear/order/cancel-all | Cancel all active orders.
[**LinearOrderGetOrders**](LinearOrderApi.md#LinearOrderGetOrders) | **Get** /private/linear/order/list | Get linear Active Orders
[**LinearOrderNew**](LinearOrderApi.md#LinearOrderNew) | **Post** /private/linear/order/create | Create Active Order
[**LinearOrderQuery**](LinearOrderApi.md#LinearOrderQuery) | **Get** /private/linear/order/search | Get Active Orders(real-time)
[**LinearOrderReplace**](LinearOrderApi.md#LinearOrderReplace) | **Post** /private/linear/order/replace | Replace Active Order


# **LinearOrderCancel**
> interface{} LinearOrderCancel(ctx, optional)
Cancel Active Order

This will cancel linear active order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearOrderCancelOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearOrderCancelOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **optional.String**|  | 
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

# **LinearOrderCancelAll**
> interface{} LinearOrderCancelAll(ctx, symbol)
Cancel all active orders.

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

# **LinearOrderGetOrders**
> interface{} LinearOrderGetOrders(ctx, optional)
Get linear Active Orders

This will get linear active orders

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearOrderGetOrdersOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearOrderGetOrdersOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **optional.String**|  | 
 **orderLinkId** | **optional.String**|  | 
 **symbol** | **optional.String**|  | 
 **order** | **optional.String**|  | 
 **page** | **optional.String**|  | 
 **limit** | **optional.String**|  | 
 **orderStatus** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearOrderNew**
> interface{} LinearOrderNew(ctx, optional)
Create Active Order

This will create linear order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearOrderNewOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearOrderNewOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **side** | **optional.String**|  | 
 **orderType** | **optional.String**|  | 
 **timeInForce** | **optional.String**|  | 
 **qty** | **optional.Float64**|  | 
 **price** | **optional.Float64**|  | 
 **takeProfit** | **optional.Float64**|  | 
 **stopLoss** | **optional.Float64**|  | 
 **reduceOnly** | **optional.Bool**|  | 
 **tpTriggerBy** | **optional.String**|  | 
 **slTriggerBy** | **optional.String**|  | 
 **closeOnTrigger** | **optional.Bool**|  | 
 **orderLinkId** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearOrderQuery**
> interface{} LinearOrderQuery(ctx, optional)
Get Active Orders(real-time)

This will get linear active orders(real-time)

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***LinearOrderQueryOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearOrderQueryOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**|  | 
 **orderId** | **optional.String**|  | 
 **orderLinkId** | **optional.String**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LinearOrderReplace**
> interface{} LinearOrderReplace(ctx, symbol, optional)
Replace Active Order

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**|  | 
 **optional** | ***LinearOrderReplaceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a LinearOrderReplaceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **orderId** | **optional.String**|  | 
 **orderLinkId** | **optional.String**|  | 
 **pRQty** | **optional.String**|  | 
 **pRPrice** | **optional.Float32**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

