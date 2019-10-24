#import "SWGExtFields.h"

@implementation SWGExtFields

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"oReqNum": @"o_req_num", @"xreqType": @"xreq_type", @"xreqOffset": @"xreq_offset" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"oReqNum", @"xreqType", @"xreqOffset"];
  return [optionalProperties containsObject:propertyName];
}

@end
