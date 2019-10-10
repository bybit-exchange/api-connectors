# SWGPositionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positionsChangeMargin**](SWGPositionsApi.md#positionschangemargin) | **POST** /position/change-position-margin | Update margin.
[**positionsMyPosition**](SWGPositionsApi.md#positionsmyposition) | **GET** /position/list | Get my position list.
[**positionsSaveLeverage**](SWGPositionsApi.md#positionssaveleverage) | **POST** /user/leverage/save | Change user leverage.
[**positionsTradingStop**](SWGPositionsApi.md#positionstradingstop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.
[**positionsUserLeverage**](SWGPositionsApi.md#positionsuserleverage) | **GET** /user/leverage | Get user leverage setting.


# **positionsChangeMargin**
```objc
-(NSURLSessionTask*) positionsChangeMarginWithSymbol: (NSString*) symbol
    margin: (NSString*) margin
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Update margin.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type which you want update its margin
NSString* margin = @"margin_example"; // New margin you want set

SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Update margin.
[apiInstance positionsChangeMarginWithSymbol:symbol
              margin:margin
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPositionsApi->positionsChangeMargin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type which you want update its margin | 
 **margin** | **NSString***| New margin you want set | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positionsMyPosition**
```objc
-(NSURLSessionTask*) positionsMyPositionWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get my position list.

### Example 
```objc


SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Get my position list.
[apiInstance positionsMyPositionWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPositionsApi->positionsMyPosition: %@", error);
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positionsSaveLeverage**
```objc
-(NSURLSessionTask*) positionsSaveLeverageWithSymbol: (NSString*) symbol
    leverage: (NSString*) leverage
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Change user leverage.

### Example 
```objc

NSString* symbol = @"symbol_example"; // A symbol which you want change its leverage
NSString* leverage = @"leverage_example"; // New leverage you want set

SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Change user leverage.
[apiInstance positionsSaveLeverageWithSymbol:symbol
              leverage:leverage
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPositionsApi->positionsSaveLeverage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| A symbol which you want change its leverage | 
 **leverage** | **NSString***| New leverage you want set | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positionsTradingStop**
```objc
-(NSURLSessionTask*) positionsTradingStopWithSymbol: (NSString*) symbol
    takeProfit: (NSString*) takeProfit
    stopLoss: (NSString*) stopLoss
    trailingStop: (NSString*) trailingStop
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Set Trading-Stop Condition.

### Example 
```objc

NSString* symbol = @"symbol_example"; // Contract type
NSString* takeProfit = @"takeProfit_example"; // Not less than 0, 0 means cancel TP (optional)
NSString* stopLoss = @"stopLoss_example"; // Not less than 0, 0 means cancel SL (optional)
NSString* trailingStop = @"trailingStop_example"; // Not less than 0, 0 means cancel TS (optional)

SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Set Trading-Stop Condition.
[apiInstance positionsTradingStopWithSymbol:symbol
              takeProfit:takeProfit
              stopLoss:stopLoss
              trailingStop:trailingStop
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPositionsApi->positionsTradingStop: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type | 
 **takeProfit** | **NSString***| Not less than 0, 0 means cancel TP | [optional] 
 **stopLoss** | **NSString***| Not less than 0, 0 means cancel SL | [optional] 
 **trailingStop** | **NSString***| Not less than 0, 0 means cancel TS | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positionsUserLeverage**
```objc
-(NSURLSessionTask*) positionsUserLeverageWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get user leverage setting.

### Example 
```objc


SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Get user leverage setting.
[apiInstance positionsUserLeverageWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPositionsApi->positionsUserLeverage: %@", error);
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

