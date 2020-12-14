#import "SWGLinearOrderApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"


@interface SWGLinearOrderApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGLinearOrderApi

NSString* kSWGLinearOrderApiErrorDomain = @"SWGLinearOrderApiErrorDomain";
NSInteger kSWGLinearOrderApiMissingParamErrorCode = 234513;

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
///  @param orderId  (optional)
///
///  @param orderLinkId  (optional)
///
///  @param symbol  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearOrderCancelWithOrderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/order/cancel"];

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
    if (orderId) {
        formParams[@"order_id"] = orderId;
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
/// Cancel all active orders.
/// 
///  @param symbol Contract type. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearOrderCancelAllWithSymbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGLinearOrderApiErrorDomain code:kSWGLinearOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/order/cancel-all"];

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
/// Get linear Active Orders
/// This will get linear active orders
///  @param orderId  (optional)
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
///  @param orderStatus  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearOrderGetOrdersWithOrderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    order: (NSString*) order
    page: (NSString*) page
    limit: (NSString*) limit
    orderStatus: (NSString*) orderStatus
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/order/list"];

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
/// Create Active Order
/// This will create linear order
///  @param symbol  (optional)
///
///  @param side  (optional)
///
///  @param orderType  (optional)
///
///  @param timeInForce  (optional)
///
///  @param qty  (optional)
///
///  @param price  (optional)
///
///  @param takeProfit  (optional)
///
///  @param stopLoss  (optional)
///
///  @param reduceOnly  (optional)
///
///  @param tpTriggerBy  (optional)
///
///  @param slTriggerBy  (optional)
///
///  @param closeOnTrigger  (optional)
///
///  @param orderLinkId  (optional)
///
///  @returns NSObject*
///
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
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/order/create"];

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
    if (timeInForce) {
        formParams[@"time_in_force"] = timeInForce;
    }
    if (qty) {
        formParams[@"qty"] = qty;
    }
    if (price) {
        formParams[@"price"] = price;
    }
    if (takeProfit) {
        formParams[@"take_profit"] = takeProfit;
    }
    if (stopLoss) {
        formParams[@"stop_loss"] = stopLoss;
    }
    if (reduceOnly) {
        formParams[@"reduce_only"] = reduceOnly;
    }
    if (tpTriggerBy) {
        formParams[@"tp_trigger_by"] = tpTriggerBy;
    }
    if (slTriggerBy) {
        formParams[@"sl_trigger_by"] = slTriggerBy;
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
/// Get Active Orders(real-time)
/// This will get linear active orders(real-time)
///  @param symbol  (optional)
///
///  @param orderId  (optional)
///
///  @param orderLinkId  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearOrderQueryWithSymbol: (NSString*) symbol
    orderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/order/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (symbol != nil) {
        queryParams[@"symbol"] = symbol;
    }
    if (orderId != nil) {
        queryParams[@"order_id"] = orderId;
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
/// Replace Active Order
/// 
///  @param symbol  
///
///  @param orderId  (optional)
///
///  @param orderLinkId  (optional)
///
///  @param pRQty  (optional)
///
///  @param pRPrice  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearOrderReplaceWithSymbol: (NSString*) symbol
    orderId: (NSString*) orderId
    orderLinkId: (NSString*) orderLinkId
    pRQty: (NSString*) pRQty
    pRPrice: (NSNumber*) pRPrice
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGLinearOrderApiErrorDomain code:kSWGLinearOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/order/replace"];

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
    if (orderId) {
        formParams[@"order_id"] = orderId;
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
