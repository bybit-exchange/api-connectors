# coding: utf-8

"""
    Bybit API

    ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]    # noqa: E501

    OpenAPI spec version: 0.2.9
    Contact: support@bybit.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six


class OpenInterestInfo(object):
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
        'open_interest': 'int',
        'timestamp': 'int',
        'symbol': 'str'
    }

    attribute_map = {
        'open_interest': 'open_interest',
        'timestamp': 'timestamp',
        'symbol': 'symbol'
    }

    def __init__(self, open_interest=None, timestamp=None, symbol=None):  # noqa: E501
        """OpenInterestInfo - a model defined in Swagger"""  # noqa: E501

        self._open_interest = None
        self._timestamp = None
        self._symbol = None
        self.discriminator = None

        if open_interest is not None:
            self.open_interest = open_interest
        if timestamp is not None:
            self.timestamp = timestamp
        if symbol is not None:
            self.symbol = symbol

    @property
    def open_interest(self):
        """Gets the open_interest of this OpenInterestInfo.  # noqa: E501


        :return: The open_interest of this OpenInterestInfo.  # noqa: E501
        :rtype: int
        """
        return self._open_interest

    @open_interest.setter
    def open_interest(self, open_interest):
        """Sets the open_interest of this OpenInterestInfo.


        :param open_interest: The open_interest of this OpenInterestInfo.  # noqa: E501
        :type: int
        """

        self._open_interest = open_interest

    @property
    def timestamp(self):
        """Gets the timestamp of this OpenInterestInfo.  # noqa: E501


        :return: The timestamp of this OpenInterestInfo.  # noqa: E501
        :rtype: int
        """
        return self._timestamp

    @timestamp.setter
    def timestamp(self, timestamp):
        """Sets the timestamp of this OpenInterestInfo.


        :param timestamp: The timestamp of this OpenInterestInfo.  # noqa: E501
        :type: int
        """

        self._timestamp = timestamp

    @property
    def symbol(self):
        """Gets the symbol of this OpenInterestInfo.  # noqa: E501


        :return: The symbol of this OpenInterestInfo.  # noqa: E501
        :rtype: str
        """
        return self._symbol

    @symbol.setter
    def symbol(self, symbol):
        """Sets the symbol of this OpenInterestInfo.


        :param symbol: The symbol of this OpenInterestInfo.  # noqa: E501
        :type: str
        """

        self._symbol = symbol

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
        if issubclass(OpenInterestInfo, dict):
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
        if not isinstance(other, OpenInterestInfo):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other