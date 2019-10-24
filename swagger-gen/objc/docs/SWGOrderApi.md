# SWGOrderApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderCancel**](SWGOrderApi.md#ordercancel) | **POST** /open-api/order/cancel | Get my active order list.
[**orderGetOrders**](SWGOrderApi.md#ordergetorders) | **GET** /open-api/order/list | Get my active order list.
[**orderNew**](SWGOrderApi.md#ordernew) | **POST** /open-api/order/create | Place active order
[**orderQuery**](SWGOrderApi.md#orderquery) | **GET** /v2/private/order | Get my active order list.
[**orderReplace**](SWGOrderApi.md#orderreplace) | **POST** /open-api/order/replace | Replace active order. Only incomplete orders can be modified. 


# **orderCancel**
```objc
-(NSURLSessionTask*) orderCancelWithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get my active order list.

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


NSString* orderId = @"orderId_example"; // Order ID
NSString* symbol = @"symbol_example"; // Contract type. (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// Get my active order list.
[apiInstance orderCancelWithOrderId:orderId
              symbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->orderCancel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| Order ID | 
 **symbol** | **NSString***| Contract type. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderGetOrders**
```objc
-(NSURLSessionTask*) orderGetOrdersWithOrderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    order: (NSString*) order
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    orderStatus: (NSString*) orderStatus
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get my active order list.

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


NSString* orderId = @"orderId_example"; // Order ID (optional)
NSString* orderLinkId = @"orderLinkId_example"; // Customized order ID. (optional)
NSString* symbol = @"symbol_example"; // Contract type. Default BTCUSD (optional)
NSString* order = @"order_example"; // Sort orders by creation date (optional)
NSNumber* page = @8.14; // Page. Default getting first page data (optional)
NSNumber* limit = @8.14; // TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
NSString* orderStatus = @"orderStatus_example"; // Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// Get my active order list.
[apiInstance orderGetOrdersWithOrderId:orderId
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
                            NSLog(@"Error calling SWGOrderApi->orderGetOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| Order ID | [optional] 
 **orderLinkId** | **NSString***| Customized order ID. | [optional] 
 **symbol** | **NSString***| Contract type. Default BTCUSD | [optional] 
 **order** | **NSString***| Sort orders by creation date | [optional] 
 **page** | **NSNumber***| Page. Default getting first page data | [optional] 
 **limit** | **NSNumber***| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 
 **orderStatus** | **NSString***| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderNew**
```objc
-(NSURLSessionTask*) orderNewWithSide: (NSString*) side
    symbol: (NSString*) symbol
    orderType: (NSString*) orderType
    qty: (NSNumber*) qty
    price: (NSNumber*) price
    timeInForce: (NSString*) timeInForce
    takeProfit: (NSNumber*) takeProfit
    stopLoss: (NSNumber*) stopLoss
    reduceOnly: (NSNumber*) reduceOnly
    closeOnTrigger: (NSNumber*) closeOnTrigger
    orderLinkId: (NSString*) orderLinkId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Place active order

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


NSString* side = @"side_example"; // Side
NSString* symbol = @"symbol_example"; // Contract type.
NSString* orderType = @"orderType_example"; // Active order type
NSNumber* qty = @8.14; // 
NSNumber* price = @1.2; // Order price.
NSString* timeInForce = @"timeInForce_example"; // Time in force
NSNumber* takeProfit = @1.2; // take profit price (optional)
NSNumber* stopLoss = @1.2; // stop loss price (optional)
NSNumber* reduceOnly = @true; // reduce only (optional)
NSNumber* closeOnTrigger = @true; // close on trigger (optional)
NSString* orderLinkId = @"orderLinkId_example"; // TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// Place active order
[apiInstance orderNewWithSide:side
              symbol:symbol
              orderType:orderType
              qty:qty
              price:price
              timeInForce:timeInForce
              takeProfit:takeProfit
              stopLoss:stopLoss
              reduceOnly:reduceOnly
              closeOnTrigger:closeOnTrigger
              orderLinkId:orderLinkId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->orderNew: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **NSString***| Side | 
 **symbol** | **NSString***| Contract type. | 
 **orderType** | **NSString***| Active order type | 
 **qty** | **NSNumber***|  | 
 **price** | **NSNumber***| Order price. | 
 **timeInForce** | **NSString***| Time in force | 
 **takeProfit** | **NSNumber***| take profit price | [optional] 
 **stopLoss** | **NSNumber***| stop loss price | [optional] 
 **reduceOnly** | **NSNumber***| reduce only | [optional] 
 **closeOnTrigger** | **NSNumber***| close on trigger | [optional] 
 **orderLinkId** | **NSString***| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderQuery**
```objc
-(NSURLSessionTask*) orderQueryWithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get my active order list.

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


NSString* orderId = @"orderId_example"; // Order ID (optional)
NSString* symbol = @"symbol_example"; // Contract type. Default BTCUSD (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// Get my active order list.
[apiInstance orderQueryWithOrderId:orderId
              symbol:symbol
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->orderQuery: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| Order ID | [optional] 
 **symbol** | **NSString***| Contract type. Default BTCUSD | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderReplace**
```objc
-(NSURLSessionTask*) orderReplaceWithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
    pRQty: (NSNumber*) pRQty
    pRPrice: (NSNumber*) pRPrice
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Replace active order. Only incomplete orders can be modified. 

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


NSString* orderId = @"orderId_example"; // Order ID.
NSString* symbol = @"symbol_example"; // Contract type.
NSNumber* pRQty = @8.14; // Order quantity. (optional)
NSNumber* pRPrice = @1.2; // Order price. (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// Replace active order. Only incomplete orders can be modified. 
[apiInstance orderReplaceWithOrderId:orderId
              symbol:symbol
              pRQty:pRQty
              pRPrice:pRPrice
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->orderReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| Order ID. | 
 **symbol** | **NSString***| Contract type. | 
 **pRQty** | **NSNumber***| Order quantity. | [optional] 
 **pRPrice** | **NSNumber***| Order price. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [apiSignature](../README.md#apiSignature), [timestamp](../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

