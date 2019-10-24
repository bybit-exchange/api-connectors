#import "SWGQueryOrderRes.h"

@implementation SWGQueryOrderRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"orderId": @"order_id", @"userId": @"user_id", @"symbol": @"symbol", @"side": @"side", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"orderStatus": @"order_status", @"extFields": @"ext_fields", @"leavesQty": @"leaves_qty", @"leavesValue": @"leaves_value", @"cumExecQty": @"cum_exec_qty", @"rejectReason": @"reject_reason", @"orderLinkId": @"order_link_id", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"orderId", @"userId", @"symbol", @"side", @"orderType", @"price", @"qty", @"timeInForce", @"orderStatus", @"extFields", @"leavesQty", @"leavesValue", @"cumExecQty", @"rejectReason", @"orderLinkId", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
