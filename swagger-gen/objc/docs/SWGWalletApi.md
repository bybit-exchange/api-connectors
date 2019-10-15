# SWGWalletApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletGetRecords**](SWGWalletApi.md#walletgetrecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records


# **walletGetRecords**
```objc
-(NSURLSessionTask*) walletGetRecordsWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    currency: (NSString*) currency
    walletFundType: (NSString*) walletFundType
    page: (NSString*) page
    limit: (NSString*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get wallet fund records

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api_key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api_key"];

// Configure API key authorization: (authentication scheme: apiSignature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sign"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sign"];

// Configure API key authorization: (authentication scheme: timestamp)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"timestamp"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"timestamp"];


NSString* startDate = @"startDate_example"; // Start point for result (optional)
NSString* endDate = @"endDate_example"; // End point for result (optional)
NSString* currency = @"currency_example"; // Currency type (optional)
NSString* walletFundType = @"walletFundType_example"; // wallet fund type (optional)
NSString* page = @"page_example"; // Page. Default getting first page data (optional)
NSString* limit = @"limit_example"; // Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)

SWGWalletApi*apiInstance = [[SWGWalletApi alloc] init];

// Get wallet fund records
[apiInstance walletGetRecordsWithStartDate:startDate
              endDate:endDate
              currency:currency
              walletFundType:walletFundType
              page:page
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGWalletApi->walletGetRecords: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| Start point for result | [optional] 
 **endDate** | **NSString***| End point for result | [optional] 
 **currency** | **NSString***| Currency type | [optional] 
 **walletFundType** | **NSString***| wallet fund type | [optional] 
 **page** | **NSString***| Page. Default getting first page data | [optional] 
 **limit** | **NSString***| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

