#import "SWGWithdrawBalance.h"

@implementation SWGWithdrawBalance

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"equity": @"equity", @"availableBalance": @"available_balance", @"usedMargin": @"used_margin", @"orderMargin": @"order_margin", @"positionMargin": @"position_margin", @"occClosingFee": @"occ_closing_fee", @"occFundingFee": @"occ_funding_fee", @"walletBalance": @"wallet_balance", @"realisedPnl": @"realised_pnl", @"unrealisedPnl": @"unrealised_pnl", @"cumRealisedPnl": @"cum_realised_pnl", @"givenCash": @"given_cash", @"serviceCash": @"service_cash" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"equity", @"availableBalance", @"usedMargin", @"orderMargin", @"positionMargin", @"occClosingFee", @"occFundingFee", @"walletBalance", @"realisedPnl", @"unrealisedPnl", @"cumRealisedPnl", @"givenCash", @"serviceCash"];
  return [optionalProperties containsObject:propertyName];
}

@end
