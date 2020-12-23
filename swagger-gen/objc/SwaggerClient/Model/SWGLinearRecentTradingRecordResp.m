#import "SWGLinearRecentTradingRecordResp.h"

@implementation SWGLinearRecentTradingRecordResp

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"price": @"price", @"qty": @"qty", @"side": @"side", @"symbol": @"symbol", @"time": @"time", @"tradeTimeMs": @"trade_time_ms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"price", @"qty", @"side", @"symbol", @"time", @"tradeTimeMs"];
  return [optionalProperties containsObject:propertyName];
}

@end
