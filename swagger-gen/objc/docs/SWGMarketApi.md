# SWGMarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketAccountRatio**](SWGMarketApi.md#marketaccountratio) | **GET** /v2/public/account-ratio | Query Account Long Short Ratio
[**marketBigDeal**](SWGMarketApi.md#marketbigdeal) | **GET** /v2/public/big-deal | Query Big Deal
[**marketLiqRecords**](SWGMarketApi.md#marketliqrecords) | **GET** /v2/public/liq-records | Query liq records.
[**marketOpenInterest**](SWGMarketApi.md#marketopeninterest) | **GET** /v2/public/open-interest | Query Open Interest
[**marketOrderbook**](SWGMarketApi.md#marketorderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**marketSymbolInfo**](SWGMarketApi.md#marketsymbolinfo) | **GET** /v2/public/tickers | Get the latest information for symbol.
[**marketTradingRecords**](SWGMarketApi.md#markettradingrecords) | **GET** /v2/public/trading-records | Get recent trades


# **marketAccountRatio**
```objc
-(NSURLSessionTask*) marketAccountRatioWithSymbol: (NSString*) symbol
    period: (NSString*) period
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query Account Long Short Ratio

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSString* period = @"period_example"; // Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
NSNumber* limit = @56; // Limit for data size, max size is 500. Default size is 50 (optional)

SWGMarketApi*apiInstance = [[SWGMarketApi alloc] init];

// Query Account Long Short Ratio
[apiInstance marketAccountRatioWithSymbol:symbol
              period:period
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMarketApi->marketAccountRatio: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **period** | **NSString***| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **NSNumber***| Limit for data size, max size is 500. Default size is 50 | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketBigDeal**
```objc
-(NSURLSessionTask*) marketBigDealWithSymbol: (NSString*) symbol
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query Big Deal

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSNumber* limit = @56; // Limit for data size, max size is 1000. Default size is 500 (optional)

SWGMarketApi*apiInstance = [[SWGMarketApi alloc] init];

// Query Big Deal
[apiInstance marketBigDealWithSymbol:symbol
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMarketApi->marketBigDeal: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **limit** | **NSNumber***| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketLiqRecords**
```objc
-(NSURLSessionTask*) marketLiqRecordsWithSymbol: (NSString*) symbol
    from: (NSNumber*) from
    limit: (NSNumber*) limit
    startTime: (NSNumber*) startTime
    endTime: (NSNumber*) endTime
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query liq records.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSNumber* from = @56; // From ID. Default: return latest data (optional)
NSNumber* limit = @56; // Limit for data size, max size is 1000. Default size is 500 (optional)
NSNumber* startTime = @56; // Start timestamp point for result, in millisecond (optional)
NSNumber* endTime = @56; // End timestamp point for result, in millisecond (optional)

SWGMarketApi*apiInstance = [[SWGMarketApi alloc] init];

// Query liq records.
[apiInstance marketLiqRecordsWithSymbol:symbol
              from:from
              limit:limit
              startTime:startTime
              endTime:endTime
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMarketApi->marketLiqRecords: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **from** | **NSNumber***| From ID. Default: return latest data | [optional] 
 **limit** | **NSNumber***| Limit for data size, max size is 1000. Default size is 500 | [optional] 
 **startTime** | **NSNumber***| Start timestamp point for result, in millisecond | [optional] 
 **endTime** | **NSNumber***| End timestamp point for result, in millisecond | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketOpenInterest**
```objc
-(NSURLSessionTask*) marketOpenInterestWithSymbol: (NSString*) symbol
    period: (NSString*) period
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query Open Interest

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSString* period = @"period_example"; // Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
NSNumber* limit = @56; // Limit for data size, max size is 200. Default size is 50 (optional)

SWGMarketApi*apiInstance = [[SWGMarketApi alloc] init];

// Query Open Interest
[apiInstance marketOpenInterestWithSymbol:symbol
              period:period
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMarketApi->marketOpenInterest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **period** | **NSString***| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **NSNumber***| Limit for data size, max size is 200. Default size is 50 | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketOrderbook**
```objc
-(NSURLSessionTask*) marketOrderbookWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get the orderbook.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.

SWGMarketApi*apiInstance = [[SWGMarketApi alloc] init];

// Get the orderbook.
[apiInstance marketOrderbookWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMarketApi->marketOrderbook: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketSymbolInfo**
```objc
-(NSURLSessionTask*) marketSymbolInfoWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get the latest information for symbol.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type. (optional)

SWGMarketApi*apiInstance = [[SWGMarketApi alloc] init];

// Get the latest information for symbol.
[apiInstance marketSymbolInfoWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMarketApi->marketSymbolInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketTradingRecords**
```objc
-(NSURLSessionTask*) marketTradingRecordsWithSymbol: (NSString*) symbol
    from: (NSNumber*) from
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get recent trades

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type.
NSNumber* from = @56; // From ID. Default: return latest data (optional)
NSNumber* limit = @56; // Number of results. Default 500; max 1000 (optional)

SWGMarketApi*apiInstance = [[SWGMarketApi alloc] init];

// Get recent trades
[apiInstance marketTradingRecordsWithSymbol:symbol
              from:from
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMarketApi->marketTradingRecords: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **from** | **NSNumber***| From ID. Default: return latest data | [optional] 
 **limit** | **NSNumber***| Number of results. Default 500; max 1000 | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

