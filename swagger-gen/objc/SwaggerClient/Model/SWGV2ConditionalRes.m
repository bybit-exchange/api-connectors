#import "SWGV2ConditionalRes.h"

@implementation SWGV2ConditionalRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"symbol": @"symbol", @"side": @"side", @"orderType": @"order_type", @"price": @"price", @"qty": @"qty", @"timeInForce": @"time_in_force", @"triggerBy": @"trigger_by", @"basePrice": @"base_price", @"remark": @"remark", @"rejectReason": @"reject_reason", @"stopPx": @"stop_px", @"stopOrderId": @"stop_order_id", @"orderLinkId": @"order_link_id", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"symbol", @"side", @"orderType", @"price", @"qty", @"timeInForce", @"triggerBy", @"basePrice", @"remark", @"rejectReason", @"stopPx", @"stopOrderId", @"orderLinkId", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
