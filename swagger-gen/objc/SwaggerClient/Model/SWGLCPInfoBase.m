#import "SWGLCPInfoBase.h"

@implementation SWGLCPInfoBase

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"date": @"date", @"selfRatio": @"self_ratio", @"platformRatio": @"platform_ratio", @"score": @"score" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"date", @"selfRatio", @"platformRatio", @"score"];
  return [optionalProperties containsObject:propertyName];
}

@end
