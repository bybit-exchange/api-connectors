# SWGConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](SWGConditionalApi.md#conditionalcancel) | **POST** /v2/private/stop-order/cancel | Cancel conditional order.
[**conditionalCancelAll**](SWGConditionalApi.md#conditionalcancelall) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditionalGetOrders**](SWGConditionalApi.md#conditionalgetorders) | **GET** /v2/private/stop-order/list | Get my conditional order list.
[**conditionalNew**](SWGConditionalApi.md#conditionalnew) | **POST** /v2/private/stop-order/create | Place a new conditional order.
[**conditionalQuery**](SWGConditionalApi.md#conditionalquery) | **GET** /v2/private/stop-order | Query real-time stop order information.
[**conditionalReplace**](SWGConditionalApi.md#conditionalreplace) | **POST** /v2/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 


# **conditionalCancel**
```objc
-(NSURLSessionTask*) conditionalCancelWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
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
NSString* stopOrderId = @"stopOrderId_example"; // Order ID of conditional order. (optional)
NSString* orderLinkId = @"orderLinkId_example"; // Agency customized order ID. (optional)

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Cancel conditional order.
[apiInstance conditionalCancelWithSymbol:symbol
              stopOrderId:stopOrderId
              orderLinkId:orderLinkId
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
 **symbol** | **NSString***| Contract type. | 
 **stopOrderId** | **NSString***| Order ID of conditional order. | [optional] 
 **orderLinkId** | **NSString***| Agency customized order ID. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditionalGetOrders**
```objc
-(NSURLSessionTask*) conditionalGetOrdersWithSymbol: (NSString*) symbol
    stopOrderStatus: (NSString*) stopOrderStatus
    limit: (NSNumber*) limit
    direction: (NSString*) direction
    cursor: (NSString*) cursor
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


NSString* symbol = @"symbol_example"; // Contract type
NSString* stopOrderStatus = @"stopOrderStatus_example"; // Stop order status. (optional)
NSNumber* limit = @8.14; // Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
NSString* direction = @"direction_example"; // Search direction. prev: prev page, next: next page. Defaults to next (optional)
NSString* cursor = @"cursor_example"; // Page turning mark，Use return cursor,Sign use origin data, in request please urlencode (optional)

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Get my conditional order list.
[apiInstance conditionalGetOrdersWithSymbol:symbol
              stopOrderStatus:stopOrderStatus
              limit:limit
              direction:direction
              cursor:cursor
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
 **symbol** | **NSString***| Contract type | 
 **stopOrderStatus** | **NSString***| Stop order status. | [optional] 
 **limit** | **NSNumber***| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional] 
 **direction** | **NSString***| Search direction. prev: prev page, next: next page. Defaults to next | [optional] 
 **cursor** | **NSString***| Page turning mark，Use return cursor,Sign use origin data, in request please urlencode | [optional] 

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
    qty: (NSString*) qty
    basePrice: (NSString*) basePrice
    stopPx: (NSString*) stopPx
    timeInForce: (NSString*) timeInForce
    price: (NSString*) price
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
NSString* qty = @"qty_example"; // Order quantity.
NSString* basePrice = @"basePrice_example"; // Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
NSString* stopPx = @"stopPx_example"; // Trigger price.
NSString* timeInForce = @"timeInForce_example"; // Time in force.
NSString* price = @"price_example"; // Execution price for conditional order (optional)
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
 **qty** | **NSString***| Order quantity. | 
 **basePrice** | **NSString***| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. | 
 **stopPx** | **NSString***| Trigger price. | 
 **timeInForce** | **NSString***| Time in force. | 
 **price** | **NSString***| Execution price for conditional order | [optional] 
 **triggerBy** | **NSString***| Trigger price type. Default LastPrice. | [optional] 
 **closeOnTrigger** | **NSNumber***| close on trigger. | [optional] 
 **orderLinkId** | **NSString***| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conditionalQuery**
```objc
-(NSURLSessionTask*) conditionalQueryWithStopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Query real-time stop order information.

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
NSString* symbol = @"symbol_example"; // Contract type. (optional)

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Query real-time stop order information.
[apiInstance conditionalQueryWithStopOrderId:stopOrderId
              orderLinkId:orderLinkId
              symbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConditionalApi->conditionalQuery: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopOrderId** | **NSString***| Order ID of conditional order. | [optional] 
 **orderLinkId** | **NSString***| Agency customized order ID. | [optional] 
 **symbol** | **NSString***| Contract type. | [optional] 

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
    orderLinkId: (NSString*) orderLinkId
    pRQty: (NSString*) pRQty
    pRPrice: (NSString*) pRPrice
    pRTriggerPrice: (NSString*) pRTriggerPrice
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
NSString* orderLinkId = @"orderLinkId_example"; // Order Link ID. (optional)
NSString* pRQty = @"pRQty_example"; // Order quantity. (optional)
NSString* pRPrice = @"pRPrice_example"; // Order price. (optional)
NSString* pRTriggerPrice = @"pRTriggerPrice_example"; // Trigger price. (optional)

SWGConditionalApi*apiInstance = [[SWGConditionalApi alloc] init];

// Replace conditional order. Only incomplete orders can be modified. 
[apiInstance conditionalReplaceWithSymbol:symbol
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
                            NSLog(@"Error calling SWGConditionalApi->conditionalReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **NSString***| Contract type. | 
 **stopOrderId** | **NSString***| Stop order ID. | [optional] 
 **orderLinkId** | **NSString***| Order Link ID. | [optional] 
 **pRQty** | **NSString***| Order quantity. | [optional] 
 **pRPrice** | **NSString***| Order price. | [optional] 
 **pRTriggerPrice** | **NSString***| Trigger price. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

