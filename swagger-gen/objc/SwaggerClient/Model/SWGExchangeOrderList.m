#import "SWGExchangeOrderList.h"

@implementation SWGExchangeOrderList

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"fromCoin": @"from_coin", @"toCoin": @"to_coin", @"fromAmount": @"from_amount", @"toAmount": @"to_amount", @"exchangeRate": @"exchange_rate", @"fromFee": @"from_fee", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fromCoin", @"toCoin", @"fromAmount", @"toAmount", @"exchangeRate", @"fromFee", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
