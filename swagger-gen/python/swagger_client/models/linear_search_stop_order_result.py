# coding: utf-8

"""
    Bybit API

    ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]    # noqa: E501

    OpenAPI spec version: 0.2.10
    Contact: support@bybit.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six


class LinearSearchStopOrderResult(object):
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
        'stop_order_id': 'str',
        'user_id': 'int',
        'side': 'str',
        'symbol': 'str',
        'order_type': 'str',
        'price': 'float',
        'qty': 'float',
        'time_in_force': 'str',
        'order_status': 'str',
        'trigger_price': 'float',
        'order_link_id': 'str',
        'created_at': 'str',
        'updated_at': 'str',
        'take_profit': 'float',
        'stop_loss': 'float',
        'tp_trigger_by': 'str',
        'sl_trigger_by': 'str'
    }

    attribute_map = {
        'stop_order_id': 'stop_order_id',
        'user_id': 'user_id',
        'side': 'side',
        'symbol': 'symbol',
        'order_type': 'order_type',
        'price': 'price',
        'qty': 'qty',
        'time_in_force': 'time_in_force',
        'order_status': 'order_status',
        'trigger_price': 'trigger_price',
        'order_link_id': 'order_link_id',
        'created_at': 'created_at',
        'updated_at': 'updated_at',
        'take_profit': 'take_profit',
        'stop_loss': 'stop_loss',
        'tp_trigger_by': 'tp_trigger_by',
        'sl_trigger_by': 'sl_trigger_by'
    }

    def __init__(self, stop_order_id=None, user_id=None, side=None, symbol=None, order_type=None, price=None, qty=None, time_in_force=None, order_status=None, trigger_price=None, order_link_id=None, created_at=None, updated_at=None, take_profit=None, stop_loss=None, tp_trigger_by=None, sl_trigger_by=None):  # noqa: E501
        """LinearSearchStopOrderResult - a model defined in Swagger"""  # noqa: E501

        self._stop_order_id = None
        self._user_id = None
        self._side = None
        self._symbol = None
        self._order_type = None
        self._price = None
        self._qty = None
        self._time_in_force = None
        self._order_status = None
        self._trigger_price = None
        self._order_link_id = None
        self._created_at = None
        self._updated_at = None
        self._take_profit = None
        self._stop_loss = None
        self._tp_trigger_by = None
        self._sl_trigger_by = None
        self.discriminator = None

        if stop_order_id is not None:
            self.stop_order_id = stop_order_id
        if user_id is not None:
            self.user_id = user_id
        if side is not None:
            self.side = side
        if symbol is not None:
            self.symbol = symbol
        if order_type is not None:
            self.order_type = order_type
        if price is not None:
            self.price = price
        if qty is not None:
            self.qty = qty
        if time_in_force is not None:
            self.time_in_force = time_in_force
        if order_status is not None:
            self.order_status = order_status
        if trigger_price is not None:
            self.trigger_price = trigger_price
        if order_link_id is not None:
            self.order_link_id = order_link_id
        if created_at is not None:
            self.created_at = created_at
        if updated_at is not None:
            self.updated_at = updated_at
        if take_profit is not None:
            self.take_profit = take_profit
        if stop_loss is not None:
            self.stop_loss = stop_loss
        if tp_trigger_by is not None:
            self.tp_trigger_by = tp_trigger_by
        if sl_trigger_by is not None:
            self.sl_trigger_by = sl_trigger_by

    @property
    def stop_order_id(self):
        """Gets the stop_order_id of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The stop_order_id of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._stop_order_id

    @stop_order_id.setter
    def stop_order_id(self, stop_order_id):
        """Sets the stop_order_id of this LinearSearchStopOrderResult.


        :param stop_order_id: The stop_order_id of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._stop_order_id = stop_order_id

    @property
    def user_id(self):
        """Gets the user_id of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The user_id of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: int
        """
        return self._user_id

    @user_id.setter
    def user_id(self, user_id):
        """Sets the user_id of this LinearSearchStopOrderResult.


        :param user_id: The user_id of this LinearSearchStopOrderResult.  # noqa: E501
        :type: int
        """

        self._user_id = user_id

    @property
    def side(self):
        """Gets the side of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The side of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._side

    @side.setter
    def side(self, side):
        """Sets the side of this LinearSearchStopOrderResult.


        :param side: The side of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._side = side

    @property
    def symbol(self):
        """Gets the symbol of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The symbol of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._symbol

    @symbol.setter
    def symbol(self, symbol):
        """Sets the symbol of this LinearSearchStopOrderResult.


        :param symbol: The symbol of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._symbol = symbol

    @property
    def order_type(self):
        """Gets the order_type of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The order_type of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._order_type

    @order_type.setter
    def order_type(self, order_type):
        """Sets the order_type of this LinearSearchStopOrderResult.


        :param order_type: The order_type of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._order_type = order_type

    @property
    def price(self):
        """Gets the price of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The price of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: float
        """
        return self._price

    @price.setter
    def price(self, price):
        """Sets the price of this LinearSearchStopOrderResult.


        :param price: The price of this LinearSearchStopOrderResult.  # noqa: E501
        :type: float
        """

        self._price = price

    @property
    def qty(self):
        """Gets the qty of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The qty of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: float
        """
        return self._qty

    @qty.setter
    def qty(self, qty):
        """Sets the qty of this LinearSearchStopOrderResult.


        :param qty: The qty of this LinearSearchStopOrderResult.  # noqa: E501
        :type: float
        """

        self._qty = qty

    @property
    def time_in_force(self):
        """Gets the time_in_force of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The time_in_force of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._time_in_force

    @time_in_force.setter
    def time_in_force(self, time_in_force):
        """Sets the time_in_force of this LinearSearchStopOrderResult.


        :param time_in_force: The time_in_force of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._time_in_force = time_in_force

    @property
    def order_status(self):
        """Gets the order_status of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The order_status of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._order_status

    @order_status.setter
    def order_status(self, order_status):
        """Sets the order_status of this LinearSearchStopOrderResult.


        :param order_status: The order_status of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._order_status = order_status

    @property
    def trigger_price(self):
        """Gets the trigger_price of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The trigger_price of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: float
        """
        return self._trigger_price

    @trigger_price.setter
    def trigger_price(self, trigger_price):
        """Sets the trigger_price of this LinearSearchStopOrderResult.


        :param trigger_price: The trigger_price of this LinearSearchStopOrderResult.  # noqa: E501
        :type: float
        """

        self._trigger_price = trigger_price

    @property
    def order_link_id(self):
        """Gets the order_link_id of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The order_link_id of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._order_link_id

    @order_link_id.setter
    def order_link_id(self, order_link_id):
        """Sets the order_link_id of this LinearSearchStopOrderResult.


        :param order_link_id: The order_link_id of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._order_link_id = order_link_id

    @property
    def created_at(self):
        """Gets the created_at of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The created_at of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._created_at

    @created_at.setter
    def created_at(self, created_at):
        """Sets the created_at of this LinearSearchStopOrderResult.


        :param created_at: The created_at of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._created_at = created_at

    @property
    def updated_at(self):
        """Gets the updated_at of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The updated_at of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._updated_at

    @updated_at.setter
    def updated_at(self, updated_at):
        """Sets the updated_at of this LinearSearchStopOrderResult.


        :param updated_at: The updated_at of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._updated_at = updated_at

    @property
    def take_profit(self):
        """Gets the take_profit of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The take_profit of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: float
        """
        return self._take_profit

    @take_profit.setter
    def take_profit(self, take_profit):
        """Sets the take_profit of this LinearSearchStopOrderResult.


        :param take_profit: The take_profit of this LinearSearchStopOrderResult.  # noqa: E501
        :type: float
        """

        self._take_profit = take_profit

    @property
    def stop_loss(self):
        """Gets the stop_loss of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The stop_loss of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: float
        """
        return self._stop_loss

    @stop_loss.setter
    def stop_loss(self, stop_loss):
        """Sets the stop_loss of this LinearSearchStopOrderResult.


        :param stop_loss: The stop_loss of this LinearSearchStopOrderResult.  # noqa: E501
        :type: float
        """

        self._stop_loss = stop_loss

    @property
    def tp_trigger_by(self):
        """Gets the tp_trigger_by of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The tp_trigger_by of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._tp_trigger_by

    @tp_trigger_by.setter
    def tp_trigger_by(self, tp_trigger_by):
        """Sets the tp_trigger_by of this LinearSearchStopOrderResult.


        :param tp_trigger_by: The tp_trigger_by of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._tp_trigger_by = tp_trigger_by

    @property
    def sl_trigger_by(self):
        """Gets the sl_trigger_by of this LinearSearchStopOrderResult.  # noqa: E501


        :return: The sl_trigger_by of this LinearSearchStopOrderResult.  # noqa: E501
        :rtype: str
        """
        return self._sl_trigger_by

    @sl_trigger_by.setter
    def sl_trigger_by(self, sl_trigger_by):
        """Sets the sl_trigger_by of this LinearSearchStopOrderResult.


        :param sl_trigger_by: The sl_trigger_by of this LinearSearchStopOrderResult.  # noqa: E501
        :type: str
        """

        self._sl_trigger_by = sl_trigger_by

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
        if issubclass(LinearSearchStopOrderResult, dict):
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
        if not isinstance(other, LinearSearchStopOrderResult):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
