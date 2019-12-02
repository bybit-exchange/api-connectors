#import "SWGConditionalCancelAllRes.h"

@implementation SWGConditionalCancelAllRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clOrdID": @"clOrdID", @"userId": @"user_id", @"symbol": @"symbol", @"side": @"side", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"createType": @"create_type", @"cancelType": @"cancel_type", @"orderStatus": @"order_status", @"leavesQty": @"leaves_qty", @"leavesValue": @"leaves_value", @"crossSeq": @"cross_seq", @"stopOrderType": @"stop_order_type", @"triggerBy": @"trigger_by", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clOrdID", @"userId", @"symbol", @"side", @"orderType", @"price", @"qty", @"timeInForce", @"createType", @"cancelType", @"orderStatus", @"leavesQty", @"leavesValue", @"crossSeq", @"stopOrderType", @"triggerBy", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
