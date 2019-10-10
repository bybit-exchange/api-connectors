#import "SWGConditionalRes.h"

@implementation SWGConditionalRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"stopOrderId": @"stop_order_id", @"userId": @"user_id", @"stopOrderStatus": @"stop_order_status", @"symbol": @"symbol", @"side": @"side", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"stopOrderType": @"stop_order_type", @"basePrice": @"base_price", @"stopPx": @"stop_px", @"orderLinkId": @"order_link_id", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"stopOrderId", @"userId", @"stopOrderStatus", @"symbol", @"side", @"orderType", @"price", @"qty", @"timeInForce", @"stopOrderType", @"basePrice", @"stopPx", @"orderLinkId", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
