#import "SWGLinearExecutionApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"


@interface SWGLinearExecutionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGLinearExecutionApi

NSString* kSWGLinearExecutionApiErrorDomain = @"SWGLinearExecutionApiErrorDomain";
NSInteger kSWGLinearExecutionApiMissingParamErrorCode = 234513;

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
/// Get user's trading records.
/// This will get user's trading records.
///  @param symbol  (optional)
///
///  @param startTime  (optional)
///
///  @param endTime  (optional)
///
///  @param execType  (optional)
///
///  @param page  (optional)
///
///  @param limit  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) linearExecutionGetTradesWithSymbol: (NSString*) symbol
    startTime: (NSNumber*) startTime
    endTime: (NSNumber*) endTime
    execType: (NSString*) execType
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/private/linear/trade/execution/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (symbol != nil) {
        queryParams[@"symbol"] = symbol;
    }
    if (startTime != nil) {
        queryParams[@"start_time"] = startTime;
    }
    if (endTime != nil) {
        queryParams[@"end_time"] = endTime;
    }
    if (execType != nil) {
        queryParams[@"exec_type"] = execType;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
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



@end
