#import "SWGOrderCancelAllRes.h"

@implementation SWGOrderCancelAllRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clOrdID": @"clOrdID", @"userId": @"user_id", @"side": @"side", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"createType": @"create_type", @"orderStatus": @"order_status", @"leavesQty": @"leaves_qty", @"leavesValue": @"leaves_value", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"crossStatus": @"cross_status", @"crossSeq": @"cross_seq" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clOrdID", @"userId", @"side", @"orderType", @"price", @"qty", @"timeInForce", @"createType", @"orderStatus", @"leavesQty", @"leavesValue", @"createdAt", @"updatedAt", @"crossStatus", @"crossSeq"];
  return [optionalProperties containsObject:propertyName];
}

@end
