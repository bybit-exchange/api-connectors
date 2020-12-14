# SWGLinearWalletApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearWalletGetRiskLimit**](SWGLinearWalletApi.md#linearwalletgetrisklimit) | **GET** /public/linear/risk-limit | Get risk limit.


# **linearWalletGetRiskLimit**
```objc
-(NSURLSessionTask*) linearWalletGetRiskLimitWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get risk limit.

This will get risk limit.

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



SWGLinearWalletApi*apiInstance = [[SWGLinearWalletApi alloc] init];

// Get risk limit.
[apiInstance linearWalletGetRiskLimitWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearWalletApi->linearWalletGetRiskLimit: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

