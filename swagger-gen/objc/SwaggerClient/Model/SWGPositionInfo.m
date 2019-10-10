#import "SWGPositionInfo.h"

@implementation SWGPositionInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"user_id", @"riskId": @"risk_id", @"symbol": @"symbol", @"side": @"side", @"size": @"size", @"positionValue": @"position_value", @"entryPrice": @"entry_price", @"leverage": @"leverage", @"autoAddMargin": @"auto_add_margin", @"positionMargin": @"position_margin", @"liqPrice": @"liq_price", @"bustPrice": @"bust_price", @"occClosingFee": @"occ_closing_fee", @"occFundingFee": @"occ_funding_fee", @"takeProfit": @"take_profit", @"stopLoss": @"stop_loss", @"trailingStop": @"trailing_stop", @"positionStatus": @"position_status", @"deleverageIndicator": @"deleverage_indicator", @"ocCalcData": @"oc_calc_data", @"orderMargin": @"order_margin", @"walletBalance": @"wallet_balance", @"unrealisedPnl": @"unrealised_pnl", @"realisedPnl": @"realised_pnl", @"cumRealisedPnl": @"cum_realised_pnl", @"cumCommission": @"cum_commission", @"crossSeq": @"cross_seq", @"positionSeq": @"position_seq", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"userId", @"riskId", @"symbol", @"side", @"size", @"positionValue", @"entryPrice", @"leverage", @"autoAddMargin", @"positionMargin", @"liqPrice", @"bustPrice", @"occClosingFee", @"occFundingFee", @"takeProfit", @"stopLoss", @"trailingStop", @"positionStatus", @"deleverageIndicator", @"ocCalcData", @"orderMargin", @"walletBalance", @"unrealisedPnl", @"realisedPnl", @"cumRealisedPnl", @"cumCommission", @"crossSeq", @"positionSeq", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
