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
    # ws = BybitWebsocket(wsURL="wss://stream.bytick.com/realtime",
    #                      api_key="", api_secret=""
    #                     )

    # ws.subscribe_orderBookL2("BTCUSD")
    # ws.subscribe_orderBookL2("BTCUSD", 200)# only support 200
    # ws.subscribe_kline("BTCUSD", '1')
    # ws.subscribe_instrument_info('BTCUSD')
    # ws.subscribe_trade("BTCUSD")
    # ws.subscribe_insurance() # only support inverse perpetual
    # ws.subscribe_order()
    # ws.subscribe_stop_order()
    # ws.subscribe_execution()
    # ws.subscribe_position()
    # while(1):
        # logger.info(ws.get_orderBookL2("BTCUSD"))
        # logger.info(ws.get_orderBookL2("BTCUSD", 200))
        # logger.info(ws.get_kline('BTCUSD', '1'))
        # logger.info(ws.get_instrument_info("BTCUSD"))
        # logger.info(ws.get_trade("BTCUSD"))
        # logger.info(ws.get_insurance("BTC"))
        # logger.info(ws.get_insurance("ETH"))
        # logger.info(ws.get_order())
        # logger.info(ws.get_stop_order())
        # logger.info(ws.get_execution())
        # logger.info(ws.get_position())
        # sleep(1)


    # usdt perpetual

    # ws_public = BybitWebsocket(wsURL="wss://stream.bytick.com/realtime_public",
    #                      api_key="", api_secret=""
    #                     )
    # ws_private = BybitWebsocket(wsURL="wss://stream.bytick.com/realtime_private",
    #                      api_key="", api_secret=""
    #                     )

    # ws_public.subscribe_orderBookL2("BTCUSDT")
    # ws_public.subscribe_orderBookL2("BTCUSDT", 200)
    # ws_public.subscribe_kline("BTCUSDT", '1')
    # ws_public.subscribe_instrument_info('BTCUSDT')
    # ws_public.subscribe_trade("BTCUSDT")
    # ws_private.subscribe_order()
    # ws_private.subscribe_stop_order()
    # ws_private.subscribe_execution()
    # ws_private.subscribe_position()
    # ws_private.subscribe_wallet() # only support USDT perpetual
    # while(1):
        # logger.info(ws_public.get_orderBookL2("BTCUSDT"))
        # logger.info(ws_public.get_orderBookL2("BTCUSDT", 200))
        # logger.info(ws_public.get_kline('BTCUSDT', '1'))
        # logger.info(ws_public.get_instrument_info("BTCUSDT"))
        # logger.info(ws_public.get_trade("BTCUSDT"))
        # logger.info(ws_private.get_order())
        # logger.info(ws_private.get_stop_order())
        # logger.info(ws_private.get_execution())
        # logger.info(ws_private.get_position())
        # logger.info(ws_private.get_wallet())
        # sleep(1)