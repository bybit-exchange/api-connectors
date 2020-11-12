# swagger-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.swagger</groupId>
    <artifactId>swagger-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.swagger:swagger-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

* target/swagger-android-client-1.0.0.jar
* target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.swagger.client.api.APIkeyApi;

public class APIkeyApiExample {

    public static void main(String[] args) {
        APIkeyApi apiInstance = new APIkeyApi();
        try {
            Object result = apiInstance.aPIkeyInfo();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling APIkeyApi#aPIkeyInfo");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.bybit.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*APIkeyApi* | [**aPIkeyInfo**](docs/APIkeyApi.md#aPIkeyInfo) | **GET** /open-api/api-key | Get account api-key information.
*CommonApi* | [**commonAnnouncements**](docs/CommonApi.md#commonAnnouncements) | **GET** /v2/public/announcement | Get Bybit OpenAPI announcements in the last 30 days in reverse order.
*CommonApi* | [**commonGetLcp**](docs/CommonApi.md#commonGetLcp) | **GET** /v2/private/account/lcp | Query LCP info.
*CommonApi* | [**commonGetTime**](docs/CommonApi.md#commonGetTime) | **GET** /v2/public/time | Get bybit server time.
*ConditionalApi* | [**conditionalCancel**](docs/ConditionalApi.md#conditionalCancel) | **POST** /v2/private/stop-order/cancel | Cancel conditional order.
*ConditionalApi* | [**conditionalCancelAll**](docs/ConditionalApi.md#conditionalCancelAll) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
*ConditionalApi* | [**conditionalGetOrders**](docs/ConditionalApi.md#conditionalGetOrders) | **GET** /v2/private/stop-order/list | Get my conditional order list.
*ConditionalApi* | [**conditionalNew**](docs/ConditionalApi.md#conditionalNew) | **POST** /v2/private/stop-order/create | Place a new conditional order.
*ConditionalApi* | [**conditionalQuery**](docs/ConditionalApi.md#conditionalQuery) | **GET** /v2/private/stop-order | Query real-time stop order information.
*ConditionalApi* | [**conditionalReplace**](docs/ConditionalApi.md#conditionalReplace) | **POST** /v2/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 
*ExecutionApi* | [**executionGetTrades**](docs/ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get user’s trade records.
*ExecutionApi* | [**positionsClosePnlRecords**](docs/ExecutionApi.md#positionsClosePnlRecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
*FundingApi* | [**fundingMyLastFee**](docs/FundingApi.md#fundingMyLastFee) | **GET** /open-api/funding/prev-funding | Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval&#39;s fund fee settlement is based on the previous interval&#39;s fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.
*FundingApi* | [**fundingPredicted**](docs/FundingApi.md#fundingPredicted) | **GET** /open-api/funding/predicted-funding | Get predicted funding rate and funding fee.
*FundingApi* | [**fundingPrevRate**](docs/FundingApi.md#fundingPrevRate) | **GET** /open-api/funding/prev-funding-rate | Get predicted funding rate and funding fee.
*KlineApi* | [**klineGet**](docs/KlineApi.md#klineGet) | **GET** /v2/public/kline/list | Query historical kline.
*KlineApi* | [**klineMarkPrice**](docs/KlineApi.md#klineMarkPrice) | **GET** /v2/public/mark-price-kline | Query mark price kline.
*LinearConditionalApi* | [**linearConditionalCancel**](docs/LinearConditionalApi.md#linearConditionalCancel) | **POST** /private/linear/stop-order/cancel | Cancel Active Order
*LinearConditionalApi* | [**linearConditionalCancelAll**](docs/LinearConditionalApi.md#linearConditionalCancelAll) | **POST** /private/linear/stop-order/cancel-all | Cancel all stop orders.
*LinearConditionalApi* | [**linearConditionalGetOrders**](docs/LinearConditionalApi.md#linearConditionalGetOrders) | **GET** /private/linear/stop-order/list | Get linear Stop Orders
*LinearConditionalApi* | [**linearConditionalNew**](docs/LinearConditionalApi.md#linearConditionalNew) | **POST** /private/linear/stop-order/create | Create linear stop Order
*LinearConditionalApi* | [**linearConditionalQuery**](docs/LinearConditionalApi.md#linearConditionalQuery) | **GET** /private/linear/stop-order/search | Get Stop Orders(real-time)
*LinearConditionalApi* | [**linearConditionalReplace**](docs/LinearConditionalApi.md#linearConditionalReplace) | **POST** /private/linear/stop-order/replace | Replace conditional order
*LinearExecutionApi* | [**linearExecutionGetTrades**](docs/LinearExecutionApi.md#linearExecutionGetTrades) | **GET** /private/linear/trade/execution/list | Get user&#39;s trading records.
*LinearFundingApi* | [**linearFundingMyLastFee**](docs/LinearFundingApi.md#linearFundingMyLastFee) | **GET** /private/linear/funding/prev-funding | Get prev funding
*LinearFundingApi* | [**linearFundingPredicted**](docs/LinearFundingApi.md#linearFundingPredicted) | **GET** /private/linear/funding/predicted-funding | Get predicted funding rate and funding fee.
*LinearFundingApi* | [**linearFundingPrevRate**](docs/LinearFundingApi.md#linearFundingPrevRate) | **GET** /public/linear/funding/prev-funding-rate | Get prev funding
*LinearKlineApi* | [**linearKlineGet**](docs/LinearKlineApi.md#linearKlineGet) | **GET** /public/linear/kline | Get kline
*LinearKlineApi* | [**linearKlineMarkPrice**](docs/LinearKlineApi.md#linearKlineMarkPrice) | **GET** /public/linear/mark-price-kline | Get kline
*LinearMarketApi* | [**linearMarketTrading**](docs/LinearMarketApi.md#linearMarketTrading) | **GET** /public/linear/recent-trading-records | Get recent trades
*LinearOrderApi* | [**linearOrderCancel**](docs/LinearOrderApi.md#linearOrderCancel) | **POST** /private/linear/order/cancel | Cancel Active Order
*LinearOrderApi* | [**linearOrderCancelAll**](docs/LinearOrderApi.md#linearOrderCancelAll) | **POST** /private/linear/order/cancel-all | Cancel all active orders.
*LinearOrderApi* | [**linearOrderGetOrders**](docs/LinearOrderApi.md#linearOrderGetOrders) | **GET** /private/linear/order/list | Get linear Active Orders
*LinearOrderApi* | [**linearOrderNew**](docs/LinearOrderApi.md#linearOrderNew) | **POST** /private/linear/order/create | Create Active Order
*LinearOrderApi* | [**linearOrderQuery**](docs/LinearOrderApi.md#linearOrderQuery) | **GET** /private/linear/order/search | Get Active Orders(real-time)
*LinearOrderApi* | [**linearOrderReplace**](docs/LinearOrderApi.md#linearOrderReplace) | **POST** /private/linear/order/replace | Replace Active Order
*LinearPositionsApi* | [**linearPositionsChangeMargin**](docs/LinearPositionsApi.md#linearPositionsChangeMargin) | **POST** /private/linear/position/add-margin | Add/Reduce Margin
*LinearPositionsApi* | [**linearPositionsClosePnlRecords**](docs/LinearPositionsApi.md#linearPositionsClosePnlRecords) | **GET** /private/linear/trade/closed-pnl/list | Get user&#39;s closed profit and loss records.
*LinearPositionsApi* | [**linearPositionsMyPosition**](docs/LinearPositionsApi.md#linearPositionsMyPosition) | **GET** /private/linear/position/list | Get my position list.
*LinearPositionsApi* | [**linearPositionsSaveLeverage**](docs/LinearPositionsApi.md#linearPositionsSaveLeverage) | **POST** /private/linear/position/set-leverage | Set leverage
*LinearPositionsApi* | [**linearPositionsSetAutoAddMargin**](docs/LinearPositionsApi.md#linearPositionsSetAutoAddMargin) | **POST** /private/linear/position/set-auto-add-margin | Set auto add margin
*LinearPositionsApi* | [**linearPositionsSwitchIsolated**](docs/LinearPositionsApi.md#linearPositionsSwitchIsolated) | **POST** /private/linear/position/switch-isolated | Switch isolated
*LinearPositionsApi* | [**linearPositionsSwitchMode**](docs/LinearPositionsApi.md#linearPositionsSwitchMode) | **POST** /private/linear/tpsl/switch-mode | Switch Mode
*LinearPositionsApi* | [**linearPositionsTradingStop**](docs/LinearPositionsApi.md#linearPositionsTradingStop) | **POST** /private/linear/position/trading-stop | Set tradingStop
*LinearWalletApi* | [**linearWalletGetRiskLimit**](docs/LinearWalletApi.md#linearWalletGetRiskLimit) | **GET** /public/linear/risk-limit | Get risk limit.
*MarketApi* | [**marketAccountRatio**](docs/MarketApi.md#marketAccountRatio) | **GET** /v2/public/account-ratio | Query Account Long Short Ratio
*MarketApi* | [**marketBigDeal**](docs/MarketApi.md#marketBigDeal) | **GET** /v2/public/big-deal | Query Big Deal
*MarketApi* | [**marketLiqRecords**](docs/MarketApi.md#marketLiqRecords) | **GET** /v2/public/liq-records | Query liq records.
*MarketApi* | [**marketOpenInterest**](docs/MarketApi.md#marketOpenInterest) | **GET** /v2/public/open-interest | Query Open Interest
*MarketApi* | [**marketOrderbook**](docs/MarketApi.md#marketOrderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
*MarketApi* | [**marketSymbolInfo**](docs/MarketApi.md#marketSymbolInfo) | **GET** /v2/public/tickers | Get the latest information for symbol.
*MarketApi* | [**marketTradingRecords**](docs/MarketApi.md#marketTradingRecords) | **GET** /v2/public/trading-records | Get recent trades
*OrderApi* | [**orderCancel**](docs/OrderApi.md#orderCancel) | **POST** /v2/private/order/cancel | Get my active order list.
*OrderApi* | [**orderCancelAll**](docs/OrderApi.md#orderCancelAll) | **POST** /v2/private/order/cancelAll | Get my active order list.
*OrderApi* | [**orderGetOrders**](docs/OrderApi.md#orderGetOrders) | **GET** /v2/private/order/list | Get my active order list.
*OrderApi* | [**orderNew**](docs/OrderApi.md#orderNew) | **POST** /v2/private/order/create | Place active order
*OrderApi* | [**orderQuery**](docs/OrderApi.md#orderQuery) | **GET** /v2/private/order | Get my active order list.
*OrderApi* | [**orderReplace**](docs/OrderApi.md#orderReplace) | **POST** /v2/private/order/replace | Replace active order. Only incomplete orders can be modified. 
*PositionsApi* | [**positionsChangeMargin**](docs/PositionsApi.md#positionsChangeMargin) | **POST** /position/change-position-margin | Update margin.
*PositionsApi* | [**positionsClosePnlRecords**](docs/PositionsApi.md#positionsClosePnlRecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records
*PositionsApi* | [**positionsMyPosition**](docs/PositionsApi.md#positionsMyPosition) | **GET** /v2/private/position/list | Get my position list.
*PositionsApi* | [**positionsSaveLeverage**](docs/PositionsApi.md#positionsSaveLeverage) | **POST** /user/leverage/save | Change user leverage.
*PositionsApi* | [**positionsTradingStop**](docs/PositionsApi.md#positionsTradingStop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.
*SymbolApi* | [**symbolGet**](docs/SymbolApi.md#symbolGet) | **GET** /v2/public/symbols | Query Symbols.
*WalletApi* | [**walletExchangeOrder**](docs/WalletApi.md#walletExchangeOrder) | **GET** /v2/private/exchange-order/list | Asset Exchange Records
*WalletApi* | [**walletGetBalance**](docs/WalletApi.md#walletGetBalance) | **GET** /v2/private/wallet/balance | get wallet balance info
*WalletApi* | [**walletGetRecords**](docs/WalletApi.md#walletGetRecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records
*WalletApi* | [**walletGetRiskLimit**](docs/WalletApi.md#walletGetRiskLimit) | **GET** /open-api/wallet/risk-limit/list | Get risk limit.
*WalletApi* | [**walletSetRiskLimit**](docs/WalletApi.md#walletSetRiskLimit) | **POST** /open-api/wallet/risk-limit | Set risk limit
*WalletApi* | [**walletWithdraw**](docs/WalletApi.md#walletWithdraw) | **GET** /open-api/wallet/withdraw/list | Get wallet fund records


## Documentation for Models

 - [APIKeyBase](docs/APIKeyBase.md)
 - [APIKeyInfo](docs/APIKeyInfo.md)
 - [AccountRatio](docs/AccountRatio.md)
 - [AccountRatioInfo](docs/AccountRatioInfo.md)
 - [Announcement](docs/Announcement.md)
 - [AnnouncementInfo](docs/AnnouncementInfo.md)
 - [BigDeal](docs/BigDeal.md)
 - [BigDealInfo](docs/BigDealInfo.md)
 - [ClosedPnlBase](docs/ClosedPnlBase.md)
 - [ClosedPnlInfo](docs/ClosedPnlInfo.md)
 - [ConditionalCancelAllBase](docs/ConditionalCancelAllBase.md)
 - [ConditionalCancelAllRes](docs/ConditionalCancelAllRes.md)
 - [ConditionalOrdersRes](docs/ConditionalOrdersRes.md)
 - [ConditionalOrdersResBase](docs/ConditionalOrdersResBase.md)
 - [ConditionalRes](docs/ConditionalRes.md)
 - [ExchangeOrderList](docs/ExchangeOrderList.md)
 - [ExchangeOrderListBase](docs/ExchangeOrderListBase.md)
 - [ExtFields](docs/ExtFields.md)
 - [FundRecordBase](docs/FundRecordBase.md)
 - [FundingFeeBase](docs/FundingFeeBase.md)
 - [FundingFeeRes](docs/FundingFeeRes.md)
 - [FundingPredicted](docs/FundingPredicted.md)
 - [FundingPredictedBase](docs/FundingPredictedBase.md)
 - [FundingRate](docs/FundingRate.md)
 - [FundingRateBase](docs/FundingRateBase.md)
 - [FundingRecords](docs/FundingRecords.md)
 - [GetRiskLimitRes](docs/GetRiskLimitRes.md)
 - [KlineBase](docs/KlineBase.md)
 - [KlineRes](docs/KlineRes.md)
 - [LCPInfo](docs/LCPInfo.md)
 - [LCPInfoBase](docs/LCPInfoBase.md)
 - [Leverage](docs/Leverage.md)
 - [LeverageInfo](docs/LeverageInfo.md)
 - [LeverageResult](docs/LeverageResult.md)
 - [LinearCancelOrderResult](docs/LinearCancelOrderResult.md)
 - [LinearCancelOrderResultBase](docs/LinearCancelOrderResultBase.md)
 - [LinearCancelStopOrderResult](docs/LinearCancelStopOrderResult.md)
 - [LinearCancelStopOrderResultBase](docs/LinearCancelStopOrderResultBase.md)
 - [LinearClosePnlRecordsResponse](docs/LinearClosePnlRecordsResponse.md)
 - [LinearClosedPnlRecordResult](docs/LinearClosedPnlRecordResult.md)
 - [LinearCreateOrderResult](docs/LinearCreateOrderResult.md)
 - [LinearCreateOrderResultBase](docs/LinearCreateOrderResultBase.md)
 - [LinearCreateStopOrderResult](docs/LinearCreateStopOrderResult.md)
 - [LinearCreateStopOrderResultBase](docs/LinearCreateStopOrderResultBase.md)
 - [LinearFundingPredicted](docs/LinearFundingPredicted.md)
 - [LinearFundingPredictedBase](docs/LinearFundingPredictedBase.md)
 - [LinearKlineResp](docs/LinearKlineResp.md)
 - [LinearKlineRespBase](docs/LinearKlineRespBase.md)
 - [LinearListOrderResult](docs/LinearListOrderResult.md)
 - [LinearListStopOrderResult](docs/LinearListStopOrderResult.md)
 - [LinearOrderCancelAllBase](docs/LinearOrderCancelAllBase.md)
 - [LinearOrderRecordsResponse](docs/LinearOrderRecordsResponse.md)
 - [LinearOrderRecordsResponseBase](docs/LinearOrderRecordsResponseBase.md)
 - [LinearOrderReplace](docs/LinearOrderReplace.md)
 - [LinearPositionListResult](docs/LinearPositionListResult.md)
 - [LinearPositionListResultBase](docs/LinearPositionListResultBase.md)
 - [LinearPrevFundingRateResp](docs/LinearPrevFundingRateResp.md)
 - [LinearPrevFundingRateRespBase](docs/LinearPrevFundingRateRespBase.md)
 - [LinearPrevFundingResp](docs/LinearPrevFundingResp.md)
 - [LinearPrevFundingRespBase](docs/LinearPrevFundingRespBase.md)
 - [LinearRecentTradingRecordResp](docs/LinearRecentTradingRecordResp.md)
 - [LinearRecentTradingRecordRespBase](docs/LinearRecentTradingRecordRespBase.md)
 - [LinearRiskLimitResp](docs/LinearRiskLimitResp.md)
 - [LinearRiskLimitRespBase](docs/LinearRiskLimitRespBase.md)
 - [LinearSearchOrderResult](docs/LinearSearchOrderResult.md)
 - [LinearSearchOrderResultBase](docs/LinearSearchOrderResultBase.md)
 - [LinearSearchStopOrderResult](docs/LinearSearchStopOrderResult.md)
 - [LinearSearchStopOrderResultBase](docs/LinearSearchStopOrderResultBase.md)
 - [LinearSetLeverageResult](docs/LinearSetLeverageResult.md)
 - [LinearSetMarginResult](docs/LinearSetMarginResult.md)
 - [LinearSetMarginResultBase](docs/LinearSetMarginResultBase.md)
 - [LinearSetTradingStopResult](docs/LinearSetTradingStopResult.md)
 - [LinearStopOrderCancelAllBase](docs/LinearStopOrderCancelAllBase.md)
 - [LinearStopOrderRecordsResponse](docs/LinearStopOrderRecordsResponse.md)
 - [LinearStopOrderRecordsResponseBase](docs/LinearStopOrderRecordsResponseBase.md)
 - [LinearStopOrderReplace](docs/LinearStopOrderReplace.md)
 - [LinearSwitchIsolatedResult](docs/LinearSwitchIsolatedResult.md)
 - [LinearSwitchModeResult](docs/LinearSwitchModeResult.md)
 - [LinearTradeRecordItem](docs/LinearTradeRecordItem.md)
 - [LinearTradeRecordsResponse](docs/LinearTradeRecordsResponse.md)
 - [LiqRecords](docs/LiqRecords.md)
 - [LiqRecordsInfo](docs/LiqRecordsInfo.md)
 - [LotSizeFilter](docs/LotSizeFilter.md)
 - [MarkPriceKlineBase](docs/MarkPriceKlineBase.md)
 - [MarkPriceKlineInfo](docs/MarkPriceKlineInfo.md)
 - [OderBookRes](docs/OderBookRes.md)
 - [OpenInterest](docs/OpenInterest.md)
 - [OpenInterestInfo](docs/OpenInterestInfo.md)
 - [OrderBookBase](docs/OrderBookBase.md)
 - [OrderCancelAllBase](docs/OrderCancelAllBase.md)
 - [OrderCancelAllRes](docs/OrderCancelAllRes.md)
 - [OrderCancelBase](docs/OrderCancelBase.md)
 - [OrderIdRes](docs/OrderIdRes.md)
 - [OrderRes](docs/OrderRes.md)
 - [OrderResBase](docs/OrderResBase.md)
 - [Position](docs/Position.md)
 - [PositionInfo](docs/PositionInfo.md)
 - [PriceFilter](docs/PriceFilter.md)
 - [QueryOrderBase](docs/QueryOrderBase.md)
 - [QueryOrderRes](docs/QueryOrderRes.md)
 - [ReplaceConditionalBase](docs/ReplaceConditionalBase.md)
 - [ReplaceOrderBase](docs/ReplaceOrderBase.md)
 - [RiskIDRes](docs/RiskIDRes.md)
 - [RiskLimitBase](docs/RiskLimitBase.md)
 - [RiskLimitRes](docs/RiskLimitRes.md)
 - [ServerTime](docs/ServerTime.md)
 - [SetRiskLimitBase](docs/SetRiskLimitBase.md)
 - [StopOrderOrdersResBase](docs/StopOrderOrdersResBase.md)
 - [SymbolInfo](docs/SymbolInfo.md)
 - [SymbolInfoBase](docs/SymbolInfoBase.md)
 - [SymbolTickInfo](docs/SymbolTickInfo.md)
 - [Symbols](docs/Symbols.md)
 - [TradeRecords](docs/TradeRecords.md)
 - [TradeRecordsBase](docs/TradeRecordsBase.md)
 - [TradeRecordsInfo](docs/TradeRecordsInfo.md)
 - [TradingRecords](docs/TradingRecords.md)
 - [TradingRecordsInfo](docs/TradingRecordsInfo.md)
 - [TradingStopBase](docs/TradingStopBase.md)
 - [TradingStopRes](docs/TradingStopRes.md)
 - [V2CancelOrderBase](docs/V2CancelOrderBase.md)
 - [V2ConditionalBase](docs/V2ConditionalBase.md)
 - [V2ConditionalListRes](docs/V2ConditionalListRes.md)
 - [V2ConditionalRes](docs/V2ConditionalRes.md)
 - [V2OrderListBase](docs/V2OrderListBase.md)
 - [V2OrderListData](docs/V2OrderListData.md)
 - [V2OrderRes](docs/V2OrderRes.md)
 - [WalletBalance](docs/WalletBalance.md)
 - [WalletBalanceBase](docs/WalletBalanceBase.md)
 - [WithdrawRecords](docs/WithdrawRecords.md)
 - [WithdrawResBase](docs/WithdrawResBase.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string

### apiSignature

- **Type**: API key
- **API key parameter name**: sign
- **Location**: URL query string

### timestamp

- **Type**: API key
- **API key parameter name**: timestamp
- **Location**: URL query string


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@bybit.com

