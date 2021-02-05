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


class LeverageInfo(object):
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
        'leverage': 'float'
    }

    attribute_map = {
        'leverage': 'leverage'
    }

    def __init__(self, leverage=None):  # noqa: E501
        """LeverageInfo - a model defined in Swagger"""  # noqa: E501

        self._leverage = None
        self.discriminator = None

        if leverage is not None:
            self.leverage = leverage

    @property
    def leverage(self):
        """Gets the leverage of this LeverageInfo.  # noqa: E501


        :return: The leverage of this LeverageInfo.  # noqa: E501
        :rtype: float
        """
        return self._leverage

    @leverage.setter
    def leverage(self, leverage):
        """Sets the leverage of this LeverageInfo.


        :param leverage: The leverage of this LeverageInfo.  # noqa: E501
        :type: float
        """

        self._leverage = leverage

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
        if issubclass(LeverageInfo, dict):
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
        if not isinstance(other, LeverageInfo):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
