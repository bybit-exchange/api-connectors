# \ConditionalApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConditionalCancel**](ConditionalApi.md#ConditionalCancel) | **Post** /open-api/stop-order/cancel | Cancel conditional order.
[**ConditionalGetOrders**](ConditionalApi.md#ConditionalGetOrders) | **Get** /open-api/stop-order/list | Get my conditional order list.
[**ConditionalNew**](ConditionalApi.md#ConditionalNew) | **Post** /open-api/stop-order/create | Place a new conditional order.


# **ConditionalCancel**
> interface{} ConditionalCancel(ctx, stopOrderId)
Cancel conditional order.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **stopOrderId** | **string**| Order ID of conditional order. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ConditionalGetOrders**
> interface{} ConditionalGetOrders(ctx, optional)
Get my conditional order list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***ConditionalGetOrdersOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ConditionalGetOrdersOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **optional.String**| Order ID of conditional order. | 
 **orderLinkId** | **optional.String**| Agency customized order ID. | 
 **symbol** | **optional.String**| Contract type. Default BTCUSD. | 
 **order** | **optional.String**| Sort orders by creation date | 
 **page** | **optional.Float32**| Page. Default getting first page data | 
 **limit** | **optional.Float32**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ConditionalNew**
> interface{} ConditionalNew(ctx, side, symbol, orderType, qty, price, basePrice, stopPx, timeInForce, optional)
Place a new conditional order.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **side** | **string**| Side. | 
  **symbol** | **string**| Contract type. | 
  **orderType** | **string**| Conditional order type. | 
  **qty** | **float32**| Order quantity. | 
  **price** | **float64**| Execution price for conditional order | 
  **basePrice** | **float64**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
  **stopPx** | **float64**| Trigger price. | 
  **timeInForce** | **string**| Time in force. | 
 **optional** | ***ConditionalNewOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ConditionalNewOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------








 **closeOnTrigger** | **optional.Bool**| close on trigger. | 
 **orderLinkId** | **optional.String**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

