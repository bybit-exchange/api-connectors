# SWGLinearExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearExecutionGetTrades**](SWGLinearExecutionApi.md#linearexecutiongettrades) | **GET** /private/linear/trade/execution/list | Get user&#39;s trading records.


# **linearExecutionGetTrades**
```objc
-(NSURLSessionTask*) linearExecutionGetTradesWithSymbol: (NSString*) symbol
    startTime: (NSNumber*) startTime
    endTime: (NSNumber*) endTime
    execType: (NSString*) execType
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get user's trading records.

This will get user's trading records.

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


NSString* symbol = @"symbol_example"; //  (optional)
NSNumber* startTime = @789; //  (optional)
NSNumber* endTime = @789; //  (optional)
NSString* execType = @"execType_example"; //  (optional)
NSNumber* page = @789; //  (optional)
NSNumber* limit = @789; //  (optional)

SWGLinearExecutionApi*apiInstance = [[SWGLinearExecutionApi alloc] init];

// Get user's trading records.
[apiInstance linearExecutionGetTradesWithSymbol:symbol
              startTime:startTime
              endTime:endTime
              execType:execType
              page:page
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearExecutionApi->linearExecutionGetTrades: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **startTime** | **NSNumber***|  | [optional] 
 **endTime** | **NSNumber***|  | [optional] 
 **execType** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **limit** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

