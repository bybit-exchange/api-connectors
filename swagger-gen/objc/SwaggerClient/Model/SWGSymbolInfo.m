#import "SWGSymbolInfo.h"

@implementation SWGSymbolInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"baseCurrency": @"base_currency", @"quoteCurrency": @"quote_currency", @"priceScale": @"price_scale", @"priceFilter": @"price_filter", @"lotSizeFilter": @"lot_size_filter" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"baseCurrency", @"quoteCurrency", @"priceScale", @"priceFilter", @"lotSizeFilter"];
  return [optionalProperties containsObject:propertyName];
}

@end
