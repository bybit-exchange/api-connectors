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


class LotSizeFilter(object):
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
        'min_trading_qty': 'object',
        'max_trading_qty': 'object',
        'qty_step': 'object'
    }

    attribute_map = {
        'min_trading_qty': 'min_trading_qty',
        'max_trading_qty': 'max_trading_qty',
        'qty_step': 'qty_step'
    }

    def __init__(self, min_trading_qty=None, max_trading_qty=None, qty_step=None):  # noqa: E501
        """LotSizeFilter - a model defined in Swagger"""  # noqa: E501

        self._min_trading_qty = None
        self._max_trading_qty = None
        self._qty_step = None
        self.discriminator = None

        if min_trading_qty is not None:
            self.min_trading_qty = min_trading_qty
        if max_trading_qty is not None:
            self.max_trading_qty = max_trading_qty
        if qty_step is not None:
            self.qty_step = qty_step

    @property
    def min_trading_qty(self):
        """Gets the min_trading_qty of this LotSizeFilter.  # noqa: E501


        :return: The min_trading_qty of this LotSizeFilter.  # noqa: E501
        :rtype: object
        """
        return self._min_trading_qty

    @min_trading_qty.setter
    def min_trading_qty(self, min_trading_qty):
        """Sets the min_trading_qty of this LotSizeFilter.


        :param min_trading_qty: The min_trading_qty of this LotSizeFilter.  # noqa: E501
        :type: object
        """

        self._min_trading_qty = min_trading_qty

    @property
    def max_trading_qty(self):
        """Gets the max_trading_qty of this LotSizeFilter.  # noqa: E501


        :return: The max_trading_qty of this LotSizeFilter.  # noqa: E501
        :rtype: object
        """
        return self._max_trading_qty

    @max_trading_qty.setter
    def max_trading_qty(self, max_trading_qty):
        """Sets the max_trading_qty of this LotSizeFilter.


        :param max_trading_qty: The max_trading_qty of this LotSizeFilter.  # noqa: E501
        :type: object
        """

        self._max_trading_qty = max_trading_qty

    @property
    def qty_step(self):
        """Gets the qty_step of this LotSizeFilter.  # noqa: E501


        :return: The qty_step of this LotSizeFilter.  # noqa: E501
        :rtype: object
        """
        return self._qty_step

    @qty_step.setter
    def qty_step(self, qty_step):
        """Sets the qty_step of this LotSizeFilter.


        :param qty_step: The qty_step of this LotSizeFilter.  # noqa: E501
        :type: object
        """

        self._qty_step = qty_step

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
        if issubclass(LotSizeFilter, dict):
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
        if not isinstance(other, LotSizeFilter):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
