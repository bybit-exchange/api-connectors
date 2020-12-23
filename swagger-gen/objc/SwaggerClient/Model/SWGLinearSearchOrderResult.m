#import "SWGLinearSearchOrderResult.h"

@implementation SWGLinearSearchOrderResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdTime": @"created_time", @"cumExecFee": @"cum_exec_fee", @"cumExecQty": @"cum_exec_qty", @"cumExecValue": @"cum_exec_value", @"lastExecPrice": @"last_exec_price", @"orderId": @"order_id", @"orderLinkId": @"order_link_id", @"orderStatus": @"order_status", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"reduceOnly": @"reduce_only", @"side": @"side", @"symbol": @"symbol", @"timeInForce": @"time_in_force", @"updatedTime": @"updated_time", @"userId": @"user_id", @"takeProfit": @"take_profit", @"stopLoss": @"stop_loss", @"tpTriggerBy": @"tp_trigger_by", @"slTriggerBy": @"sl_trigger_by" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdTime", @"cumExecFee", @"cumExecQty", @"cumExecValue", @"lastExecPrice", @"orderId", @"orderLinkId", @"orderStatus", @"orderType", @"price", @"qty", @"reduceOnly", @"side", @"symbol", @"timeInForce", @"updatedTime", @"userId", @"takeProfit", @"stopLoss", @"tpTriggerBy", @"slTriggerBy"];
  return [optionalProperties containsObject:propertyName];
}

@end
