#import "SWGAPIKeyInfo.h"

@implementation SWGAPIKeyInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"apiKey": @"api_key", @"userId": @"user_id", @"ips": @"ips", @"note": @"note", @"permissions": @"permissions", @"createdAt": @"created_at", @"_readOnly": @"read_only" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"apiKey", @"userId", @"ips", @"note", @"permissions", @"createdAt", @"_readOnly"];
  return [optionalProperties containsObject:propertyName];
}

@end
