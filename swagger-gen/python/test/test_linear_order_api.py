# coding: utf-8

"""
    Bybit API

    ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]    # noqa: E501

    OpenAPI spec version: 0.2.9
    Contact: support@bybit.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import unittest

import swagger_client
from swagger_client.api.linear_order_api import LinearOrderApi  # noqa: E501
from swagger_client.rest import ApiException


class TestLinearOrderApi(unittest.TestCase):
    """LinearOrderApi unit test stubs"""

    def setUp(self):
        self.api = swagger_client.api.linear_order_api.LinearOrderApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_linear_order_cancel(self):
        """Test case for linear_order_cancel

        Cancel Active Order  # noqa: E501
        """
        pass

    def test_linear_order_cancel_all(self):
        """Test case for linear_order_cancel_all

        Cancel all active orders.  # noqa: E501
        """
        pass

    def test_linear_order_get_orders(self):
        """Test case for linear_order_get_orders

        Get linear Active Orders  # noqa: E501
        """
        pass

    def test_linear_order_new(self):
        """Test case for linear_order_new

        Create Active Order  # noqa: E501
        """
        pass

    def test_linear_order_query(self):
        """Test case for linear_order_query

        Get Active Orders(real-time)  # noqa: E501
        """
        pass

    def test_linear_order_replace(self):
        """Test case for linear_order_replace

        Replace Active Order  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
