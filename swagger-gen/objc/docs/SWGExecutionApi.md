# SWGExecutionApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](SWGExecutionApi.md#executiongettrades) | **GET** /v2/private/execution/list | Get user’s trade records.


# **executionGetTrades**
```objc
-(NSURLSessionTask*) executionGetTradesWithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
    startTime: (NSString*) startTime
    page: (NSString*) page
    limit: (NSString*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get user’s trade records.

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


NSString* orderId = @"orderId_example"; // OrderID. If not provided, will return user’s trading records. (optional)
NSString* symbol = @"symbol_example"; // Contract type. If order_id not provided, symbol is required. (optional)
NSString* startTime = @"startTime_example"; // Start timestamp point for result. (optional)
NSString* page = @"page_example"; // Page. Default getting first page data. (optional)
NSString* limit = @"limit_example"; // Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

SWGExecutionApi*apiInstance = [[SWGExecutionApi alloc] init];

// Get user’s trade records.
[apiInstance executionGetTradesWithOrderId:orderId
              symbol:symbol
              startTime:startTime
              page:page
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGExecutionApi->executionGetTrades: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| OrderID. If not provided, will return user’s trading records. | [optional] 
 **symbol** | **NSString***| Contract type. If order_id not provided, symbol is required. | [optional] 
 **startTime** | **NSString***| Start timestamp point for result. | [optional] 
 **page** | **NSString***| Page. Default getting first page data. | [optional] 
 **limit** | **NSString***| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

