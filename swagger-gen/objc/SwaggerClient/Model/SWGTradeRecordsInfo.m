#import "SWGTradeRecordsInfo.h"

@implementation SWGTradeRecordsInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"closedSize": @"closed_size", @"crossSeq": @"cross_seq", @"execFee": @"exec_fee", @"execId": @"exec_id", @"execPrice": @"exec_price", @"execQty": @"exec_qty", @"execTime": @"exec_time", @"execType": @"exec_type", @"execValue": @"exec_value", @"feeRate": @"fee_rate", @"lastLiquidityInd": @"last_liquidity_ind", @"leavesQty": @"leaves_qty", @"nthFill": @"nth_fill", @"orderId": @"order_id", @"orderPrice": @"order_price", @"orderQty": @"order_qty", @"orderType": @"order_type", @"side": @"side", @"symbol": @"symbol", @"userId": @"user_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"closedSize", @"crossSeq", @"execFee", @"execId", @"execPrice", @"execQty", @"execTime", @"execType", @"execValue", @"feeRate", @"lastLiquidityInd", @"leavesQty", @"nthFill", @"orderId", @"orderPrice", @"orderQty", @"orderType", @"side", @"symbol", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
