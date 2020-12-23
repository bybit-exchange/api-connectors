#import "SWGLinearSearchStopOrderResult.h"

@implementation SWGLinearSearchStopOrderResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"stopOrderId": @"stop_order_id", @"userId": @"user_id", @"side": @"side", @"symbol": @"symbol", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"orderStatus": @"order_status", @"triggerPrice": @"trigger_price", @"orderLinkId": @"order_link_id", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"takeProfit": @"take_profit", @"stopLoss": @"stop_loss", @"tpTriggerBy": @"tp_trigger_by", @"slTriggerBy": @"sl_trigger_by" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"stopOrderId", @"userId", @"side", @"symbol", @"orderType", @"price", @"qty", @"timeInForce", @"orderStatus", @"triggerPrice", @"orderLinkId", @"createdAt", @"updatedAt", @"takeProfit", @"stopLoss", @"tpTriggerBy", @"slTriggerBy"];
  return [optionalProperties containsObject:propertyName];
}

@end
