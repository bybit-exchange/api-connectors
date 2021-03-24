import bybit
client = bybit.bybit(test=False, api_key="", api_secret="")

# # # # Inverse Perpetual
# # # API Data Endpoints
# Server Time
# print(client.Common.Common_getTime().result()[0])
# Announcements
# print(client.Common.Common_announcements().result()[0])


# # # Market Data Endpoints
# Orderbook
# print(client.Market.Market_orderbook(symbol="BTCUSD").result())
# Query Kline
# print(client.Kline.Kline_get(symbol="BTCUSD", interval="1", **{'from':1615067084}).result())
# Latest information for Symbol(tickers)
# print(client.Market.Market_symbolInfo().result())
# Public Trading Records
# print(client.Market.Market_tradingRecords(symbol="BTCUSD").result())
# Query Symbol
# print(client.Symbol.Symbol_get().result()[0]["result"][0])
# Liquidated Orders
# print(client.Market.Market_liqRecords(symbol="BTCUSD").result())
# Query Mark Price Kline
# print(client.Kline.Kline_markPrice(symbol="BTCUSD", interval="1", **{'from':1615067084}).result())
# Query Index Price Kline
# print(client.Kline.Kline_indexPrice(symbol="BTCUSD", interval="1", **{'from':1615067084}).result())
# Query Premium Price Kline
# print(client.Kline.Kline_premiumIndexPrice(symbol="BTCUSD", interval="1", **{'from':1615067084}).result())

# # Advanced Data
# Get market's open interest
# print(client.Market.Market_openInterest(symbol="BTCUSD", limit=2, period="5min").result())
# Get market's long-short ratio
# print(client.Market.Market_accountRatio(symbol="BTCUSD", limit=2, period="5min").result())
# Get latest big deals
# print(client.Market.Market_bigDeal(symbol="BTCUSD", limit=2).result())


# # # Account Data Endpoints

# # Active Orders
# Place Active Order
# print(client.Order.Order_new(side="Buy",symbol="BTCUSD",order_type="Limit",qty=1,price=8300,time_in_force="GoodTillCancel").result())
# Get Active Order
# print(client.Order.Order_getOrders(symbol="BTCUSD").result())
# Cancel Active Order
# print(client.Order.Order_cancel(symbol="BTCUSD", order_id="a0bc44c0-6ddb-4f41-913d-fa9d5299d7c2").result())
# Cancel All Active Orders
# print(client.Order.Order_cancelAll(symbol="BTCUSD").result())
# Replace Active Order
# print(client.Order.Order_replace(symbol="BTCUSD", order_id="e838ebcd-77be-43e7-ae4a-9bc380bad6ec", p_r_qty="3").result())
# Query Active Orders(real-time)
# print(client.Order.Order_query(symbol="BTCUSD", order_id="e838ebcd-77be-43e7-ae4a-9bc380bad6ec").result())

# # Conditional Orders
# Place Conditional Order
# print(client.Conditional.Conditional_new(order_type="Limit",side="Buy",symbol="BTCUSD",qty="1",price="8100",base_price="8300",stop_px="8150",time_in_force="GoodTillCancel", order_link_id="cus_order_id_1").result())
# Get Conditional Order
# print(client.Conditional.Conditional_getOrders(symbol="BTCUSD", stop_order_status="Untriggered").result())
# Cancel Conditional Order
# print(client.Conditional.Conditional_cancel(symbol="BTCUSD", order_link_id="cus_order_id_1").result())
# Cancel All Conditions Orders
# print(client.Conditional.Conditional_cancelAll(symbol="BTCUSD").result())
# Replace Conditional Order
# print(client.Conditional.Conditional_replace(symbol="BTCUSD", stop_order_id="c11e99ce-c52a-46b4-9072-7a7b034ef60a", p_r_qty="3").result())
# Query Conditional Order(real-time)
# print(client.Conditional.Conditional_query(symbol="BTCUSD", stop_order_id="c11e99ce-c52a-46b4-9072-7a7b034ef60a").result())

# # Position
# My Position
# print(client.Positions.Positions_myPosition(symbol="BTCUSD").result())
# Change Margin
# print(client.Positions.Positions_changeMargin(symbol="BTCUSD", margin="99").result())
# Set Trading-Stop
# print(client.Positions.Positions_tradingStop(symbol="BTCUSD",take_profit="0", stop_loss="9110", trailing_stop="0", new_trailing_active="0").result())
# Set Leverage
# print(client.Positions.Positions_saveLeverage(symbol="BTCUSD", leverage="14").result())
# User Trade Records
# print(client.Execution.Execution_getTrades(symbol="BTCUSD").result())
# Closed Profit and Loss
# print(client.Positions.Positions_closePnlRecords(symbol="BTCUSD").result())

# # Risk Limit
# Get Risk Limit
# print(client.Wallet.Wallet_getRiskLimit().result())
# Set Risk Limit
# print(client.Wallet.Wallet_setRiskLimit(symbol="BTCUSD", risk_id=1).result())

# # Funding
# Get the Last Funding Rate
# print(client.Funding.Funding_myLastFee(symbol="BTCUSD").result())
# My Last Funding Fee
# print(client.Funding.Funding_prevRate(symbol="BTCUSD").result())
# Predicted Funding Rate and My Funding Fee
# print(client.Funding.Funding_predicted(symbol="BTCUSD").result())

# # API Key Info
# API Key Info
# print(client.APIkey.APIkey_info().result())
# # LCP Info
# LCP Info
# print(client.Common.Common_getLcp(symbol="BTCUSD").result())

# # # Wallet Data Endpoints
# Get Wallet Balance
# print(client.Wallet.Wallet_getBalance(coin="BTC").result())
# Wallet Fund Records
# print(client.Wallet.Wallet_getRecords().result())
# Withdraw Records
# print(client.Wallet.Wallet_withdraw().result())
# Asset Exchange Records
# print(client.Wallet.Wallet_exchangeOrder().result())


#######################################################
# # # # Linear Perpetual
# # # Market Data Endpoints
# Query Kline
# print(client.LinearKline.LinearKline_get(symbol="BTCUSDT", interval="1", limit=10, **{'from':1615905770}).result())
# Public Trading Records
# print(client.LinearMarket.LinearMarket_trading(symbol="BTCUSDT").result())
# Get the Last Funding Rate
# print(client.LinearFunding.LinearFunding_myLastFee(symbol="BTCUSDT").result())
# Query Mark Price Kline
# print(client.LinearKline.LinearKline_markPrice(symbol="BTCUSDT", interval="1", limit=10, **{'from':1615905770}).result())
# Query Index Price Kline
# print(client.LinearKline.LinearKline_indexPrice(symbol="BTCUSDT", interval="1", limit=10, **{'from':1615905770}).result())
# Query Premium Price Kline
# print(client.LinearKline.LinearKline_premiumIndexPrice(symbol="BTCUSDT", interval="1", limit=10, **{'from':1615905770}).result())

# # # Account Data Endpoints
# # Active Orders
# Place Active Order
# print(client.LinearOrder.LinearOrder_new(side="Sell",symbol="BTCUSDT",order_type="Limit",qty=0.22,price=10000,time_in_force="GoodTillCancel",reduce_only=False, close_on_trigger=False).result())
# Get Active Order
# print(client.LinearOrder.LinearOrder_getOrders(symbol="BTCUSDT").result())
# Cancel Active Order
# print(client.LinearOrder.LinearOrder_cancel(symbol="BTCUSDT", order_id="5503bc5d-f3cd-4859-9b36-bd30d9677d4b").result())
# Cancel All Active Orders
# print(client.LinearOrder.LinearOrder_cancelAll(symbol="BTCUSDT").result())
# Replace Active Order
# print(client.LinearOrder.LinearOrder_replace(symbol="BTCUSDT", order_id="5503bc5d-f3cd-4859-9b36-bd30d9677d4b", p_r_qty="100").result())
# Query Active Order(real-time)
# print(client.LinearOrder.LinearOrder_query(symbol="BTCUSDT", order_id="5503bc5d-f3cd-4859-9b36-bd30d9677d4b").result())

# # Conditional Orders
# Place Conditional Order
# print(client.LinearConditional.LinearConditional_new(stop_px=9989, side="Sell",symbol="BTCUSDT",order_type="Limit",qty=0.22,base_price=9900, price=10000,time_in_force="GoodTillCancel",reduce_only=False, close_on_trigger=False).result())
# Get Conditional Order
# print(client.LinearConditional.LinearConditional_getOrders(symbol="BTCUSDT").result())
# Cancel Conditional Order
# print(client.LinearConditional.LinearConditional_cancel(symbol="BTCUSDT", stop_order_id="52095ff7-b080-498e-b3a4-8b3e76c42f5e").result())
# Cancel all Conditional Orders
# print(client.LinearConditional.LinearConditional_cancelAll(symbol="BTCUSDT").result())
# Replace Conditional Order
# print(client.LinearConditional.LinearConditional_replace(symbol="BTCUSDT", stop_order_id="52095ff7-b080-498e-b3a4-8b3e76c42f5e", p_r_qty="2").result())
# Query Conditional Order(real-time)
# print(client.LinearConditional.LinearConditional_query(symbol="BTCUSDT",stop_order_id="eed0915f-d2e5-4e7d-9908-1c73d792c659").result())

# # Position
# My Position
# print(client.LinearPositions.LinearPositions_myPosition(symbol="BTCUSDT").result())
# Set Auto Add Margin
# print(client.LinearPositions.LinearPositions_setAutoAddMargin(symbol="BTCUSDT", side="Sell", auto_add_margin=False).result())
# Cross/Isolated Margin Switch
# print(client.LinearPositions.LinearPositions_switchIsolated(symbol="BTCUSDT",is_isolated=True, buy_leverage=1, sell_leverage=1).result())
# Full/Partial Position SL/TP Switch
# print(client.LinearPositions.LinearPositions_switchMode(symbol="BTCUSDT",tp_sl_mode="Full").result())
# Add/Reduce Margin
# print(client.LinearPositions.LinearPositions_changeMargin(symbol="BTCUSDT", side="Buy", margin=0.01).result())
# Set Leverage
# print(client.LinearPositions.LinearPositions_saveLeverage(symbol="BTCUSDT", buy_leverage=10, sell_leverage=10).result())
# Set Trading-Stop
# print(client.LinearPositions.LinearPositions_tradingStop(symbol="BTCUSDT", side="Buy", take_profit=10).result())
# User Trade Records
# print(client.LinearExecution.LinearExecution_getTrades(symbol="BTCUSDT").result())
# Closed Profit and Loss
# print(client.LinearPositions.LinearPositions_closePnlRecords(symbol="BTCUSDT").result())

# # Risk Limit
# Get Risk Limit
# print(client.LinearWallet.LinearWallet_getRiskLimit(symbol="BTCUSDT").result())
# Set Risk Limit
# print(client.LinearWallet.LinearWallet_setRiskLimit(symbol="BTCUSDT", side="Buy", risk_id=1).result())

# # Funding
# Predicted Funding Rate and My Funding Fee
# print(client.LinearFunding.LinearFunding_predicted(symbol="BTCUSDT").result())
# My Last Funding Fee
# print(client.LinearFunding.LinearFunding_prevRate(symbol="BTCUSDT").result())


#######################################################
# # # # Inverse Futures

# # # Account Data Endpoints

# # Active Orders
# Place Active Order
# print(client.FuturesOrder.FuturesOrder_new(side="Buy",symbol="BTCUSDM21",order_type="Limit",qty=1,price=8300,time_in_force="GoodTillCancel").result())
# Get Active Order
# print(client.FuturesOrder.FuturesOrder_getOrders(symbol="BTCUSDM21").result())
# Cancel Active Order
# print(client.FuturesOrder.FuturesOrder_cancel(symbol="BTCUSDM21", order_id="69bd5b88-fa2e-4c33-a489-1860f595191d").result())
# Cancel All Active Orders
# print(client.FuturesOrder.FuturesOrder_cancelAll(symbol="BTCUSDM21").result())
# Replace Active Order
# print(client.FuturesOrder.FuturesOrder_replace(symbol="BTCUSDM21", order_id="69bd5b88-fa2e-4c33-a489-1860f595191d", p_r_qty="2").result())
# Query Active Orders(real-time)
# print(client.FuturesOrder.FuturesOrder_query(symbol="BTCUSDM21", order_id="faa46cb7-54ce-4591-8265-3b116d73b743").result())

# # Conditional Orders
# Place Conditional Order
# print(client.FuturesConditional.FuturesConditional_new(order_type="Limit",side="Buy",symbol="BTCUSDM21",qty="1",price="8100",base_price="8300",stop_px="8150",time_in_force="GoodTillCancel", order_link_id="cus_order_id_1").result())
# Get Conditional Order
# print(client.FuturesConditional.FuturesConditional_getOrders(symbol="BTCUSDM21",stop_order_status="Untriggered").result())
# Cancel Conditional Order
# print(client.FuturesConditional.FuturesConditional_cancel(symbol="BTCUSDM21", order_link_id="cus_order_id_1").result())
# Cancel All Conditions Orders
# print(client.FuturesConditional.FuturesConditional_cancelAll(symbol="BTCUSDM21").result())
# Replace Conditional Order
# print(client.FuturesConditional.FuturesConditional_replace(symbol="BTCUSDM21", stop_order_id="69bd5b88-fa2e-4c33-a489-1860f595191d",p_r_qty="2").result())
# Query Conditional Order(real-time)
# print(client.FuturesConditional.FuturesConditional_query(symbol="BTCUSDM21").result())

# # Position
# My Position
# print(client.FuturesPositions.FuturesPositions_myPosition(symbol="BTCUSDM21").result())
# Change Margin
# print(client.FuturesPositions.FuturesPositions_changeMargin(symbol="BTCUSDM21", margin="10").result())
# Set Trading-Stop
# print(client.FuturesPositions.FuturesPositions_tradingStop(symbol="BTCUSDM21",take_profit="0", stop_loss="9110", trailing_stop="0", new_trailing_active="0").result())
# Set Leverage
# print(client.FuturesPositions.FuturesPositions_saveLeverage(symbol="BTCUSDM21",position_idx=1, buy_leverage="14",sell_leverage="14").result())
# Position Mode Switch
# print(client.FuturesPositions.FuturesPositions_switchPositionMode(symbol="BTCUSDM21",mode=3).result())
# Cross/Isolated Margin Switch
# print(client.FuturesPositions.FuturesPositions_switchIsolated(symbol="BTCUSDM21",position_idx=1,is_isolated=True, buy_leverage="1", sell_leverage="1").result())
# User Trade Records
# print(client.FuturesExecution.FuturesExecution_getTrades(symbol="BTCUSDM21").result())
# Closed Profit and Loss
# print(client.FuturesPositions.FuturesPositions_closePnlRecords(symbol="BTCUSDM21").result())