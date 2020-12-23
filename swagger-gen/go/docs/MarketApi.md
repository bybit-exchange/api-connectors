# \MarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MarketAccountRatio**](MarketApi.md#MarketAccountRatio) | **Get** /v2/public/account-ratio | Query Account Long Short Ratio
[**MarketBigDeal**](MarketApi.md#MarketBigDeal) | **Get** /v2/public/big-deal | Query Big Deal
[**MarketLiqRecords**](MarketApi.md#MarketLiqRecords) | **Get** /v2/public/liq-records | Query liq records.
[**MarketOpenInterest**](MarketApi.md#MarketOpenInterest) | **Get** /v2/public/open-interest | Query Open Interest
[**MarketOrderbook**](MarketApi.md#MarketOrderbook) | **Get** /v2/public/orderBook/L2 | Get the orderbook.
[**MarketSymbolInfo**](MarketApi.md#MarketSymbolInfo) | **Get** /v2/public/tickers | Get the latest information for symbol.
[**MarketTradingRecords**](MarketApi.md#MarketTradingRecords) | **Get** /v2/public/trading-records | Get recent trades


# **MarketAccountRatio**
> interface{} MarketAccountRatio(ctx, symbol, period, optional)
Query Account Long Short Ratio

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
  **period** | **string**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **optional** | ***MarketAccountRatioOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MarketAccountRatioOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **limit** | **optional.Int32**| Limit for data size, max size is 500. Default size is 50 | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MarketBigDeal**
> interface{} MarketBigDeal(ctx, symbol, optional)
Query Big Deal

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
 **optional** | ***MarketBigDealOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MarketBigDealOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limit** | **optional.Int32**| Limit for data size, max size is 1000. Default size is 500 | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MarketLiqRecords**
> interface{} MarketLiqRecords(ctx, symbol, optional)
Query liq records.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
 **optional** | ***MarketLiqRecordsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MarketLiqRecordsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **from** | **optional.Int32**| From ID. Default: return latest data | 
 **limit** | **optional.Int32**| Limit for data size, max size is 1000. Default size is 500 | 
 **startTime** | **optional.Int32**| Start timestamp point for result, in millisecond | 
 **endTime** | **optional.Int32**| End timestamp point for result, in millisecond | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MarketOpenInterest**
> interface{} MarketOpenInterest(ctx, symbol, period, optional)
Query Open Interest

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
  **period** | **string**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **optional** | ***MarketOpenInterestOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MarketOpenInterestOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **limit** | **optional.Int32**| Limit for data size, max size is 200. Default size is 50 | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MarketSymbolInfo**
> interface{} MarketSymbolInfo(ctx, optional)
Get the latest information for symbol.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***MarketSymbolInfoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MarketSymbolInfoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **optional.String**| Contract type. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MarketTradingRecords**
> interface{} MarketTradingRecords(ctx, symbol, optional)
Get recent trades

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
 **optional** | ***MarketTradingRecordsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MarketTradingRecordsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **from** | **optional.Int32**| From ID. Default: return latest data | 
 **limit** | **optional.Int32**| Number of results. Default 500; max 1000 | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

