import bybit
#
client = bybit.bybit(test=True, api_key="", api_secret="")
#
# # # Get server time
# print(client.Common.Common_getTime().result()[0])

# # # Get api announcement
# print(client.Common.Common_announcements().result()[0])
#
# # # Get Symbol lists
# print(client.Symbol.Symbol_get().result()[0]["result"][0])

# #
# # # Get public trading lists
# print(client.Market.Market_tradingRecords(symbol="BTCUSD").result()[0]["result"][0])

# kline
# print(client.Kline.Kline_get(symbol="BTCUSD", interval="30",limit=200, **{'from':1600544880}).result())
#markprice kline
# print(client.Kline.Kline_markPrice(symbol="BTCUSD", interval="30",limit=200, **{'from':1600544880}).result())

# #
# # # Change account user leverage
# print(client.Positions.Positions_saveLeverage(symbol="BTCUSD", leverage="14").result())
# #
# # # Change account user leverage
# print(client.Positions.Positions_closePnlRecords(symbol="BTCUSD").result()[0]["result"][0])
# #
# # # Query account positions
# print(client.Positions.Positions_myPosition().result())
# #
# # #Place an Active Order
# print(client.Order.Order_new(side="Buy",symbol="BTCUSD",order_type="Limit",qty=1,price=8300,time_in_force="GoodTillCancel").result())
# #
# # #Get Active Order
# print(client.Order.Order_getOrders().result())

# #Get Active Order(real-time)
# print(client.Order.Order_query(symbol="BTCUSD", order_id="360557b6-4513-4f14-973c-9541981ac589").result())
# print(client.Order.Order_query(symbol="BTCUSD").result())
# #
# # #Cancel Active Order
# print(client.Order.Order_cancel(symbol="BTCUSD", order_id="b441f0e6-a105-46fb-af81-4beb01bdeed8").result())
# #
# # # Place Conditional Order
# print(client.Conditional.Conditional_new(order_type="Limit",side="Buy",symbol="BTCUSD",qty=1,price=16001,base_price=15700,stop_px=16000,time_in_force="GoodTillCancel", order_link_id="cus_order_id_21106").result())
# #
# #Get Conditional Order(real-time)
#print(client.Conditional.Conditional_query(symbol="BTCUSD", stop_order_id="9d1d5f0e-148a-465d-9cf3-76c4b639d902").result())
# print(client.Conditional.Conditional_query(symbol="BTCUSD").result())

# # #Get Conditional Order
# print(client.Conditional.Conditional_getOrders(stop_order_status="Untriggered").result())


# # #Replace conditional order
# print(client.Conditional.Conditional_replace(symbol="BTCUSD", order_link_id="cus_order_id_21106", p_r_qty="2000").result())

# #
# # #Cancel conditional order
# print(client.Conditional.Conditional_cancel(symbol="BTCUSD", stop_order_id="9d1d5f0e-148a-465d-9cf3-76c4b639d902").result())

# # #Cancel all conditional order
# print(client.Conditional.Conditional_cancelAll(symbol="BTCUSD").result())
# #
# # #changeMargin
# print(client.Positions.Positions_changeMargin(symbol="BTCUSD", margin="0.10").result())
# #
# # #Set Trading-Stop
# print(client.Positions.Positions_tradingStop(symbol="BTCUSD",stop_loss="8100").result())
# print(client.Positions.Positions_tradingStop(symbol="BTCUSD",take_profit="0", stop_loss="9110", trailing_stop="0", new_trailing_active="0").result())
# #
# # #Get wallet fund records
# print(client.Wallet.Wallet_getRecords().result())

# print(client.Wallet.Wallet_withdraw().result())
# print(client.Wallet.Wallet_getRiskLimit().result())
# print(client.APIkey_APIkey.info())
# # #Get wallet balance
# print(client.Wallet.Wallet_getBalance(coin="BTC").result())

# # #Get exchange orders
# print(client.Wallet.Wallet_exchangeOrder().result())
# #
# # #Get the Last Funding Rate
# print(client.Funding.Funding_myLastFee(symbol="BTCUSD").result())
# #
# # #Get My Last Funding Fee
# # print(client.Funding.Funding_getRate(symbol="BTCUSD").result())
# #
# # #Get Predicted Funding Rate and Funding Fee
# print(client.Funding.Funding_predicted(symbol="BTCUSD").result())
# #
# # #Get the trade records of a order
# print(client.Execution.Execution_getTrades(order_id="24d6c1b1-e2aa-4ef0-8d73-55b751710a0c").result())
# #
# # Get closed pnl
# print(client.Execution.Execution_closed_pnl(symbol="BTCUSD").result())

# # #Get Orderbook
# print(client.Market.Market_orderbook(symbol="BTCUSD").result())
#
# #Latest information for symbol
# print(client.Market.Market_symbolInfo().result())
#
# print(client.LinearOrder.LinearOrder_new(side="Sell",symbol="BTCUSDT",order_type="Limit",qty=0.22,price=10000,time_in_force="GoodTillCancel",reduce_only=False, close_on_trigger=False).result())
# print(client.LinearOrder.LinearOrder_cancel(symbol="BTCUSDT", order_id="87d8a4ed-dc9d-41c9-8dac-6e3c51356645").result())
# print(client.LinearOrder.LinearOrder_getOrders(symbol="BTCUSDT").result())
# print(client.LinearOrder.LinearOrder_query(symbol="BTCUSDT", order_id="87d8a4ed-dc9d-41c9-8dac-6e3c51356645").result())
# print(client.LinearOrder.LinearOrder_cancelAll(symbol="BTCUSDT").result())
#
# print(client.LinearConditional.LinearConditional_new(stop_px=9989, side="Sell",symbol="BTCUSDT",order_type="Limit",qty=0.22,base_price=9900, price=10000,time_in_force="GoodTillCancel",reduce_only=False, close_on_trigger=False).result())
# print(client.LinearConditional.LinearConditional_cancel(symbol="BTCUSDT", stop_order_id="52095ff7-b080-498e-b3a4-8b3e76c42f5e").result())
# print(client.LinearConditional.LinearConditional_cancelAll(symbol="BTCUSDT").result())
# print(client.LinearConditional.LinearConditional_getOrders(symbol="BTCUSDT").result())
# print(client.LinearConditional.LinearConditional_query(symbol="BTCUSDT",stop_order_id="eed0915f-d2e5-4e7d-9908-1c73d792c659").result())
# print(client.LinearPositions.LinearPositions_setAutoAddMargin(symbol="BTCUSDT", side="Sell", auto_add_margin=False).result())
# print(client.LinearPositions.LinearPositions_switchIsolated(symbol="BTCUSDT",is_isolated=True, buy_leverage=1, sell_leverage=1).result())
# print(client.LinearPositions.LinearPositions_switchMode(symbol="BTCUSDT",tp_sl_mode="Full").result())
# print(client.LinearPositions.LinearPositions_saveLeverage(symbol="BTCUSDT", buy_leverage=10, sell_leverage=10).result())
# print(client.LinearPositions.LinearPositions_myPosition(symbol="BTCUSDT").result())
# print(client.LinearPositions.LinearPositions_tradingStop(symbol="BTCUSDT", side="Buy", take_profit=10).result())
# print(client.LinearPositions.LinearPositions_changeMargin(symbol="BTCUSDT", side="Buy", margin=0.01).result())
# print(client.LinearExecution.LinearExecution_getTrades(symbol="BTCUSDT").result())
# print(client.LinearPositions.LinearPositions_closePnlRecords(symbol="BTCUSDT").result())
# print(client.LinearFunding.LinearFunding_myLastFee(symbol="BTCUSDT").result())
# print(client.LinearFunding.LinearFunding_prevRate(symbol="BTCUSDT").result())
# print(client.LinearFunding.LinearFunding_predicted(symbol="BTCUSDT").result())
# print(client.LinearKline.LinearKline_get(symbol="BTCUSDT", interval="m", limit=10, **{'from':1}).result())
# print(client.LinearKline.LinearKline_markPrice(symbol="BTCUSDT", interval="m", limit=10, **{'from':1}).result())
# print(client.LinearOrder.LinearOrder_replace(symbol="BTCUSDT", order_id="041b4ff9-e781-43a0-9a05-159598e10293", p_r_qty="0.001").result())
# print(client.Market.Market_openInterest(symbol="BTCUSDT", limit=2, period="5min").result())
# print(client.Market.Market_accountRatio(symbol="BTCUSDT", limit=2, period="5min").result())
# print(client.Market.Market_bigDeal(symbol="BTCUSDT", limit=2).result())

