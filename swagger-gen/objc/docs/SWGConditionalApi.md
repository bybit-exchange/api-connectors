# SWGConditionalApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](SWGConditionalApi.md#conditionalcancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**conditionalCancelAll**](SWGConditionalApi.md#conditionalcancelall) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditionalGetOrders**](SWGConditionalApi.md#conditionalgetorders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**conditionalNew**](SWGConditionalApi.md#conditionalnew) | **POST** /open-api/stop-order/create | Place a new conditional order.
[**conditionalReplace**](SWGConditionalApi.md#conditionalreplace) | **POST** /open-api/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


# **conditionalCancel**
```objc
-(NSURLSessionTask*) conditionalCancelWithStopOrderId: (NSString*) stopOrderId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Cancel conditional order.

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


NSString* stopOrderId = @"stopOrderId_example"; // Order ID of conditional order.

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Cancel conditional order.
[apiInstance conditionalCancelWithStopOrderId:stopOrderId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConditionalApi->conditionalCancel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **NSString***| Order ID of conditional order. | 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditionalCancelAll**
```objc
-(NSURLSessionTask*) conditionalCancelAllWithSymbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Cancel conditional order.

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

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Cancel conditional order.
[apiInstance conditionalCancelAllWithSymbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConditionalApi->conditionalCancelAll: %@", error);
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditionalGetOrders**
```objc
-(NSURLSessionTask*) conditionalGetOrdersWithStopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    order: (NSString*) order
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get my conditional order list.

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


NSString* stopOrderId = @"stopOrderId_example"; // Order ID of conditional order. (optional)
NSString* orderLinkId = @"orderLinkId_example"; // Agency customized order ID. (optional)
NSString* symbol = @"symbol_example"; // Contract type. Default BTCUSD. (optional)
NSString* order = @"order_example"; // Sort orders by creation date (optional)
NSNumber* page = @8.14; // Page. Default getting first page data (optional)
NSNumber* limit = @8.14; // Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Get my conditional order list.
[apiInstance conditionalGetOrdersWithStopOrderId:stopOrderId
              orderLinkId:orderLinkId
              symbol:symbol
              order:order
              page:page
              limit:limit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConditionalApi->conditionalGetOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **NSString***| Order ID of conditional order. | [optional] 
 **orderLinkId** | **NSString***| Agency customized order ID. | [optional] 
 **symbol** | **NSString***| Contract type. Default BTCUSD. | [optional] 
 **order** | **NSString***| Sort orders by creation date | [optional] 
 **page** | **NSNumber***| Page. Default getting first page data | [optional] 
 **limit** | **NSNumber***| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditionalNew**
```objc
-(NSURLSessionTask*) conditionalNewWithSide: (NSString*) side
    symbol: (NSString*) symbol
    orderType: (NSString*) orderType
    qty: (NSNumber*) qty
    basePrice: (NSNumber*) basePrice
    stopPx: (NSNumber*) stopPx
    timeInForce: (NSString*) timeInForce
    price: (NSNumber*) price
    triggerBy: (NSString*) triggerBy
    closeOnTrigger: (NSNumber*) closeOnTrigger
    orderLinkId: (NSString*) orderLinkId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Place a new conditional order.

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


NSString* side = @"side_example"; // Side.
NSString* symbol = @"symbol_example"; // Contract type.
NSString* orderType = @"orderType_example"; // Conditional order type.
NSNumber* qty = @8.14; // Order quantity.
NSNumber* basePrice = @1.2; // Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
NSNumber* stopPx = @1.2; // Trigger price.
NSString* timeInForce = @"timeInForce_example"; // Time in force.
NSNumber* price = @1.2; // Execution price for conditional order (optional)
NSString* triggerBy = @"triggerBy_example"; // Trigger price type. Default LastPrice. (optional)
NSNumber* closeOnTrigger = @true; // close on trigger. (optional)
NSString* orderLinkId = @"orderLinkId_example"; // Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. (optional)

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Place a new conditional order.
[apiInstance conditionalNewWithSide:side
              symbol:symbol
              orderType:orderType
              qty:qty
              basePrice:basePrice
              stopPx:stopPx
              timeInForce:timeInForce
              price:price
              triggerBy:triggerBy
              closeOnTrigger:closeOnTrigger
              orderLinkId:orderLinkId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConditionalApi->conditionalNew: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **NSString***| Side. | 
 **symbol** | **NSString***| Contract type. | 
 **orderType** | **NSString***| Conditional order type. | 
 **qty** | **NSNumber***| Order quantity. | 
 **basePrice** | **NSNumber***| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stopPx** | **NSNumber***| Trigger price. | 
 **timeInForce** | **NSString***| Time in force. | 
 **price** | **NSNumber***| Execution price for conditional order | [optional] 
 **triggerBy** | **NSString***| Trigger price type. Default LastPrice. | [optional] 
 **closeOnTrigger** | **NSNumber***| close on trigger. | [optional] 
 **orderLinkId** | **NSString***| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditionalReplace**
```objc
-(NSURLSessionTask*) conditionalReplaceWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderId: (NSString*) orderId
    pRQty: (NSNumber*) pRQty
    pRPrice: (NSNumber*) pRPrice
    pRTriggerPrice: (NSNumber*) pRTriggerPrice
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Replace conditional order. Only incomplete orders can be modified. 

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
NSString* stopOrderId = @"stopOrderId_example"; // Stop order ID. (optional)
NSString* orderId = @"orderId_example"; // Stop order ID. (optional)
NSNumber* pRQty = @8.14; // Order quantity. (optional)
NSNumber* pRPrice = @1.2; // Order price. (optional)
NSNumber* pRTriggerPrice = @1.2; // Trigger price. (optional)

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Replace conditional order. Only incomplete orders can be modified. 
[apiInstance conditionalReplaceWithSymbol:symbol
              stopOrderId:stopOrderId
              orderId:orderId
              pRQty:pRQty
              pRPrice:pRPrice
              pRTriggerPrice:pRTriggerPrice
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConditionalApi->conditionalReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **stopOrderId** | **NSString***| Stop order ID. | [optional] 
 **orderId** | **NSString***| Stop order ID. | [optional] 
 **pRQty** | **NSNumber***| Order quantity. | [optional] 
 **pRPrice** | **NSNumber***| Order price. | [optional] 
 **pRTriggerPrice** | **NSNumber***| Trigger price. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

