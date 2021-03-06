# coding: utf-8

"""
    Bybit API

    ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]    # noqa: E501

    OpenAPI spec version: 0.2.11
    Contact: support@bybit.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six


class LinearKlineResp(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'close': 'float',
        'high': 'float',
        'id': 'int',
        'interval': 'str',
        'low': 'float',
        'open': 'float',
        'open_time': 'int',
        'period': 'str',
        'start_at': 'int',
        'symbol': 'str',
        'turnover': 'float',
        'volume': 'float'
    }

    attribute_map = {
        'close': 'close',
        'high': 'high',
        'id': 'id',
        'interval': 'interval',
        'low': 'low',
        'open': 'open',
        'open_time': 'open_time',
        'period': 'period',
        'start_at': 'start_at',
        'symbol': 'symbol',
        'turnover': 'turnover',
        'volume': 'volume'
    }

    def __init__(self, close=None, high=None, id=None, interval=None, low=None, open=None, open_time=None, period=None, start_at=None, symbol=None, turnover=None, volume=None):  # noqa: E501
        """LinearKlineResp - a model defined in Swagger"""  # noqa: E501

        self._close = None
        self._high = None
        self._id = None
        self._interval = None
        self._low = None
        self._open = None
        self._open_time = None
        self._period = None
        self._start_at = None
        self._symbol = None
        self._turnover = None
        self._volume = None
        self.discriminator = None

        if close is not None:
            self.close = close
        if high is not None:
            self.high = high
        if id is not None:
            self.id = id
        if interval is not None:
            self.interval = interval
        if low is not None:
            self.low = low
        if open is not None:
            self.open = open
        if open_time is not None:
            self.open_time = open_time
        if period is not None:
            self.period = period
        if start_at is not None:
            self.start_at = start_at
        if symbol is not None:
            self.symbol = symbol
        if turnover is not None:
            self.turnover = turnover
        if volume is not None:
            self.volume = volume

    @property
    def close(self):
        """Gets the close of this LinearKlineResp.  # noqa: E501


        :return: The close of this LinearKlineResp.  # noqa: E501
        :rtype: float
        """
        return self._close

    @close.setter
    def close(self, close):
        """Sets the close of this LinearKlineResp.


        :param close: The close of this LinearKlineResp.  # noqa: E501
        :type: float
        """

        self._close = close

    @property
    def high(self):
        """Gets the high of this LinearKlineResp.  # noqa: E501


        :return: The high of this LinearKlineResp.  # noqa: E501
        :rtype: float
        """
        return self._high

    @high.setter
    def high(self, high):
        """Sets the high of this LinearKlineResp.


        :param high: The high of this LinearKlineResp.  # noqa: E501
        :type: float
        """

        self._high = high

    @property
    def id(self):
        """Gets the id of this LinearKlineResp.  # noqa: E501


        :return: The id of this LinearKlineResp.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this LinearKlineResp.


        :param id: The id of this LinearKlineResp.  # noqa: E501
        :type: int
        """

        self._id = id

    @property
    def interval(self):
        """Gets the interval of this LinearKlineResp.  # noqa: E501


        :return: The interval of this LinearKlineResp.  # noqa: E501
        :rtype: str
        """
        return self._interval

    @interval.setter
    def interval(self, interval):
        """Sets the interval of this LinearKlineResp.


        :param interval: The interval of this LinearKlineResp.  # noqa: E501
        :type: str
        """

        self._interval = interval

    @property
    def low(self):
        """Gets the low of this LinearKlineResp.  # noqa: E501


        :return: The low of this LinearKlineResp.  # noqa: E501
        :rtype: float
        """
        return self._low

    @low.setter
    def low(self, low):
        """Sets the low of this LinearKlineResp.


        :param low: The low of this LinearKlineResp.  # noqa: E501
        :type: float
        """

        self._low = low

    @property
    def open(self):
        """Gets the open of this LinearKlineResp.  # noqa: E501


        :return: The open of this LinearKlineResp.  # noqa: E501
        :rtype: float
        """
        return self._open

    @open.setter
    def open(self, open):
        """Sets the open of this LinearKlineResp.


        :param open: The open of this LinearKlineResp.  # noqa: E501
        :type: float
        """

        self._open = open

    @property
    def open_time(self):
        """Gets the open_time of this LinearKlineResp.  # noqa: E501


        :return: The open_time of this LinearKlineResp.  # noqa: E501
        :rtype: int
        """
        return self._open_time

    @open_time.setter
    def open_time(self, open_time):
        """Sets the open_time of this LinearKlineResp.


        :param open_time: The open_time of this LinearKlineResp.  # noqa: E501
        :type: int
        """

        self._open_time = open_time

    @property
    def period(self):
        """Gets the period of this LinearKlineResp.  # noqa: E501


        :return: The period of this LinearKlineResp.  # noqa: E501
        :rtype: str
        """
        return self._period

    @period.setter
    def period(self, period):
        """Sets the period of this LinearKlineResp.


        :param period: The period of this LinearKlineResp.  # noqa: E501
        :type: str
        """

        self._period = period

    @property
    def start_at(self):
        """Gets the start_at of this LinearKlineResp.  # noqa: E501


        :return: The start_at of this LinearKlineResp.  # noqa: E501
        :rtype: int
        """
        return self._start_at

    @start_at.setter
    def start_at(self, start_at):
        """Sets the start_at of this LinearKlineResp.


        :param start_at: The start_at of this LinearKlineResp.  # noqa: E501
        :type: int
        """

        self._start_at = start_at

    @property
    def symbol(self):
        """Gets the symbol of this LinearKlineResp.  # noqa: E501


        :return: The symbol of this LinearKlineResp.  # noqa: E501
        :rtype: str
        """
        return self._symbol

    @symbol.setter
    def symbol(self, symbol):
        """Sets the symbol of this LinearKlineResp.


        :param symbol: The symbol of this LinearKlineResp.  # noqa: E501
        :type: str
        """

        self._symbol = symbol

    @property
    def turnover(self):
        """Gets the turnover of this LinearKlineResp.  # noqa: E501


        :return: The turnover of this LinearKlineResp.  # noqa: E501
        :rtype: float
        """
        return self._turnover

    @turnover.setter
    def turnover(self, turnover):
        """Sets the turnover of this LinearKlineResp.


        :param turnover: The turnover of this LinearKlineResp.  # noqa: E501
        :type: float
        """

        self._turnover = turnover

    @property
    def volume(self):
        """Gets the volume of this LinearKlineResp.  # noqa: E501


        :return: The volume of this LinearKlineResp.  # noqa: E501
        :rtype: float
        """
        return self._volume

    @volume.setter
    def volume(self, volume):
        """Sets the volume of this LinearKlineResp.


        :param volume: The volume of this LinearKlineResp.  # noqa: E501
        :type: float
        """

        self._volume = volume

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(LinearKlineResp, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, LinearKlineResp):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
