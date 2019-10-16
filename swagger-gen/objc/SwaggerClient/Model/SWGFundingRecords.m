#import "SWGFundingRecords.h"

@implementation SWGFundingRecords

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"user_id", @"coin": @"coin", @"walletId": @"wallet_id", @"type": @"type", @"amount": @"amount", @"txId": @"tx_id", @"address": @"address", @"walletBalance": @"wallet_balance", @"execTime": @"exec_time", @"crossSeq": @"cross_seq" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"userId", @"coin", @"walletId", @"type", @"amount", @"txId", @"address", @"walletBalance", @"execTime", @"crossSeq"];
  return [optionalProperties containsObject:propertyName];
}

@end
