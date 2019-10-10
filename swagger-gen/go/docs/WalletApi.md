# \WalletApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**WalletGetRecords**](WalletApi.md#WalletGetRecords) | **Get** /open-api/wallet/fund/records | Get wallet fund records


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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

