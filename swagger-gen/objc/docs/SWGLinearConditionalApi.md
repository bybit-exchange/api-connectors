# SWGLinearConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearConditionalCancel**](SWGLinearConditionalApi.md#linearconditionalcancel) | **POST** /private/linear/stop-order/cancel | Cancel Active Order
[**linearConditionalCancelAll**](SWGLinearConditionalApi.md#linearconditionalcancelall) | **POST** /private/linear/stop-order/cancel-all | Cancel all stop orders.
[**linearConditionalGetOrders**](SWGLinearConditionalApi.md#linearconditionalgetorders) | **GET** /private/linear/stop-order/list | Get linear Stop Orders
[**linearConditionalNew**](SWGLinearConditionalApi.md#linearconditionalnew) | **POST** /private/linear/stop-order/create | Create linear stop Order
[**linearConditionalQuery**](SWGLinearConditionalApi.md#linearconditionalquery) | **GET** /private/linear/stop-order/search | Get Stop Orders(real-time)
[**linearConditionalReplace**](SWGLinearConditionalApi.md#linearconditionalreplace) | **POST** /private/linear/stop-order/replace | Replace conditional order


# **linearConditionalCancel**
```objc
-(NSURLSessionTask*) linearConditionalCancelWithStopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Cancel Active Order

This will cancel linear active order

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


NSString* stopOrderId = @"stopOrderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)
NSString* symbol = @"symbol_example"; //  (optional)

SWGLinearConditionalApi*apiInstance = [[SWGLinearConditionalApi alloc] init];

// Cancel Active Order
[apiInstance linearConditionalCancelWithStopOrderId:stopOrderId
              orderLinkId:orderLinkId
              symbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearConditionalApi->linearConditionalCancel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **NSString***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 
 **symbol** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearConditionalCancelAll**
```objc
-(NSURLSessionTask*) linearConditionalCancelAllWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Cancel all stop orders.

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


NSString* symbol = @"symbol_example"; // Contract type.

SWGLinearConditionalApi*apiInstance = [[SWGLinearConditionalApi alloc] init];

// Cancel all stop orders.
[apiInstance linearConditionalCancelAllWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearConditionalApi->linearConditionalCancelAll: %@", error);
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

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearConditionalGetOrders**
```objc
-(NSURLSessionTask*) linearConditionalGetOrdersWithStopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    order: (NSString*) order
    page: (NSString*) page
    limit: (NSString*) limit
    stopOrderStatus: (NSString*) stopOrderStatus
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get linear Stop Orders

This will get linear active orders

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


NSString* stopOrderId = @"stopOrderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)
NSString* symbol = @"symbol_example"; //  (optional)
NSString* order = @"order_example"; //  (optional)
NSString* page = @"page_example"; //  (optional)
NSString* limit = @"limit_example"; //  (optional)
NSString* stopOrderStatus = @"stopOrderStatus_example"; //  (optional)

SWGLinearConditionalApi*apiInstance = [[SWGLinearConditionalApi alloc] init];

// Get linear Stop Orders
[apiInstance linearConditionalGetOrdersWithStopOrderId:stopOrderId
              orderLinkId:orderLinkId
              symbol:symbol
              order:order
              page:page
              limit:limit
              stopOrderStatus:stopOrderStatus
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearConditionalApi->linearConditionalGetOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **NSString***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 
 **symbol** | **NSString***|  | [optional] 
 **order** | **NSString***|  | [optional] 
 **page** | **NSString***|  | [optional] 
 **limit** | **NSString***|  | [optional] 
 **stopOrderStatus** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearConditionalNew**
```objc
-(NSURLSessionTask*) linearConditionalNewWithSymbol: (NSString*) symbol
    side: (NSString*) side
    orderType: (NSString*) orderType
    qty: (NSNumber*) qty
    price: (NSNumber*) price
    basePrice: (NSNumber*) basePrice
    stopPx: (NSNumber*) stopPx
    timeInForce: (NSString*) timeInForce
    triggerBy: (NSString*) triggerBy
    reduceOnly: (NSNumber*) reduceOnly
    closeOnTrigger: (NSNumber*) closeOnTrigger
    orderLinkId: (NSString*) orderLinkId
    takeProfit: (NSNumber*) takeProfit
    stopLoss: (NSNumber*) stopLoss
    tpTriggerBy: (NSString*) tpTriggerBy
    slTriggerBy: (NSString*) slTriggerBy
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Create linear stop Order

This will create linear stop order

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
NSString* orderType = @"orderType_example"; //  (optional)
NSNumber* qty = @1.2; //  (optional)
NSNumber* price = @1.2; //  (optional)
NSNumber* basePrice = @1.2; //  (optional)
NSNumber* stopPx = @1.2; //  (optional)
NSString* timeInForce = @"timeInForce_example"; //  (optional)
NSString* triggerBy = @"triggerBy_example"; //  (optional)
NSNumber* reduceOnly = @true; //  (optional)
NSNumber* closeOnTrigger = @true; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)
NSNumber* takeProfit = @1.2; //  (optional)
NSNumber* stopLoss = @1.2; //  (optional)
NSString* tpTriggerBy = @"tpTriggerBy_example"; //  (optional)
NSString* slTriggerBy = @"slTriggerBy_example"; //  (optional)

SWGLinearConditionalApi*apiInstance = [[SWGLinearConditionalApi alloc] init];

// Create linear stop Order
[apiInstance linearConditionalNewWithSymbol:symbol
              side:side
              orderType:orderType
              qty:qty
              price:price
              basePrice:basePrice
              stopPx:stopPx
              timeInForce:timeInForce
              triggerBy:triggerBy
              reduceOnly:reduceOnly
              closeOnTrigger:closeOnTrigger
              orderLinkId:orderLinkId
              takeProfit:takeProfit
              stopLoss:stopLoss
              tpTriggerBy:tpTriggerBy
              slTriggerBy:slTriggerBy
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearConditionalApi->linearConditionalNew: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **side** | **NSString***|  | [optional] 
 **orderType** | **NSString***|  | [optional] 
 **qty** | **NSNumber***|  | [optional] 
 **price** | **NSNumber***|  | [optional] 
 **basePrice** | **NSNumber***|  | [optional] 
 **stopPx** | **NSNumber***|  | [optional] 
 **timeInForce** | **NSString***|  | [optional] 
 **triggerBy** | **NSString***|  | [optional] 
 **reduceOnly** | **NSNumber***|  | [optional] 
 **closeOnTrigger** | **NSNumber***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 
 **takeProfit** | **NSNumber***|  | [optional] 
 **stopLoss** | **NSNumber***|  | [optional] 
 **tpTriggerBy** | **NSString***|  | [optional] 
 **slTriggerBy** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearConditionalQuery**
```objc
-(NSURLSessionTask*) linearConditionalQueryWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Stop Orders(real-time)

This will get linear stop orders(real-time)

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
NSString* stopOrderId = @"stopOrderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)

SWGLinearConditionalApi*apiInstance = [[SWGLinearConditionalApi alloc] init];

// Get Stop Orders(real-time)
[apiInstance linearConditionalQueryWithSymbol:symbol
              stopOrderId:stopOrderId
              orderLinkId:orderLinkId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearConditionalApi->linearConditionalQuery: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **stopOrderId** | **NSString***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearConditionalReplace**
```objc
-(NSURLSessionTask*) linearConditionalReplaceWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    pRQty: (NSString*) pRQty
    pRPrice: (NSNumber*) pRPrice
    pRTriggerPrice: (NSNumber*) pRTriggerPrice
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Replace conditional order

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


NSString* symbol = @"symbol_example"; // 
NSString* stopOrderId = @"stopOrderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)
NSString* pRQty = @"pRQty_example"; //  (optional)
NSNumber* pRPrice = @8.14; //  (optional)
NSNumber* pRTriggerPrice = @8.14; //  (optional)

SWGLinearConditionalApi*apiInstance = [[SWGLinearConditionalApi alloc] init];

// Replace conditional order
[apiInstance linearConditionalReplaceWithSymbol:symbol
              stopOrderId:stopOrderId
              orderLinkId:orderLinkId
              pRQty:pRQty
              pRPrice:pRPrice
              pRTriggerPrice:pRTriggerPrice
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearConditionalApi->linearConditionalReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | 
 **stopOrderId** | **NSString***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 
 **pRQty** | **NSString***|  | [optional] 
 **pRPrice** | **NSNumber***|  | [optional] 
 **pRTriggerPrice** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

