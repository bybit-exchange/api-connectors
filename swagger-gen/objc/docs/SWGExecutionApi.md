# SWGExecutionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](SWGExecutionApi.md#executiongettrades) | **GET** /v2/private/execution/list | Get the trade records of a order.


# **executionGetTrades**
```objc
-(NSURLSessionTask*) executionGetTradesWithOrderId: (NSString*) orderId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get the trade records of a order.

### Example 
```objc

NSString* orderId = @"orderId_example"; // orderID.

SWGExecutionApi*apiInstance = [[SWGExecutionApi alloc] init];

// Get the trade records of a order.
[apiInstance executionGetTradesWithOrderId:orderId
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
 **orderId** | **NSString***| orderID. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

