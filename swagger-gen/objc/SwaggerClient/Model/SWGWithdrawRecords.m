#import "SWGWithdrawRecords.h"

@implementation SWGWithdrawRecords

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"user_id", @"coin": @"coin", @"status": @"status", @"amount": @"amount", @"fee": @"fee", @"address": @"address", @"txId": @"tx_id", @"submitedAt": @"submited_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"userId", @"coin", @"status", @"amount", @"fee", @"address", @"txId", @"submitedAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
