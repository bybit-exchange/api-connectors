#import "SWGBigDealInfo.h"

@implementation SWGBigDealInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"side": @"side", @"timestamp": @"timestamp", @"symbol": @"symbol", @"value": @"value" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"side", @"timestamp", @"symbol", @"value"];
  return [optionalProperties containsObject:propertyName];
}

@end
