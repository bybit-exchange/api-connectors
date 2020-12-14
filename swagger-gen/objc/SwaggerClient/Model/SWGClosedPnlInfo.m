#import "SWGClosedPnlInfo.h"

@implementation SWGClosedPnlInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"user_id", @"symbol": @"symbol", @"orderId": @"order_id", @"side": @"side", @"qty": @"qty", @"orderPrice": @"order_price", @"orderType": @"order_type", @"execType": @"exec_type", @"closedSize": @"closed_size", @"cumEntryValue": @"cum_entry_value", @"avgEntryPrice": @"avg_entry_price", @"cumExitValue": @"cum_exit_value", @"avgExitPrice": @"avg_exit_price", @"closedPnl": @"closed_pnl", @"fillCount": @"fill_count", @"leverage": @"leverage", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"userId", @"symbol", @"orderId", @"side", @"qty", @"orderPrice", @"orderType", @"execType", @"closedSize", @"cumEntryValue", @"avgEntryPrice", @"cumExitValue", @"avgExitPrice", @"closedPnl", @"fillCount", @"leverage", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
