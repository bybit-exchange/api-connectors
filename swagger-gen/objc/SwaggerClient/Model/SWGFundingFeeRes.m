#import "SWGFundingFeeRes.h"

@implementation SWGFundingFeeRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"symbol": @"symbol", @"side": @"side", @"size": @"size", @"fundingRate": @"funding_rate", @"execFee": @"exec_fee", @"execTimestamp": @"exec_timestamp" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"symbol", @"side", @"size", @"fundingRate", @"execFee", @"execTimestamp"];
  return [optionalProperties containsObject:propertyName];
}

@end
