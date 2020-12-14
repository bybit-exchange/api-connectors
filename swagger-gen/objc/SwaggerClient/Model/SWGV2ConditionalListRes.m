#import "SWGV2ConditionalListRes.h"

@implementation SWGV2ConditionalListRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"stopOrderStatus": @"stop_order_status", @"symbol": @"symbol", @"side": @"side", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"stopOrderType": @"stop_order_type", @"triggerBy": @"trigger_by", @"basePrice": @"base_price", @"orderLinkId": @"order_link_id", @"stopPx": @"stop_px", @"stopOrderId": @"stop_order_id", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"stopOrderStatus", @"symbol", @"side", @"orderType", @"price", @"qty", @"timeInForce", @"stopOrderType", @"triggerBy", @"basePrice", @"orderLinkId", @"stopPx", @"stopOrderId", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
