import bybit
client = bybit.bybit(test=True, api_key="", api_secret="")

# Get API announcements
print(client.Common.Common_announcements().result()[0])
# Get server time
print(client.Common.Common_get().result()[0])
# Get Symbol lists
print(client.Symbol.Symbol_get().result()[0]["result"][0])
# Get market's open interest
print(client.Market.Market_openInterest(symbol="BTCUSDT", limit=2, period="5min").result())
# Get market's long-short ratio
print(client.Market.Market_accountRatio(symbol="BTCUSDT", limit=2, period="5min").result())
# Get latest big deals
print(client.Market.Market_bigDeal(symbol="BTCUSDT", limit=2).result())

# Set Levereage
print(client.Positions.Positions_userLeverage().result())
# Change account user leverage
print(client.Positions.Positions_saveLeverage(symbol="BTCUSD", leverage="14").result())
# Query account positions
print(client.Positions.Positions_myPosition(symbol="BTCUSD").result())
# Place an Active Order
print(client.Order.Order_new(side="Buy",symbol="BTCUSD",order_type="Limit",qty=1,price=8300,time_in_force="GoodTillCancel").result())
# Get Active Orders
print(client.Order.Order_getOrders().result())
# Query Active Orders
print(client.Order.Order_query(symbol="BTCUSD", order_id="").result())
# Replace Active Order
print(client.Order.Order_replace(symbol="BTCUSD", order_id=""))
# Cancel Active Order
print(client.Order.Order_cancel(symbol="BTCUSD", order_id="69bd5b88-fa2e-4c33-a489-1860f595191d").result())
# Cancel All Active Orders
print(client.Order.Order_cancelAll(symbol="BTCUSD").result())
# Place Conditional Order
print(client.Conditional.Conditional_new(order_type="Limit",side="Buy",symbol="BTCUSD",qty=1,price=8100,base_price=8300,stop_px=8150,time_in_force="GoodTillCancel", order_link_id="cus_order_id_1").result())
# Get Conditional Orders
print(client.Conditional.Conditional_getOrders(stop_order_status="Untriggered").result())
# Query Conditional Orders
print(client.Conditional.Conditional_query(symbol="BTCUSD").result())
# Cancel Conditional Order
print(client.Conditional.Conditional_cancel(symbol="BTCUSD", order_link_id="cus_order_id_1").result())
# Replace Conditional Order
print(client.Conditional.Conditional_replace(symbol="BTCUSD", stop_order_id="").result())
# Cancel All Conditions Orders
print(client.Conditional.Conditional_cancelAll(symbol="BTCUSD").result())
# Change Margin
print(client.Positions.Positions_changeMargin(symbol="BTCUSD", margin="10").result())
# Set Trading-Stop
print(client.Positions.Positions_tradingStop(symbol="BTCUSD",stop_loss="8100").result())
print(client.Positions.Positions_tradingStop(symbol="BTCUSD",take_profit="0", stop_loss="9110", trailing_stop="0", new_trailing_active="0").result())
# Get Wallet Fund Records
print(client.Wallet.Wallet_getRecords().result())
# Get the Last Funding Rate
print(client.Funding.Funding_myLastFee(symbol="BTCUSD").result())
# Get My Last Funding Fee
print(client.Funding.Funding_prevRate(symbol="BTCUSD").result())
# Get Predicted Funding Rate and Funding Fee
print(client.Funding.Funding_predicted(symbol="BTCUSD").result())
# Get the trade records of a order
print(client.Execution.Execution_getTrades(order_id="24d6c1b1-e2aa-4ef0-8d73-55b751710a0c").result())
# Get closed PNLs
print(client.Positions.Positions_closePnlRecords(symbol="BTCUSD").result())
# Get Orderbook
print(client.Market.Market_orderbook(symbol="BTCUSD").result())
# Latest information for symbol
print(client.Market.Market_symbolInfo().result())
# Get Market Trading Records
print(client.Market.Market_trading_records(symbol="BTCUSD").result())
# Query Kline
print(client.Kline.Kline_get(symbol="BTCUSD", interval="m", **{'from':1}).result())
# Get Risk Limit
print(client.Wallet.Wallet_getRiskLimit().result())
# Set Risk Limit
print(client.Wallet.Wallet_setRiskLimit(symbol="BTCUSD", risk_id=2).result())
# Get Wallet Balance
print(client.Wallet.Wallet_getBalance(coin="BTC").result())
# Get Wallet Withdrawals
print(client.Wallet.Wallet_withdraw().result())



# LINEAR ENDPOINTS
# Place a Linear Active Order
print(client.LinearOrder.LinearOrder_new(side="Sell",symbol="BTCUSDT",order_type="Limit",qty=0.22,price=10000,time_in_force="GoodTillCancel",reduce_only=False, close_on_trigger=False).result())
# Cancel a Linear Active Order
print(client.LinearOrder.LinearOrder_cancel(symbol="BTCUSDT", order_id="87d8a4ed-dc9d-41c9-8dac-6e3c51356645").result())
# Get Linear Active Orders
print(client.LinearOrder.LinearOrder_getOrders(symbol="BTCUSDT").result())
# Query Linear Active Orders
print(client.LinearOrder.LinearOrder_query(symbol="BTCUSDT", order_id="87d8a4ed-dc9d-41c9-8dac-6e3c51356645").result())
# Cancel All Linear Active Orders
print(client.LinearOrder.LinearOrder_cancelAll(symbol="BTCUSDT").result())
# Replace a Linear Active Order
print(client.LinearOrder.LinearOrder_replace(symbol="BTCUSDT", order_id="").result())
# Place a Linear Conditional Order
print(client.LinearConditional.LinearConditional_new(stop_px=9989, side="Sell",symbol="BTCUSDT",order_type="Limit",qty=0.22,base_price=9900, price=10000,time_in_force="GoodTillCancel",reduce_only=False, close_on_trigger=False).result())
# Cancel a Linear Conditional Order
print(client.LinearConditional.LinearConditional_cancel(symbol="BTCUSDT", stop_order_id="52095ff7-b080-498e-b3a4-8b3e76c42f5e").result())
# Cancel all Linear Conditional Orders
print(client.LinearConditional.LinearConditional_cancelAll(symbol="BTCUSDT").result())
# Get Linear Conditional Orders
print(client.LinearConditional.LinearConditional_getOrders(symbol="BTCUSDT").result())
# Query Linear Conditional Orders
print(client.LinearConditional.LinearConditional_query(symbol="BTCUSDT",stop_order_id="eed0915f-d2e5-4e7d-9908-1c73d792c659").result())
# Replace a Linear Conditional Order
print(client.LinearConditional.LinearConditional_replace(symbol="BTCUSDT", stop_order_id="").result())
# Set Auto Add Margin
print(client.LinearPositions.LinearPositions_setAutoAddMargin(symbol="BTCUSDT", side="Sell", auto_add_margin=False).result())
# Cross/Isolated Margin Switch
print(client.LinearPositions.LinearPositions_switchIsolated(symbol="BTCUSDT",is_isolated=True, buy_leverage=1, sell_leverage=1).result())
# Set Leverage
print(client.LinearPositions.LinearPositions_saveLeverage(symbol="BTCUSDT", buy_leverage=10, sell_leverage=10).result())
# Get Position
print(client.LinearPositions.LinearPositions_myPosition(symbol="BTCUSDT").result())
# Set Trading-Stop
print(client.LinearPositions.LinearPositions_tradingStop(symbol="BTCUSDT", side="Buy", take_profit=10).result())
# Change Margin
print(client.LinearPositions.LinearPositions_changeMargin(symbol="BTCUSDT", side="Buy", margin=0.01).result())
# Get Trade Records
print(client.LinearExecution.LinearExecution_getTrades(symbol="BTCUSDT").result())
# Get Closed PNL Records
print(client.LinearPositions.LinearPositions_closePnlRecords(symbol="BTCUSDT").result())
# Get the Last Funding Rate
print(client.LinearFunding.LinearFunding_myLastFee(symbol="BTCUSDT").result())
# Get My Last Funding Fee
print(client.LinearFunding.LinearFunding_prevRate(symbol="BTCUSDT").result())
# Get Predicted Funding Rate and Funding Fee
print(client.LinearFunding.LinearFunding_predicted(symbol="BTCUSDT").result())
# Query Kline
print(client.LinearKline.LinearKline_get(symbol="BTCUSDT", interval="m", limit=10, **{'from':1}).result())
# Query Mark Price Kline
print(client.LinearKline.LinearKline_markPrice(symbol="BTCUSDT", interval="m", limit=10, **{'from':1}).result())
# Get Linear Risk Limit
print(client.LinearWallet.LinearWallet_getRiskLimit(symbol="BTCUSDT").result())


# Get API Key Info
print(client.APIkey.APIkey_info().result())
