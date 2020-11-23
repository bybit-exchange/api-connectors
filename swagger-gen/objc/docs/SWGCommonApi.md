# SWGCommonApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commonAnnouncements**](SWGCommonApi.md#commonannouncements) | **GET** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[**commonGetLcp**](SWGCommonApi.md#commongetlcp) | **GET** /v2/private/account/lcp | Query LCP info.
[**commonGetTime**](SWGCommonApi.md#commongettime) | **GET** /v2/public/time | Get bybit server time.


# **commonAnnouncements**
```objc
-(NSURLSessionTask*) commonAnnouncementsWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get Bybit OpenAPI announcements in the last 30 days in reverse order.

### Example 
```objc


SWGCommonApi*apiInstance = [[SWGCommonApi alloc] init];

// Get Bybit OpenAPI announcements in the last 30 days in reverse order.
[apiInstance commonAnnouncementsWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCommonApi->commonAnnouncements: %@", error);
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

# **commonGetLcp**
```objc
-(NSURLSessionTask*) commonGetLcpWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query LCP info.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type

SWGCommonApi*apiInstance = [[SWGCommonApi alloc] init];

// Query LCP info.
[apiInstance commonGetLcpWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCommonApi->commonGetLcp: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commonGetTime**
```objc
-(NSURLSessionTask*) commonGetTimeWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get bybit server time.

### Example 
```objc


SWGCommonApi*apiInstance = [[SWGCommonApi alloc] init];

// Get bybit server time.
[apiInstance commonGetTimeWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCommonApi->commonGetTime: %@", error);
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

