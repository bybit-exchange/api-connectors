#import "SWGClosedPnlBase.h"

@implementation SWGClosedPnlBase

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"retCode": @"ret_code", @"retMsg": @"ret_msg", @"extCode": @"ext_code", @"extInfo": @"ext_info", @"result": @"result", @"timeNow": @"time_now" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"retCode", @"retMsg", @"extCode", @"extInfo", @"result", @"timeNow"];
  return [optionalProperties containsObject:propertyName];
}

@end
