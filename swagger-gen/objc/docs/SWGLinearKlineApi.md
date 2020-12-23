# SWGLinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearKlineGet**](SWGLinearKlineApi.md#linearklineget) | **GET** /public/linear/kline | Get kline
[**linearKlineMarkPrice**](SWGLinearKlineApi.md#linearklinemarkprice) | **GET** /public/linear/mark-price-kline | Get kline


# **linearKlineGet**
```objc
-(NSURLSessionTask*) linearKlineGetWithSymbol: (NSString*) symbol
    interval: (NSString*) interval
    from: (NSNumber*) from
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get kline

This will get kline

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSString* interval = @"interval_example"; // Kline interval.
NSNumber* from = @8.14; // from timestamp.
NSNumber* limit = @8.14; // Contract type. (optional)

SWGLinearKlineApi*apiInstance = [[SWGLinearKlineApi alloc] init];

// Get kline
[apiInstance linearKlineGetWithSymbol:symbol
              interval:interval
              from:from
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearKlineApi->linearKlineGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **interval** | **NSString***| Kline interval. | 
 **from** | **NSNumber***| from timestamp. | 
 **limit** | **NSNumber***| Contract type. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearKlineMarkPrice**
```objc
-(NSURLSessionTask*) linearKlineMarkPriceWithSymbol: (NSString*) symbol
    interval: (NSString*) interval
    from: (NSNumber*) from
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get kline

This will get mark price kline

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


NSString* symbol = @"symbol_example"; // Contract type.
NSString* interval = @"interval_example"; // Kline interval.
NSNumber* from = @8.14; // from timestamp.
NSNumber* limit = @8.14; // Contract type. (optional)

SWGLinearKlineApi*apiInstance = [[SWGLinearKlineApi alloc] init];

// Get kline
[apiInstance linearKlineMarkPriceWithSymbol:symbol
              interval:interval
              from:from
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearKlineApi->linearKlineMarkPrice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **interval** | **NSString***| Kline interval. | 
 **from** | **NSNumber***| from timestamp. | 
 **limit** | **NSNumber***| Contract type. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

