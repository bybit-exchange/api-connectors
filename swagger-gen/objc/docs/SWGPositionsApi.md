# SWGPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**positionsChangeMargin**](SWGPositionsApi.md#positionschangemargin) | **POST** /position/change-position-margin | Update margin.
[**positionsClosePnlRecords**](SWGPositionsApi.md#positionsclosepnlrecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
[**positionsMyPosition**](SWGPositionsApi.md#positionsmyposition) | **GET** /v2/private/position/list | Get my position list.
[**positionsSaveLeverage**](SWGPositionsApi.md#positionssaveleverage) | **POST** /user/leverage/save | Change user leverage.
[**positionsTradingStop**](SWGPositionsApi.md#positionstradingstop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.


# **positionsChangeMargin**
```objc
-(NSURLSessionTask*) positionsChangeMarginWithSymbol: (NSString*) symbol
    margin: (NSString*) margin
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Update margin.

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positionsClosePnlRecords**
```objc
-(NSURLSessionTask*) positionsClosePnlRecordsWithSymbol: (NSString*) symbol
    startTime: (NSNumber*) startTime
    endTime: (NSNumber*) endTime
    execType: (NSString*) execType
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get user's closed profit and loss records

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


NSString* symbol = @"symbol_example"; // Contract type
NSNumber* startTime = @56; // Start timestamp point for result, in second (optional)
NSNumber* endTime = @56; // End timestamp point for result, in second (optional)
NSString* execType = @"execType_example"; // Execution type (optional)
NSNumber* page = @56; // Page. By default, gets first page of data. Maximum of 50 pages (optional)
NSNumber* limit = @56; // Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Get user's closed profit and loss records
[apiInstance positionsClosePnlRecordsWithSymbol:symbol
              startTime:startTime
              endTime:endTime
              execType:execType
              page:page
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPositionsApi->positionsClosePnlRecords: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type | 
 **startTime** | **NSNumber***| Start timestamp point for result, in second | [optional] 
 **endTime** | **NSNumber***| End timestamp point for result, in second | [optional] 
 **execType** | **NSString***| Execution type | [optional] 
 **page** | **NSNumber***| Page. By default, gets first page of data. Maximum of 50 pages | [optional] 
 **limit** | **NSNumber***| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positionsMyPosition**
```objc
-(NSURLSessionTask*) positionsMyPositionWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get my position list.

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


NSString* symbol = @"symbol_example"; // Contract type which you want update its margin (optional)

SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Get my position list.
[apiInstance positionsMyPositionWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPositionsApi->positionsMyPosition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type which you want update its margin | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **positionsTradingStop**
```objc
-(NSURLSessionTask*) positionsTradingStopWithSymbol: (NSString*) symbol
    takeProfit: (NSString*) takeProfit
    stopLoss: (NSString*) stopLoss
    trailingStop: (NSString*) trailingStop
    varNewTrailingActive: (NSString*) varNewTrailingActive
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Set Trading-Stop Condition.

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


NSString* symbol = @"symbol_example"; // Contract type
NSString* takeProfit = @"takeProfit_example"; // Not less than 0, 0 means cancel TP (optional)
NSString* stopLoss = @"stopLoss_example"; // Not less than 0, 0 means cancel SL (optional)
NSString* trailingStop = @"trailingStop_example"; // Not less than 0, 0 means cancel TS (optional)
NSString* varNewTrailingActive = @"varNewTrailingActive_example"; // Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. (optional)

SWGPositionsApi*apiInstance = [[SWGPositionsApi alloc] init];

// Set Trading-Stop Condition.
[apiInstance positionsTradingStopWithSymbol:symbol
              takeProfit:takeProfit
              stopLoss:stopLoss
              trailingStop:trailingStop
              varNewTrailingActive:varNewTrailingActive
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
 **varNewTrailingActive** | **NSString***| Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

