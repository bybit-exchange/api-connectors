# \WalletApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**WalletExchangeOrder**](WalletApi.md#WalletExchangeOrder) | **Get** /v2/private/exchange-order/list | Asset Exchange Records
[**WalletGetBalance**](WalletApi.md#WalletGetBalance) | **Get** /v2/private/wallet/balance | get wallet balance info
[**WalletGetRecords**](WalletApi.md#WalletGetRecords) | **Get** /open-api/wallet/fund/records | Get wallet fund records
[**WalletGetRiskLimit**](WalletApi.md#WalletGetRiskLimit) | **Get** /open-api/wallet/risk-limit/list | Get risk limit.
[**WalletSetRiskLimit**](WalletApi.md#WalletSetRiskLimit) | **Post** /open-api/wallet/risk-limit | Set risk limit
[**WalletWithdraw**](WalletApi.md#WalletWithdraw) | **Get** /open-api/wallet/withdraw/list | Get wallet fund records


# **WalletExchangeOrder**
> interface{} WalletExchangeOrder(ctx, optional)
Asset Exchange Records

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***WalletExchangeOrderOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a WalletExchangeOrderOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **optional.Float32**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | 
 **from** | **optional.Float32**| Start ID. By default, returns the latest IDs | 
 **direction** | **optional.String**| Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **WalletGetBalance**
> interface{} WalletGetBalance(ctx, optional)
get wallet balance info

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***WalletGetBalanceOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a WalletGetBalanceOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **optional.String**| Coin.enum {BTC,EOS,XRP,ETH,USDT} | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **WalletGetRecords**
> interface{} WalletGetRecords(ctx, optional)
Get wallet fund records

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***WalletGetRecordsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a WalletGetRecordsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **optional.String**| Start point for result | 
 **endDate** | **optional.String**| End point for result | 
 **currency** | **optional.String**| Currency type | 
 **walletFundType** | **optional.String**| wallet fund type | 
 **page** | **optional.String**| Page. Default getting first page data | 
 **limit** | **optional.String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **WalletGetRiskLimit**
> interface{} WalletGetRiskLimit(ctx, )
Get risk limit.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **WalletSetRiskLimit**
> interface{} WalletSetRiskLimit(ctx, symbol, riskId)
Set risk limit

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **symbol** | **string**| Contract type. | 
  **riskId** | **float32**| Risk ID. Can be found with the Get risk limit list endpoint. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **WalletWithdraw**
> interface{} WalletWithdraw(ctx, optional)
Get wallet fund records

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***WalletWithdrawOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a WalletWithdrawOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **optional.String**| Start point for result | 
 **endDate** | **optional.String**| End point for result | 
 **coin** | **optional.String**| Currency | 
 **status** | **optional.String**| Withdraw status | 
 **page** | **optional.String**| Page. Default getting first page data | 
 **limit** | **optional.String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

