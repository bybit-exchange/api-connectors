from enum import Enum


class OrderType(Enum):
    """
    Order type.
    """
    LIMIT = "限价"
    MARKET = "市价"
    STOP = "STOP"


class Side(Enum):
    """
    Order side
    """
    BUY = "Buy"
    SELL = "Sell"


class Symbol(Enum):
    """
    Symbol type
    """
    BTCUSD = "BTCUSD"
    ETHUSD = "ETHUSD"
    XRPUSD = "XRPUSD"
    EOSUSD = "EOSUSD"


class TimeInForce(Enum):
    """
    Time in force
    """
    GOOD_TILL_CANCEL = "GoodTillCancel"
    IMMEDIATE_OR_CANCEL = "ImmediateOrCancel"
    FILL_OR_KILL = "FillOrKill"
    POST_ONLY = "PostOnly"


class TriggerPriceType(Enum):
    """
    Trigger price type
    """
    LAST_PRICE = "LastPrice"
    INDEX_PRICE = "IndexPrice"
    MARK_PRICE = "MarkPrice"


class OrderStatus(Enum):
    """
    Order status
    """
    CREATED = "Created"
    NEW = "New"
    PARTIALLY_FILLED = "PartiallyFilled"
    FILLED = "Filled"
    CANCELLED = "Cancelled"
    REJECTED = "Rejected"
    PENDING_CANCEL = "PendingCancel"
    DEACTIVATED = "Deactivated"
    DEFAULT = "Default"
