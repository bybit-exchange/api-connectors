# SWGCommonApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commonGet**](SWGCommonApi.md#commonget) | **GET** /v2/public/time | Get bybit server time.


# **commonGet**
```objc
-(NSURLSessionTask*) commonGetWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get bybit server time.

### Example 
```objc


SWGCommonApi*apiInstance = [[SWGCommonApi alloc] init];

// Get bybit server time.
[apiInstance commonGetWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCommonApi->commonGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

