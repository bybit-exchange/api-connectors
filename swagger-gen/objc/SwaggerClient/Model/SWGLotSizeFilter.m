#import "SWGLotSizeFilter.h"

@implementation SWGLotSizeFilter

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"minTradingQty": @"min_trading_qty", @"maxTradingQty": @"max_trading_qty", @"qtyStep": @"qty_step" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"minTradingQty", @"maxTradingQty", @"qtyStep"];
  return [optionalProperties containsObject:propertyName];
}

@end
