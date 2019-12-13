#import "SWGOrderApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"


@interface SWGOrderApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGOrderApi

NSString* kSWGOrderApiErrorDomain = @"SWGOrderApiErrorDomain";
NSInteger kSWGOrderApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Get my active order list.
/// 
///  @param orderId Order ID 
///
///  @param symbol Contract type. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) orderCancelWithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'orderId' is set
    if (orderId == nil) {
        NSParameterAssert(orderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderId"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/open-api/order/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (orderId) {
        formParams[@"order_id"] = orderId;
    }
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get my active order list.
/// 
///  @param symbol Contract type. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) orderCancelAllWithSymbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/order/cancelAll"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get my active order list.
/// 
///  @param orderId Order ID (optional)
///
///  @param symbol Contract type. (optional)
///
///  @param orderLinkId Order link id. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) orderCancelV2WithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
    orderLinkId: (NSString*) orderLinkId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/order/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (orderId) {
        formParams[@"order_id"] = orderId;
    }
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }
    if (orderLinkId) {
        formParams[@"order_link_id"] = orderLinkId;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get my active order list.
/// 
///  @param orderId Order ID (optional)
///
///  @param orderLinkId Customized order ID. (optional)
///
///  @param symbol Contract type. Default BTCUSD (optional)
///
///  @param order Sort orders by creation date (optional)
///
///  @param page Page. Default getting first page data (optional)
///
///  @param limit TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
///
///  @param orderStatus Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) orderGetOrdersWithOrderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    order: (NSString*) order
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    orderStatus: (NSString*) orderStatus
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/open-api/order/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (orderId != nil) {
        queryParams[@"order_id"] = orderId;
    }
    if (orderLinkId != nil) {
        queryParams[@"order_link_id"] = orderLinkId;
    }
    if (symbol != nil) {
        queryParams[@"symbol"] = symbol;
    }
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (orderStatus != nil) {
        queryParams[@"order_status"] = orderStatus;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Place active order
/// 
///  @param side Side 
///
///  @param symbol Contract type. 
///
///  @param orderType Active order type 
///
///  @param qty  
///
///  @param price Order price. 
///
///  @param timeInForce Time in force 
///
///  @param takeProfit take profit price (optional)
///
///  @param stopLoss stop loss price (optional)
///
///  @param reduceOnly reduce only (optional)
///
///  @param closeOnTrigger close on trigger (optional)
///
///  @param orderLinkId TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional)
///
///  @returns NSObject*
///
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
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'side' is set
    if (side == nil) {
        NSParameterAssert(side);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"side"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'orderType' is set
    if (orderType == nil) {
        NSParameterAssert(orderType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderType"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'qty' is set
    if (qty == nil) {
        NSParameterAssert(qty);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"qty"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'price' is set
    if (price == nil) {
        NSParameterAssert(price);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"price"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timeInForce' is set
    if (timeInForce == nil) {
        NSParameterAssert(timeInForce);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timeInForce"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/open-api/order/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (price != nil) {
        queryParams[@"price"] = price;
    }
    if (takeProfit != nil) {
        queryParams[@"take_profit"] = takeProfit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (side) {
        formParams[@"side"] = side;
    }
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }
    if (orderType) {
        formParams[@"order_type"] = orderType;
    }
    if (qty) {
        formParams[@"qty"] = qty;
    }
    if (timeInForce) {
        formParams[@"time_in_force"] = timeInForce;
    }
    if (stopLoss) {
        formParams[@"stop_loss"] = stopLoss;
    }
    if (reduceOnly) {
        formParams[@"reduce_only"] = reduceOnly;
    }
    if (closeOnTrigger) {
        formParams[@"close_on_trigger"] = closeOnTrigger;
    }
    if (orderLinkId) {
        formParams[@"order_link_id"] = orderLinkId;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Place active order
/// 
///  @param side Side 
///
///  @param symbol Contract type. 
///
///  @param orderType Active order type 
///
///  @param qty  
///
///  @param price Order price. 
///
///  @param timeInForce Time in force 
///
///  @param takeProfit take profit price (optional)
///
///  @param stopLoss stop loss price (optional)
///
///  @param reduceOnly reduce only (optional)
///
///  @param closeOnTrigger close on trigger (optional)
///
///  @param orderLinkId TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. (optional)
///
///  @param trailingStop Trailing stop. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) orderNewV2WithSide: (NSString*) side
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
    trailingStop: (NSString*) trailingStop
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'side' is set
    if (side == nil) {
        NSParameterAssert(side);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"side"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'orderType' is set
    if (orderType == nil) {
        NSParameterAssert(orderType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderType"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'qty' is set
    if (qty == nil) {
        NSParameterAssert(qty);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"qty"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'price' is set
    if (price == nil) {
        NSParameterAssert(price);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"price"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timeInForce' is set
    if (timeInForce == nil) {
        NSParameterAssert(timeInForce);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timeInForce"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/order/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (price != nil) {
        queryParams[@"price"] = price;
    }
    if (takeProfit != nil) {
        queryParams[@"take_profit"] = takeProfit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (side) {
        formParams[@"side"] = side;
    }
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }
    if (orderType) {
        formParams[@"order_type"] = orderType;
    }
    if (qty) {
        formParams[@"qty"] = qty;
    }
    if (timeInForce) {
        formParams[@"time_in_force"] = timeInForce;
    }
    if (stopLoss) {
        formParams[@"stop_loss"] = stopLoss;
    }
    if (reduceOnly) {
        formParams[@"reduce_only"] = reduceOnly;
    }
    if (closeOnTrigger) {
        formParams[@"close_on_trigger"] = closeOnTrigger;
    }
    if (orderLinkId) {
        formParams[@"order_link_id"] = orderLinkId;
    }
    if (trailingStop) {
        formParams[@"trailing_stop"] = trailingStop;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get my active order list.
/// 
///  @param orderId Order ID (optional)
///
///  @param symbol Contract type. Default BTCUSD (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) orderQueryWithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/order"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (orderId != nil) {
        queryParams[@"order_id"] = orderId;
    }
    if (symbol != nil) {
        queryParams[@"symbol"] = symbol;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Replace active order. Only incomplete orders can be modified. 
/// 
///  @param orderId Order ID. 
///
///  @param symbol Contract type. 
///
///  @param pRQty Order quantity. (optional)
///
///  @param pRPrice Order price. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) orderReplaceWithOrderId: (NSString*) orderId
    symbol: (NSString*) symbol
    pRQty: (NSNumber*) pRQty
    pRPrice: (NSNumber*) pRPrice
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'orderId' is set
    if (orderId == nil) {
        NSParameterAssert(orderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderId"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGOrderApiErrorDomain code:kSWGOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/open-api/order/replace"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (orderId) {
        formParams[@"order_id"] = orderId;
    }
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }
    if (pRQty) {
        formParams[@"p_r_qty"] = pRQty;
    }
    if (pRPrice) {
        formParams[@"p_r_price"] = pRPrice;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}



@end
