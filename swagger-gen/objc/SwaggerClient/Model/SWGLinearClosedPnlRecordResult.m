#import "SWGLinearClosedPnlRecordResult.h"

@implementation SWGLinearClosedPnlRecordResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"avgEntryPrice": @"avg_entry_price", @"avgExitPrice": @"avg_exit_price", @"closedPnl": @"closed_pnl", @"closedSize": @"closed_size", @"createdAt": @"created_at", @"cumEntryValue": @"cum_entry_value", @"cumExitValue": @"cum_exit_value", @"execType": @"exec_type", @"fillCount": @"fill_count", @"_id": @"id", @"leverage": @"leverage", @"orderId": @"order_id", @"orderPrice": @"order_price", @"orderType": @"order_type", @"qty": @"qty", @"side": @"side", @"symbol": @"symbol", @"userId": @"user_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"avgEntryPrice", @"avgExitPrice", @"closedPnl", @"closedSize", @"createdAt", @"cumEntryValue", @"cumExitValue", @"execType", @"fillCount", @"_id", @"leverage", @"orderId", @"orderPrice", @"orderType", @"qty", @"side", @"symbol", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
