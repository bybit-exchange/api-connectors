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

def my_callback(data):
    logger.info(data)

if __name__ == "__main__":
    logger = setup_logger()
    ws = BybitWebsocket(wsURL="wss://stream-testnet.bybit.com/realtime", 
                         api_key=None, api_secret=None)

    ws.subscribe_orderBookL2("BTCUSD")
    ws.subscribe_kline("BTCUSD", '1m')
    ws.subscribe_klineV2('1', "ETHUSD")
    ws.subscribe_order()
    ws.subscribe_execution()
    ws.subscribe_position()
    ws.subscribe_instrument_info('BTCUSD')
    ws.subscribe_insurance()
    
    ws.add_callback('klineV2.1.ETHUSD', my_callback)
    
    while(1):
        logger.info(ws.get_data("orderBookL2_25.BTCUSD"))
        logger.info(ws.get_data('kline.BTCUSD.1m'))
        logger.info(ws.get_data('order'))
        logger.info(ws.get_data("execution"))
        logger.info(ws.get_data("position"))
        logger.info(ws.get_data("instrument_info.100ms.BTCUSD"))
        logger.info(ws.get_data('insurance.BTC'))
        logger.info(ws.get_data('insurance.EOS'))
        sleep(1)
