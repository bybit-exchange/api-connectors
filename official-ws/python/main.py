from BybitWebsocket import BybitWebsocket
import logging
from time import sleep


def setup_logger():
    # Prints logger info to terminal
    logger = logging.getLogger()
    logger.setLevel(logging.INFO)  # Change this to DEBUG if you want a lot more info
    ch = logging.StreamHandler()
    # create formatter
    formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
    ch.setFormatter(formatter)
    logger.addHandler(ch)
    return logger


if __name__ == "__main__":
    logger = setup_logger()
    # inverse perpetual
    ws = BybitWebsocket(wsURL="wss://stream.bybit.com/realtime",
                         api_key="", api_secret=""
                        )

    ws.subscribe_orderBookL2("BTCUSD")
    # ws.subscribe_kline("BTCUSD", '1')
    # ws.subscribe_instrument_info('BTCUSD')
    # ws.subscribe_trade("BTCUSD")
    # ws.subscribe_order()
    # ws.subscribe_stop_order()
    # ws.subscribe_execution()
    # ws.subscribe_position()
    # ws.subscribe_insurance() # only support inverse perpetual
    # ws.subscribe_wallet() # only support USDT perpetual
    while(1):
        logger.info(ws.get_orderbook("BTCUSD"))
        # logger.info(ws.get_data('candle.1.BTCUSD'))
        # logger.info(ws.get_data("instrument_info.100ms.BTCUSD"))
        # logger.info(ws.get_data("trade.BTCUSD"))
        # logger.info(ws.get_data('order'))
        # logger.info(ws.get_data('stop_order'))
        # logger.info(ws.get_data("execution"))
        # logger.info(ws.get_data("position"))
        # logger.info(ws.get_data('insurance.BTC'))
        # logger.info(ws.get_data('insurance.ETH'))
        # logger.info(ws.get_data('insurance.EOS'))
        # logger.info(ws.get_data('insurance.XRP'))
        # logger.info(ws.get_data('wallet'))
        sleep(1)


    # usdt perpetual
    # ws_public = BybitWebsocket(wsURL="wss://stream.bybit.com/realtime_public",
    #                      api_key="", api_secret=""
    #                     )
    # ws_private = BybitWebsocket(wsURL="wss://stream.bybit.com/realtime_private",
    #                      api_key="", api_secret=""
    #                     )
    # ws_public.subscribe_orderBookL2("BTCUSDT")
    # ws_public.subscribe_kline("BTCUSDT", '1')
    # ws_public.subscribe_instrument_info('BTCUSDT')
    # ws_public.subscribe_trade("BTCUSDT")

    # ws_private.subscribe_order()
    # ws_private.subscribe_stop_order()
    # ws_private.subscribe_execution()
    # ws_private.subscribe_position()
    # ws.subscribe_insurance() # only support inverse perpetual
    # ws_private.subscribe_wallet() # only support USDT perpetual
    # while(1):
        # logger.info(ws_public.get_data("orderBookL2_25.BTCUSD"))
        # logger.info(ws_public.get_data('candle.1.BTCUSDT'))
        # logger.info(ws_public.get_data("instrument_info.100ms.BTCUSDT"))
        # logger.info(ws_public.get_data("trade.BTCUSDT"))
        # logger.info(ws_private.get_data('order'))
        # logger.info(ws_private.get_data('stop_order'))
        # logger.info(ws_private.get_data("execution"))
        # logger.info(ws_private.get_data("position"))
        # logger.info(ws_private.get_data('wallet'))

        # sleep(1)
