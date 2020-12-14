#import "SWGLinearPositionListResult.h"

@implementation SWGLinearPositionListResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bustPrice": @"bust_price", @"cumRealisedPnl": @"cum_realised_pnl", @"entryPrice": @"entry_price", @"freeQty": @"free_qty", @"leverage": @"leverage", @"liqPrice": @"liq_price", @"occClosingFee": @"occ_closing_fee", @"positionMargin": @"position_margin", @"positionValue": @"position_value", @"realisedPnl": @"realised_pnl", @"side": @"side", @"size": @"size", @"symbol": @"symbol", @"userId": @"user_id", @"tpSlMode": @"tp_sl_mode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bustPrice", @"cumRealisedPnl", @"entryPrice", @"freeQty", @"leverage", @"liqPrice", @"occClosingFee", @"positionMargin", @"positionValue", @"realisedPnl", @"side", @"size", @"symbol", @"userId", @"tpSlMode"];
  return [optionalProperties containsObject:propertyName];
}

@end
