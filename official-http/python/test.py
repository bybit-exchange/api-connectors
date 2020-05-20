import bybit
#
client  = bybit.bybit(test=True, api_key="xx", api_secret="xx")
#
# # # Get server time
# print(client.Common.Common_get().result()[0])
# #
# # # Get Symbol lists
# print(client.Symbol.Symbol_get().result()[0]["result"][0])
# #
# # # Change account user leverage
# print(client.Positions.Positions_saveLeverage(symbol="BTCUSD", leverage="14").result())
# #
# # # Query account positions
# print(client.Positions.Positions_myPosition().result())
# #
# # #Place an Active Order
# print(client.Order.Order_new(side="Buy",symbol="BTCUSD",order_type="Limit",qty=1,price=8300,time_in_force="GoodTillCancel").result())
# #
# # #Get Active Order
# print(client.Order.Order_getOrders().result())
# #
# # #Cancel Active Order
# print(client.Order.Order_cancel(order_id="baaa9182-86e1-42aa-8420-da6428346b30").result())
# #
# # # Place Conditional Order
# print(client.Conditional.Conditional_new(order_type="Limit",side="Buy",symbol="BTCUSD",qty=1,price=8100,base_price=8300,stop_px=8150,time_in_force="GoodTillCancel").result())
# #
# # #Get Conditional Order
# print(client.Conditional.Conditional_getOrders().result())
# #
# # #Cancel conditional order
# print(client.Conditional.Conditional_cancel(stop_order_id="53c8e250-252b-47f7-a768-5f5456b64e17").result())
# #
# # #changeMargin
# print(client.Positions.Positions_changeMargin(symbol="BTCUSD", margin="10").result())
# #
# # #Set Trading-Stop
# print(client.Positions.Positions_tradingStop(symbol="BTCUSD",stop_loss="8100").result())
# #
# # #Get wallet fund records
# print(client.Wallet.Wallet_getRecords().result())
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
# # #Get Orderbook
# print(client.Market.Market_orderbook(symbol="BTCUSD").result())
#
# #Latest information for symbol
# print(client.Market.Market_symbolInfo().result())
#
# print(client.LinearOrder.LinearOrder_new(side="Sell",symbol="BTCUSDT",order_type="Limit",qty=0.22,price=10000,time_in_force="GoodTillCancel",reduce_only=False, close_on_trigger=False).result())
# print(client.LinearOrder.LinearOrder_cancel(symbol="BTCUSDT", order_id="87d8a4ed-dc9d-41c9-8dac-6e3c51356645").result())
print(client.LinearOrder.LinearOrder_getOrders(symbol="BTCUSDT").result())
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
#
