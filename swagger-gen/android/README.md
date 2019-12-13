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

All URIs are relative to *https://api-testnet.bybit.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*APIkeyApi* | [**aPIkeyInfo**](docs/APIkeyApi.md#aPIkeyInfo) | **GET** /open-api/api-key | Get account api-key information.
*CommonApi* | [**commonGet**](docs/CommonApi.md#commonGet) | **GET** /v2/public/time | Get bybit server time.
*ConditionalApi* | [**conditionalCancel**](docs/ConditionalApi.md#conditionalCancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
*ConditionalApi* | [**conditionalCancelAll**](docs/ConditionalApi.md#conditionalCancelAll) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
*ConditionalApi* | [**conditionalGetOrders**](docs/ConditionalApi.md#conditionalGetOrders) | **GET** /open-api/stop-order/list | Get my conditional order list.
*ConditionalApi* | [**conditionalNew**](docs/ConditionalApi.md#conditionalNew) | **POST** /open-api/stop-order/create | Place a new conditional order.
*ConditionalApi* | [**conditionalReplace**](docs/ConditionalApi.md#conditionalReplace) | **POST** /open-api/stop-order/replace | Replace conditional order. Only incomplete orders can be modified. 
*ExecutionApi* | [**executionGetTrades**](docs/ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get user’s trade records.
*FundingApi* | [**fundingGetRate**](docs/FundingApi.md#fundingGetRate) | **GET** /open-api/funding/prev-funding | Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval&#39;s fund fee settlement is based on the previous interval&#39;s fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day.
*FundingApi* | [**fundingPredicted**](docs/FundingApi.md#fundingPredicted) | **GET** /open-api/funding/predicted-funding | Get predicted funding rate and funding fee.
*FundingApi* | [**fundingPredictedRate**](docs/FundingApi.md#fundingPredictedRate) | **GET** /open-api/funding/prev-funding-rate | Get predicted funding rate and funding fee.
*KlineApi* | [**klineGet**](docs/KlineApi.md#klineGet) | **GET** /v2/public/kline/list | Query historical kline.
*MarketApi* | [**marketOrderbook**](docs/MarketApi.md#marketOrderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
*MarketApi* | [**marketSymbolInfo**](docs/MarketApi.md#marketSymbolInfo) | **GET** /v2/public/tickers | Get the latest information for symbol.
*OrderApi* | [**orderCancel**](docs/OrderApi.md#orderCancel) | **POST** /open-api/order/cancel | Get my active order list.
*OrderApi* | [**orderCancelAll**](docs/OrderApi.md#orderCancelAll) | **POST** /v2/private/order/cancelAll | Get my active order list.
*OrderApi* | [**orderCancelV2**](docs/OrderApi.md#orderCancelV2) | **POST** /v2/private/order/cancel | Get my active order list.
*OrderApi* | [**orderGetOrders**](docs/OrderApi.md#orderGetOrders) | **GET** /open-api/order/list | Get my active order list.
*OrderApi* | [**orderNew**](docs/OrderApi.md#orderNew) | **POST** /open-api/order/create | Place active order
*OrderApi* | [**orderNewV2**](docs/OrderApi.md#orderNewV2) | **POST** /v2/private/order/create | Place active order
*OrderApi* | [**orderQuery**](docs/OrderApi.md#orderQuery) | **GET** /v2/private/order | Get my active order list.
*OrderApi* | [**orderReplace**](docs/OrderApi.md#orderReplace) | **POST** /open-api/order/replace | Replace active order. Only incomplete orders can be modified. 
*PositionsApi* | [**positionsChangeMargin**](docs/PositionsApi.md#positionsChangeMargin) | **POST** /position/change-position-margin | Update margin.
*PositionsApi* | [**positionsMyPosition**](docs/PositionsApi.md#positionsMyPosition) | **GET** /position/list | Get my position list.
*PositionsApi* | [**positionsSaveLeverage**](docs/PositionsApi.md#positionsSaveLeverage) | **POST** /user/leverage/save | Change user leverage.
*PositionsApi* | [**positionsTradingStop**](docs/PositionsApi.md#positionsTradingStop) | **POST** /open-api/position/trading-stop | Set Trading-Stop Condition.
*PositionsApi* | [**positionsUserLeverage**](docs/PositionsApi.md#positionsUserLeverage) | **GET** /user/leverage | Get user leverage setting.
*SymbolApi* | [**symbolGet**](docs/SymbolApi.md#symbolGet) | **GET** /v2/public/symbols | Query Symbols.
*WalletApi* | [**walletGetRecords**](docs/WalletApi.md#walletGetRecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records
*WalletApi* | [**walletWithdraw**](docs/WalletApi.md#walletWithdraw) | **GET** /open-api/wallet/withdraw/list | Get wallet fund records


## Documentation for Models

 - [APIKeyBase](docs/APIKeyBase.md)
 - [APIKeyInfo](docs/APIKeyInfo.md)
 - [ConditionalBase](docs/ConditionalBase.md)
 - [ConditionalCancelAllBase](docs/ConditionalCancelAllBase.md)
 - [ConditionalCancelAllRes](docs/ConditionalCancelAllRes.md)
 - [ConditionalOrdersRes](docs/ConditionalOrdersRes.md)
 - [ConditionalOrdersResBase](docs/ConditionalOrdersResBase.md)
 - [ConditionalRes](docs/ConditionalRes.md)
 - [ExtFields](docs/ExtFields.md)
 - [FundRecordBase](docs/FundRecordBase.md)
 - [FundingFeeBase](docs/FundingFeeBase.md)
 - [FundingFeeRes](docs/FundingFeeRes.md)
 - [FundingPredicted](docs/FundingPredicted.md)
 - [FundingPredictedBase](docs/FundingPredictedBase.md)
 - [FundingRate](docs/FundingRate.md)
 - [FundingRateBase](docs/FundingRateBase.md)
 - [FundingRecords](docs/FundingRecords.md)
 - [KlineBase](docs/KlineBase.md)
 - [KlineRes](docs/KlineRes.md)
 - [Leverage](docs/Leverage.md)
 - [LeverageInfo](docs/LeverageInfo.md)
 - [LeverageResult](docs/LeverageResult.md)
 - [LotSizeFilter](docs/LotSizeFilter.md)
 - [OderBookRes](docs/OderBookRes.md)
 - [OrderBookBase](docs/OrderBookBase.md)
 - [OrderCancelAllBase](docs/OrderCancelAllBase.md)
 - [OrderCancelAllRes](docs/OrderCancelAllRes.md)
 - [OrderCancelBase](docs/OrderCancelBase.md)
 - [OrderListBase](docs/OrderListBase.md)
 - [OrderListData](docs/OrderListData.md)
 - [OrderRes](docs/OrderRes.md)
 - [OrderResBase](docs/OrderResBase.md)
 - [Position](docs/Position.md)
 - [PositionInfo](docs/PositionInfo.md)
 - [PriceFilter](docs/PriceFilter.md)
 - [QueryOrderBase](docs/QueryOrderBase.md)
 - [QueryOrderRes](docs/QueryOrderRes.md)
 - [ReplaceConditionalBase](docs/ReplaceConditionalBase.md)
 - [ReplaceOrderBase](docs/ReplaceOrderBase.md)
 - [ServerTime](docs/ServerTime.md)
 - [SymbolInfo](docs/SymbolInfo.md)
 - [SymbolInfoBase](docs/SymbolInfoBase.md)
 - [SymbolTickInfo](docs/SymbolTickInfo.md)
 - [Symbols](docs/Symbols.md)
 - [TradeRecords](docs/TradeRecords.md)
 - [TradeRecordsBase](docs/TradeRecordsBase.md)
 - [TradeRecordsInfo](docs/TradeRecordsInfo.md)
 - [TradingStopBase](docs/TradingStopBase.md)
 - [TradingStopRes](docs/TradingStopRes.md)
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

