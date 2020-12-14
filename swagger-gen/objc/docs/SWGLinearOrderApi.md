# SWGLinearOrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearOrderCancel**](SWGLinearOrderApi.md#linearordercancel) | **POST** /private/linear/order/cancel | Cancel Active Order
[**linearOrderCancelAll**](SWGLinearOrderApi.md#linearordercancelall) | **POST** /private/linear/order/cancel-all | Cancel all active orders.
[**linearOrderGetOrders**](SWGLinearOrderApi.md#linearordergetorders) | **GET** /private/linear/order/list | Get linear Active Orders
[**linearOrderNew**](SWGLinearOrderApi.md#linearordernew) | **POST** /private/linear/order/create | Create Active Order
[**linearOrderQuery**](SWGLinearOrderApi.md#linearorderquery) | **GET** /private/linear/order/search | Get Active Orders(real-time)
[**linearOrderReplace**](SWGLinearOrderApi.md#linearorderreplace) | **POST** /private/linear/order/replace | Replace Active Order


# **linearOrderCancel**
```objc
-(NSURLSessionTask*) linearOrderCancelWithOrderId: (NSString*) orderId
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


NSString* orderId = @"orderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)
NSString* symbol = @"symbol_example"; //  (optional)

SWGLinearOrderApi*apiInstance = [[SWGLinearOrderApi alloc] init];

// Cancel Active Order
[apiInstance linearOrderCancelWithOrderId:orderId
              orderLinkId:orderLinkId
              symbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearOrderApi->linearOrderCancel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***|  | [optional] 
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

# **linearOrderCancelAll**
```objc
-(NSURLSessionTask*) linearOrderCancelAllWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Cancel all active orders.

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

SWGLinearOrderApi*apiInstance = [[SWGLinearOrderApi alloc] init];

// Cancel all active orders.
[apiInstance linearOrderCancelAllWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearOrderApi->linearOrderCancelAll: %@", error);
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

# **linearOrderGetOrders**
```objc
-(NSURLSessionTask*) linearOrderGetOrdersWithOrderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    order: (NSString*) order
    page: (NSString*) page
    limit: (NSString*) limit
    orderStatus: (NSString*) orderStatus
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get linear Active Orders

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


NSString* orderId = @"orderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)
NSString* symbol = @"symbol_example"; //  (optional)
NSString* order = @"order_example"; //  (optional)
NSString* page = @"page_example"; //  (optional)
NSString* limit = @"limit_example"; //  (optional)
NSString* orderStatus = @"orderStatus_example"; //  (optional)

SWGLinearOrderApi*apiInstance = [[SWGLinearOrderApi alloc] init];

// Get linear Active Orders
[apiInstance linearOrderGetOrdersWithOrderId:orderId
              orderLinkId:orderLinkId
              symbol:symbol
              order:order
              page:page
              limit:limit
              orderStatus:orderStatus
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearOrderApi->linearOrderGetOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 
 **symbol** | **NSString***|  | [optional] 
 **order** | **NSString***|  | [optional] 
 **page** | **NSString***|  | [optional] 
 **limit** | **NSString***|  | [optional] 
 **orderStatus** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearOrderNew**
```objc
-(NSURLSessionTask*) linearOrderNewWithSymbol: (NSString*) symbol
    side: (NSString*) side
    orderType: (NSString*) orderType
    timeInForce: (NSString*) timeInForce
    qty: (NSNumber*) qty
    price: (NSNumber*) price
    takeProfit: (NSNumber*) takeProfit
    stopLoss: (NSNumber*) stopLoss
    reduceOnly: (NSNumber*) reduceOnly
    tpTriggerBy: (NSString*) tpTriggerBy
    slTriggerBy: (NSString*) slTriggerBy
    closeOnTrigger: (NSNumber*) closeOnTrigger
    orderLinkId: (NSString*) orderLinkId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Create Active Order

This will create linear order

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
NSString* timeInForce = @"timeInForce_example"; //  (optional)
NSNumber* qty = @1.2; //  (optional)
NSNumber* price = @1.2; //  (optional)
NSNumber* takeProfit = @1.2; //  (optional)
NSNumber* stopLoss = @1.2; //  (optional)
NSNumber* reduceOnly = @true; //  (optional)
NSString* tpTriggerBy = @"tpTriggerBy_example"; //  (optional)
NSString* slTriggerBy = @"slTriggerBy_example"; //  (optional)
NSNumber* closeOnTrigger = @true; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)

SWGLinearOrderApi*apiInstance = [[SWGLinearOrderApi alloc] init];

// Create Active Order
[apiInstance linearOrderNewWithSymbol:symbol
              side:side
              orderType:orderType
              timeInForce:timeInForce
              qty:qty
              price:price
              takeProfit:takeProfit
              stopLoss:stopLoss
              reduceOnly:reduceOnly
              tpTriggerBy:tpTriggerBy
              slTriggerBy:slTriggerBy
              closeOnTrigger:closeOnTrigger
              orderLinkId:orderLinkId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearOrderApi->linearOrderNew: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **side** | **NSString***|  | [optional] 
 **orderType** | **NSString***|  | [optional] 
 **timeInForce** | **NSString***|  | [optional] 
 **qty** | **NSNumber***|  | [optional] 
 **price** | **NSNumber***|  | [optional] 
 **takeProfit** | **NSNumber***|  | [optional] 
 **stopLoss** | **NSNumber***|  | [optional] 
 **reduceOnly** | **NSNumber***|  | [optional] 
 **tpTriggerBy** | **NSString***|  | [optional] 
 **slTriggerBy** | **NSString***|  | [optional] 
 **closeOnTrigger** | **NSNumber***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearOrderQuery**
```objc
-(NSURLSessionTask*) linearOrderQueryWithSymbol: (NSString*) symbol
    orderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Active Orders(real-time)

This will get linear active orders(real-time)

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
NSString* orderId = @"orderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)

SWGLinearOrderApi*apiInstance = [[SWGLinearOrderApi alloc] init];

// Get Active Orders(real-time)
[apiInstance linearOrderQueryWithSymbol:symbol
              orderId:orderId
              orderLinkId:orderLinkId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearOrderApi->linearOrderQuery: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | [optional] 
 **orderId** | **NSString***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linearOrderReplace**
```objc
-(NSURLSessionTask*) linearOrderReplaceWithSymbol: (NSString*) symbol
    orderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    pRQty: (NSString*) pRQty
    pRPrice: (NSNumber*) pRPrice
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Replace Active Order

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
NSString* orderId = @"orderId_example"; //  (optional)
NSString* orderLinkId = @"orderLinkId_example"; //  (optional)
NSString* pRQty = @"pRQty_example"; //  (optional)
NSNumber* pRPrice = @8.14; //  (optional)

SWGLinearOrderApi*apiInstance = [[SWGLinearOrderApi alloc] init];

// Replace Active Order
[apiInstance linearOrderReplaceWithSymbol:symbol
              orderId:orderId
              orderLinkId:orderLinkId
              pRQty:pRQty
              pRPrice:pRPrice
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLinearOrderApi->linearOrderReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***|  | 
 **orderId** | **NSString***|  | [optional] 
 **orderLinkId** | **NSString***|  | [optional] 
 **pRQty** | **NSString***|  | [optional] 
 **pRPrice** | **NSNumber***|  | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

