#import "SWGV2OrderRes.h"

@implementation SWGV2OrderRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"orderStatus": @"order_status", @"symbol": @"symbol", @"side": @"side", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"orderLinkId": @"order_link_id", @"orderId": @"order_id", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"leavesQty": @"leaves_qty", @"leavesValue": @"leaves_value", @"cumExecQty": @"cum_exec_qty", @"cumExecValue": @"cum_exec_value", @"cumExecFee": @"cum_exec_fee", @"rejectReason": @"reject_reason" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"orderStatus", @"symbol", @"side", @"orderType", @"price", @"qty", @"timeInForce", @"orderLinkId", @"orderId", @"createdAt", @"updatedAt", @"leavesQty", @"leavesValue", @"cumExecQty", @"cumExecValue", @"cumExecFee", @"rejectReason"];
  return [optionalProperties containsObject:propertyName];
}

@end
