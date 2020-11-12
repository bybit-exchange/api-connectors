# SWGKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**klineGet**](SWGKlineApi.md#klineget) | **GET** /v2/public/kline/list | Query historical kline.
[**klineMarkPrice**](SWGKlineApi.md#klinemarkprice) | **GET** /v2/public/mark-price-kline | Query mark price kline.


# **klineGet**
```objc
-(NSURLSessionTask*) klineGetWithSymbol: (NSString*) symbol
    interval: (NSString*) interval
    from: (NSNumber*) from
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query historical kline.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSString* interval = @"interval_example"; // Kline interval.
NSNumber* from = @8.14; // from timestamp.
NSNumber* limit = @8.14; // Contract type. (optional)

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
 **limit** | **NSNumber***| Contract type. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **klineMarkPrice**
```objc
-(NSURLSessionTask*) klineMarkPriceWithSymbol: (NSString*) symbol
    interval: (NSString*) interval
    from: (NSNumber*) from
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query mark price kline.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSString* interval = @"interval_example"; // Data refresh interval
NSNumber* from = @56; // From timestamp in seconds
NSNumber* limit = @56; // Limit for data size, max size is 1000. Default size is 500 (optional)

SWGKlineApi*apiInstance = [[SWGKlineApi alloc] init];

// Query mark price kline.
[apiInstance klineMarkPriceWithSymbol:symbol
              interval:interval
              from:from
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGKlineApi->klineMarkPrice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **interval** | **NSString***| Data refresh interval | 
 **from** | **NSNumber***| From timestamp in seconds | 
 **limit** | **NSNumber***| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

