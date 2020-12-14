#import "SWGLinearPrevFundingResp.h"

@implementation SWGLinearPrevFundingResp

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"execFee": @"exec_fee", @"execTime": @"exec_time", @"fundingRate": @"funding_rate", @"side": @"side", @"size": @"size", @"symbol": @"symbol" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"execFee", @"execTime", @"fundingRate", @"side", @"size", @"symbol"];
  return [optionalProperties containsObject:propertyName];
}

@end
