#import "SWGLinearTradeRecordItem.h"

@implementation SWGLinearTradeRecordItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"closedSize": @"closed_size", @"execFee": @"exec_fee", @"execId": @"exec_id", @"execPrice": @"exec_price", @"execQty": @"exec_qty", @"execType": @"exec_type", @"execValue": @"exec_value", @"feeRate": @"fee_rate", @"lastLiquidityInd": @"last_liquidity_ind", @"leavesQty": @"leaves_qty", @"orderId": @"order_id", @"orderLinkId": @"order_link_id", @"orderPrice": @"order_price", @"orderQty": @"order_qty", @"orderType": @"order_type", @"price": @"price", @"side": @"side", @"symbol": @"symbol", @"tradeTime": @"trade_time", @"tradeTimeMs": @"trade_time_ms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"closedSize", @"execFee", @"execId", @"execPrice", @"execQty", @"execType", @"execValue", @"feeRate", @"lastLiquidityInd", @"leavesQty", @"orderId", @"orderLinkId", @"orderPrice", @"orderQty", @"orderType", @"price", @"side", @"symbol", @"tradeTime", @"tradeTimeMs"];
  return [optionalProperties containsObject:propertyName];
}

@end
