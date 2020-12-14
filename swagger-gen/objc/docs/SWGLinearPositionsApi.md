# SWGLinearPositionsApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearPositionsChangeMargin**](SWGLinearPositionsApi.md#linearpositionschangemargin) | **POST** /private/linear/position/add-margin | Add/Reduce Margin
[**linearPositionsClosePnlRecords**](SWGLinearPositionsApi.md#linearpositionsclosepnlrecords) | **GET** /private/linear/trade/closed-pnl/list | Get user&#39;s closed profit and loss records.
[**linearPositionsMyPosition**](SWGLinearPositionsApi.md#linearpositionsmyposition) | **GET** /private/linear/position/list | Get my position list.
[**linearPositionsSaveLeverage**](SWGLinearPositionsApi.md#linearpositionssaveleverage) | **POST** /private/linear/position/set-leverage | Set leverage
[**linearPositionsSetAutoAddMargin**](SWGLinearPositionsApi.md#linearpositionssetautoaddmargin) | **POST** /private/linear/position/set-auto-add-margin | Set auto add margin
[**linearPositionsSwitchIsolated**](SWGLinearPositionsApi.md#linearpositionsswitchisolated) | **POST** /private/linear/position/switch-isolated | Switch isolated
[**linearPositionsSwitchMode**](SWGLinearPositionsApi.md#linearpositionsswitchmode) | **POST** /private/linear/tpsl/switch-mode | Switch Mode
[**linearPositionsTradingStop**](SWGLinearPositionsApi.md#linearpositionstradingstop) | **POST** /private/linear/position/trading-stop | Set tradingStop


# **linearPositionsChangeMargin**
```objc
-(NSURLSessionTask*) linearPositionsChangeMarginWithSymbol: (NSString*) symbol
    side: (NSString*) side
    margin: (NSNumber*) margin
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Add/Reduce Margin

This will Add/Reduce Margin

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


NSString* symbol = @"symbol_example"; //  (optional)
NSString* side = @"side_example"; //  (optional)
NSNumber* margin = @1.2; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Add/Reduce Margin
[apiInstance linearPositionsChangeMarginWithSymbol:symbol
              side:side
              margin:margin
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsChangeMargin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **side** | **NSString***|  | [optional] 
 **margin** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearPositionsClosePnlRecords**
```objc
-(NSURLSessionTask*) linearPositionsClosePnlRecordsWithSymbol: (NSString*) symbol
    startTime: (NSNumber*) startTime
    endTime: (NSNumber*) endTime
    execType: (NSString*) execType
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get user's closed profit and loss records.

This will get user's closed profit and loss records.

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


NSString* symbol = @"symbol_example"; //  (optional)
NSNumber* startTime = @789; //  (optional)
NSNumber* endTime = @789; //  (optional)
NSString* execType = @"execType_example"; //  (optional)
NSNumber* page = @789; //  (optional)
NSNumber* limit = @789; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Get user's closed profit and loss records.
[apiInstance linearPositionsClosePnlRecordsWithSymbol:symbol
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
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsClosePnlRecords: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **startTime** | **NSNumber***|  | [optional] 
 **endTime** | **NSNumber***|  | [optional] 
 **execType** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **limit** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearPositionsMyPosition**
```objc
-(NSURLSessionTask*) linearPositionsMyPositionWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get my position list.

This will get my position list.

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


NSString* symbol = @"symbol_example"; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Get my position list.
[apiInstance linearPositionsMyPositionWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsMyPosition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearPositionsSaveLeverage**
```objc
-(NSURLSessionTask*) linearPositionsSaveLeverageWithSymbol: (NSString*) symbol
    buyLeverage: (NSNumber*) buyLeverage
    sellLeverage: (NSNumber*) sellLeverage
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Set leverage

This will Set Leverage

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


NSString* symbol = @"symbol_example"; //  (optional)
NSNumber* buyLeverage = @1.2; //  (optional)
NSNumber* sellLeverage = @1.2; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Set leverage
[apiInstance linearPositionsSaveLeverageWithSymbol:symbol
              buyLeverage:buyLeverage
              sellLeverage:sellLeverage
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsSaveLeverage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **buyLeverage** | **NSNumber***|  | [optional] 
 **sellLeverage** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearPositionsSetAutoAddMargin**
```objc
-(NSURLSessionTask*) linearPositionsSetAutoAddMarginWithSymbol: (NSString*) symbol
    side: (NSString*) side
    autoAddMargin: (NSNumber*) autoAddMargin
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Set auto add margin

This will Set auto add margin

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


NSString* symbol = @"symbol_example"; //  (optional)
NSString* side = @"side_example"; //  (optional)
NSNumber* autoAddMargin = @true; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Set auto add margin
[apiInstance linearPositionsSetAutoAddMarginWithSymbol:symbol
              side:side
              autoAddMargin:autoAddMargin
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsSetAutoAddMargin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **side** | **NSString***|  | [optional] 
 **autoAddMargin** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearPositionsSwitchIsolated**
```objc
-(NSURLSessionTask*) linearPositionsSwitchIsolatedWithSymbol: (NSString*) symbol
    isIsolated: (NSNumber*) isIsolated
    buyLeverage: (NSNumber*) buyLeverage
    sellLeverage: (NSNumber*) sellLeverage
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Switch isolated

This will switch isolated

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


NSString* symbol = @"symbol_example"; //  (optional)
NSNumber* isIsolated = @true; //  (optional)
NSNumber* buyLeverage = @1.2; //  (optional)
NSNumber* sellLeverage = @1.2; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Switch isolated
[apiInstance linearPositionsSwitchIsolatedWithSymbol:symbol
              isIsolated:isIsolated
              buyLeverage:buyLeverage
              sellLeverage:sellLeverage
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsSwitchIsolated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **isIsolated** | **NSNumber***|  | [optional] 
 **buyLeverage** | **NSNumber***|  | [optional] 
 **sellLeverage** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearPositionsSwitchMode**
```objc
-(NSURLSessionTask*) linearPositionsSwitchModeWithSymbol: (NSString*) symbol
    tpSlMode: (NSString*) tpSlMode
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Switch Mode

This will Switch TP/SL Mode

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


NSString* symbol = @"symbol_example"; //  (optional)
NSString* tpSlMode = @"tpSlMode_example"; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Switch Mode
[apiInstance linearPositionsSwitchModeWithSymbol:symbol
              tpSlMode:tpSlMode
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsSwitchMode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **tpSlMode** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearPositionsTradingStop**
```objc
-(NSURLSessionTask*) linearPositionsTradingStopWithSymbol: (NSString*) symbol
    side: (NSString*) side
    takeProfit: (NSNumber*) takeProfit
    stopLoss: (NSNumber*) stopLoss
    trailingStop: (NSNumber*) trailingStop
    tpTriggerBy: (NSString*) tpTriggerBy
    slTriggerBy: (NSString*) slTriggerBy
    slSize: (NSNumber*) slSize
    tpSize: (NSNumber*) tpSize
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Set tradingStop

This will set tradingStop

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


NSString* symbol = @"symbol_example"; //  (optional)
NSString* side = @"side_example"; //  (optional)
NSNumber* takeProfit = @1.2; //  (optional)
NSNumber* stopLoss = @1.2; //  (optional)
NSNumber* trailingStop = @1.2; //  (optional)
NSString* tpTriggerBy = @"tpTriggerBy_example"; //  (optional)
NSString* slTriggerBy = @"slTriggerBy_example"; //  (optional)
NSNumber* slSize = @1.2; //  (optional)
NSNumber* tpSize = @1.2; //  (optional)

SWGLinearPositionsApi*apiInstance = [[SWGLinearPositionsApi alloc] init];

// Set tradingStop
[apiInstance linearPositionsTradingStopWithSymbol:symbol
              side:side
              takeProfit:takeProfit
              stopLoss:stopLoss
              trailingStop:trailingStop
              tpTriggerBy:tpTriggerBy
              slTriggerBy:slTriggerBy
              slSize:slSize
              tpSize:tpSize
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearPositionsApi->linearPositionsTradingStop: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **side** | **NSString***|  | [optional] 
 **takeProfit** | **NSNumber***|  | [optional] 
 **stopLoss** | **NSNumber***|  | [optional] 
 **trailingStop** | **NSNumber***|  | [optional] 
 **tpTriggerBy** | **NSString***|  | [optional] 
 **slTriggerBy** | **NSString***|  | [optional] 
 **slSize** | **NSNumber***|  | [optional] 
 **tpSize** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

