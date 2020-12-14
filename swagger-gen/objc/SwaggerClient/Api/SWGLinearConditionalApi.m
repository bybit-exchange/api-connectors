#import "SWGLinearConditionalApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"


@interface SWGLinearConditionalApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGLinearConditionalApi

NSString* kSWGLinearConditionalApiErrorDomain = @"SWGLinearConditionalApiErrorDomain";
NSInteger kSWGLinearConditionalApiMissingParamErrorCode = 234513;

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
/// Cancel Active Order
/// This will cancel linear active order
///  @param stopOrderId  (optional)
///
///  @param orderLinkId  (optional)
///
///  @param symbol  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearConditionalCancelWithStopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/stop-order/cancel"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (stopOrderId) {
        formParams[@"stop_order_id"] = stopOrderId;
    }
    if (orderLinkId) {
        formParams[@"order_link_id"] = orderLinkId;
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
/// Cancel all stop orders.
/// 
///  @param symbol Contract type. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearConditionalCancelAllWithSymbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGLinearConditionalApiErrorDomain code:kSWGLinearConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/stop-order/cancel-all"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

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
/// Get linear Stop Orders
/// This will get linear active orders
///  @param stopOrderId  (optional)
///
///  @param orderLinkId  (optional)
///
///  @param symbol  (optional)
///
///  @param order  (optional)
///
///  @param page  (optional)
///
///  @param limit  (optional)
///
///  @param stopOrderStatus  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearConditionalGetOrdersWithStopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    order: (NSString*) order
    page: (NSString*) page
    limit: (NSString*) limit
    stopOrderStatus: (NSString*) stopOrderStatus
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/stop-order/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (stopOrderId != nil) {
        queryParams[@"stop_order_id"] = stopOrderId;
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
    if (stopOrderStatus != nil) {
        queryParams[@"stop_order_status"] = stopOrderStatus;
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
/// Create linear stop Order
/// This will create linear stop order
///  @param symbol  (optional)
///
///  @param side  (optional)
///
///  @param orderType  (optional)
///
///  @param qty  (optional)
///
///  @param price  (optional)
///
///  @param basePrice  (optional)
///
///  @param stopPx  (optional)
///
///  @param timeInForce  (optional)
///
///  @param triggerBy  (optional)
///
///  @param reduceOnly  (optional)
///
///  @param closeOnTrigger  (optional)
///
///  @param orderLinkId  (optional)
///
///  @param takeProfit  (optional)
///
///  @param stopLoss  (optional)
///
///  @param tpTriggerBy  (optional)
///
///  @param slTriggerBy  (optional)
///
///  @returns NSObject*
///
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
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/stop-order/create"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }
    if (side) {
        formParams[@"side"] = side;
    }
    if (orderType) {
        formParams[@"order_type"] = orderType;
    }
    if (qty) {
        formParams[@"qty"] = qty;
    }
    if (price) {
        formParams[@"price"] = price;
    }
    if (basePrice) {
        formParams[@"base_price"] = basePrice;
    }
    if (stopPx) {
        formParams[@"stop_px"] = stopPx;
    }
    if (timeInForce) {
        formParams[@"time_in_force"] = timeInForce;
    }
    if (triggerBy) {
        formParams[@"trigger_by"] = triggerBy;
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
    if (takeProfit) {
        formParams[@"take_profit"] = takeProfit;
    }
    if (stopLoss) {
        formParams[@"stop_loss"] = stopLoss;
    }
    if (tpTriggerBy) {
        formParams[@"tp_trigger_by"] = tpTriggerBy;
    }
    if (slTriggerBy) {
        formParams[@"sl_trigger_by"] = slTriggerBy;
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
/// Get Stop Orders(real-time)
/// This will get linear stop orders(real-time)
///  @param symbol  (optional)
///
///  @param stopOrderId  (optional)
///
///  @param orderLinkId  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearConditionalQueryWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/stop-order/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (symbol != nil) {
        queryParams[@"symbol"] = symbol;
    }
    if (stopOrderId != nil) {
        queryParams[@"stop_order_id"] = stopOrderId;
    }
    if (orderLinkId != nil) {
        queryParams[@"order_link_id"] = orderLinkId;
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
/// Replace conditional order
/// 
///  @param symbol  
///
///  @param stopOrderId  (optional)
///
///  @param orderLinkId  (optional)
///
///  @param pRQty  (optional)
///
///  @param pRPrice  (optional)
///
///  @param pRTriggerPrice  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearConditionalReplaceWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    pRQty: (NSString*) pRQty
    pRPrice: (NSNumber*) pRPrice
    pRTriggerPrice: (NSNumber*) pRTriggerPrice
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGLinearConditionalApiErrorDomain code:kSWGLinearConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/stop-order/replace"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"apiSignature", @"timestamp"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (symbol) {
        formParams[@"symbol"] = symbol;
    }
    if (stopOrderId) {
        formParams[@"stop_order_id"] = stopOrderId;
    }
    if (orderLinkId) {
        formParams[@"order_link_id"] = orderLinkId;
    }
    if (pRQty) {
        formParams[@"p_r_qty"] = pRQty;
    }
    if (pRPrice) {
        formParams[@"p_r_price"] = pRPrice;
    }
    if (pRTriggerPrice) {
        formParams[@"p_r_trigger_price"] = pRTriggerPrice;
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
