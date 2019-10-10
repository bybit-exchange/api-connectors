# SWGKlineApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**klineGet**](SWGKlineApi.md#klineget) | **GET** /v2/public/kline/list | Query historical kline.


# **klineGet**
```objc
-(NSURLSessionTask*) klineGetWithSymbol: (NSString*) symbol
    interval: (NSString*) interval
    from: (NSNumber*) from
    limit: (NSString*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query historical kline.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSString* interval = @"interval_example"; // Kline interval.
NSNumber* from = @8.14; // from timestamp.
NSString* limit = @"limit_example"; // Contract type. (optional)

SWGKlineApi*apiInstance = [[SWGKlineApi alloc] init];

// Query historical kline.
[apiInstance klineGetWithSymbol:symbol
              interval:interval
              from:from
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGKlineApi->klineGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **interval** | **NSString***| Kline interval. | 
 **from** | **NSNumber***| from timestamp. | 
 **limit** | **NSString***| Contract type. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

