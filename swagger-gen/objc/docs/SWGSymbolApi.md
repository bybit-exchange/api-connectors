# SWGSymbolApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**symbolGet**](SWGSymbolApi.md#symbolget) | **GET** /v2/public/symbols | Query Symbols.


# **symbolGet**
```objc
-(NSURLSessionTask*) symbolGetWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Query Symbols.

### Example 
```objc


SWGSymbolApi*apiInstance = [[SWGSymbolApi alloc] init];

// Query Symbols.
[apiInstance symbolGetWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSymbolApi->symbolGet: %@", error);
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

