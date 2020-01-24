#import "SWGRiskIDRes.h"

@implementation SWGRiskIDRes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"coin": @"coin", @"limit": @"limit", @"maintainMargin": @"maintain_margin", @"startingMargin": @"starting_margin", @"section": @"section", @"isLowestRisk": @"is_lowest_risk", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"coin", @"limit", @"maintainMargin", @"startingMargin", @"section", @"isLowestRisk", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
