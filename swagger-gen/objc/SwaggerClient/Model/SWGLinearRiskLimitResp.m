#import "SWGLinearRiskLimitResp.h"

@implementation SWGLinearRiskLimitResp

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"created_at", @"_id": @"id", @"isLowestRisk": @"is_lowest_risk", @"limit": @"limit", @"maintainMargin": @"maintain_margin", @"section": @"section", @"startingMargin": @"starting_margin", @"symbol": @"symbol", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdAt", @"_id", @"isLowestRisk", @"limit", @"maintainMargin", @"section", @"startingMargin", @"symbol", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
