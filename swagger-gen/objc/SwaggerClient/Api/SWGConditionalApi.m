#import "SWGConditionalApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"


@interface SWGConditionalApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGConditionalApi

NSString* kSWGConditionalApiErrorDomain = @"SWGConditionalApiErrorDomain";
NSInteger kSWGConditionalApiMissingParamErrorCode = 234513;

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
/// Cancel conditional order.
/// 
///  @param symbol Contract type. 
///
///  @param stopOrderId Order ID of conditional order. (optional)
///
///  @param orderLinkId Agency customized order ID. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) conditionalCancelWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/stop-order/cancel"];

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
/// Cancel conditional order.
/// 
///  @param symbol Contract type. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) conditionalCancelAllWithSymbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/stop-order/cancelAll"];

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
/// Get my conditional order list.
/// 
///  @param symbol Contract type 
///
///  @param stopOrderStatus Stop order status. (optional)
///
///  @param limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
///
///  @param direction Search direction. prev: prev page, next: next page. Defaults to next (optional)
///
///  @param cursor Page turning mark，Use return cursor,Sign use origin data, in request please urlencode (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) conditionalGetOrdersWithSymbol: (NSString*) symbol
    stopOrderStatus: (NSString*) stopOrderStatus
    limit: (NSNumber*) limit
    direction: (NSString*) direction
    cursor: (NSString*) cursor
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/stop-order/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (symbol != nil) {
        queryParams[@"symbol"] = symbol;
    }
    if (stopOrderStatus != nil) {
        queryParams[@"stop_order_status"] = stopOrderStatus;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (direction != nil) {
        queryParams[@"direction"] = direction;
    }
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
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
/// Place a new conditional order.
/// 
///  @param side Side. 
///
///  @param symbol Contract type. 
///
///  @param orderType Conditional order type. 
///
///  @param qty Order quantity. 
///
///  @param basePrice Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. 
///
///  @param stopPx Trigger price. 
///
///  @param timeInForce Time in force. 
///
///  @param price Execution price for conditional order (optional)
///
///  @param triggerBy Trigger price type. Default LastPrice. (optional)
///
///  @param closeOnTrigger close on trigger. (optional)
///
///  @param orderLinkId Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. (optional)
///
///  @returns NSObject*
///
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
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'side' is set
    if (side == nil) {
        NSParameterAssert(side);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"side"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'orderType' is set
    if (orderType == nil) {
        NSParameterAssert(orderType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderType"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'qty' is set
    if (qty == nil) {
        NSParameterAssert(qty);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"qty"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'basePrice' is set
    if (basePrice == nil) {
        NSParameterAssert(basePrice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"basePrice"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'stopPx' is set
    if (stopPx == nil) {
        NSParameterAssert(stopPx);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"stopPx"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timeInForce' is set
    if (timeInForce == nil) {
        NSParameterAssert(timeInForce);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timeInForce"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/stop-order/create"];

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
/// Query real-time stop order information.
/// 
///  @param stopOrderId Order ID of conditional order. (optional)
///
///  @param orderLinkId Agency customized order ID. (optional)
///
///  @param symbol Contract type. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) conditionalQueryWithStopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    symbol: (NSString*) symbol
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/stop-order"];

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
/// Replace conditional order. Only incomplete orders can be modified. 
/// 
///  @param symbol Contract type. 
///
///  @param stopOrderId Stop order ID. (optional)
///
///  @param orderLinkId Order Link ID. (optional)
///
///  @param pRQty Order quantity. (optional)
///
///  @param pRPrice Order price. (optional)
///
///  @param pRTriggerPrice Trigger price. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) conditionalReplaceWithSymbol: (NSString*) symbol
    stopOrderId: (NSString*) stopOrderId
    orderLinkId: (NSString*) orderLinkId
    pRQty: (NSString*) pRQty
    pRPrice: (NSString*) pRPrice
    pRTriggerPrice: (NSString*) pRTriggerPrice
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'symbol' is set
    if (symbol == nil) {
        NSParameterAssert(symbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"symbol"] };
            NSError* error = [NSError errorWithDomain:kSWGConditionalApiErrorDomain code:kSWGConditionalApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/private/stop-order/replace"];

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
