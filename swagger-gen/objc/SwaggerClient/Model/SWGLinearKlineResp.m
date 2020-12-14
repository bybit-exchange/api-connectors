#import "SWGLinearKlineResp.h"

@implementation SWGLinearKlineResp

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"close": @"close", @"high": @"high", @"_id": @"id", @"interval": @"interval", @"low": @"low", @"open": @"open", @"openTime": @"open_time", @"period": @"period", @"startAt": @"start_at", @"symbol": @"symbol", @"turnover": @"turnover", @"volume": @"volume" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"close", @"high", @"_id", @"interval", @"low", @"open", @"openTime", @"period", @"startAt", @"symbol", @"turnover", @"volume"];
  return [optionalProperties containsObject:propertyName];
}

@end
