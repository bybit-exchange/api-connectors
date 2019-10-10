# \MarketApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MarketOrderbook**](MarketApi.md#MarketOrderbook) | **Get** /v2/public/orderBook/L2 | Get the orderbook.
[**MarketSymbolInfo**](MarketApi.md#MarketSymbolInfo) | **Get** /v2/public/tickers | Get the latest information for symbol.


# **MarketOrderbook**
> interface{} MarketOrderbook(ctx, symbol)
Get the orderbook.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MarketSymbolInfo**
> interface{} MarketSymbolInfo(ctx, )
Get the latest information for symbol.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

