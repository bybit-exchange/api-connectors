#import "SWGSymbolTickInfo.h"

@implementation SWGSymbolTickInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"symbol": @"symbol", @"bidPrice": @"bid_price", @"askPrice": @"ask_price", @"lastPrice": @"last_price", @"lastTickDirection": @"last_tick_direction", @"prevPrice24h": @"prev_price_24h", @"price24hPcnt": @"price_24h_pcnt", @"highPrice24h": @"high_price_24h", @"lowPrice24h": @"low_price_24h", @"prevPrice1h": @"prev_price_1h", @"price1hPcnt": @"price_1h_pcnt", @"markPrice": @"mark_price", @"indexPrice": @"index_price", @"openInterest": @"open_interest", @"openValue": @"open_value", @"totalTurnover": @"total_turnover", @"turnover24h": @"turnover_24h", @"totalVolume": @"total_volume", @"volume24h": @"volume_24h", @"fundingRate": @"funding_rate", @"predictedFundingRate": @"predicted_funding_rate", @"nextFundingTime": @"next_funding_time", @"countdownHour": @"countdown_hour" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"symbol", @"bidPrice", @"askPrice", @"lastPrice", @"lastTickDirection", @"prevPrice24h", @"price24hPcnt", @"highPrice24h", @"lowPrice24h", @"prevPrice1h", @"price1hPcnt", @"markPrice", @"indexPrice", @"openInterest", @"openValue", @"totalTurnover", @"turnover24h", @"totalVolume", @"volume24h", @"fundingRate", @"predictedFundingRate", @"nextFundingTime", @"countdownHour"];
  return [optionalProperties containsObject:propertyName];
}

@end
