#import "SWGMarkPriceKlineInfo.h"

@implementation SWGMarkPriceKlineInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"symbol": @"symbol", @"period": @"period", @"startAt": @"start_at", @"open": @"open", @"high": @"high", @"low": @"low", @"close": @"close" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"symbol", @"period", @"startAt", @"open", @"high", @"low", @"close"];
  return [optionalProperties containsObject:propertyName];
}

@end
