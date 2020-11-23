# coding: utf-8

"""
    Bybit API

    ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]    # noqa: E501

    OpenAPI spec version: 0.2.10
    Contact: support@bybit.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class LinearMarketApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def linear_market_trading(self, symbol, **kwargs):  # noqa: E501
        """Get recent trades  # noqa: E501

        This will get recent trades  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.linear_market_trading(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type. (required)
        :param str limit: Contract type.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.linear_market_trading_with_http_info(symbol, **kwargs)  # noqa: E501
        else:
            (data) = self.linear_market_trading_with_http_info(symbol, **kwargs)  # noqa: E501
            return data

    def linear_market_trading_with_http_info(self, symbol, **kwargs):  # noqa: E501
        """Get recent trades  # noqa: E501

        This will get recent trades  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.linear_market_trading_with_http_info(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type. (required)
        :param str limit: Contract type.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['symbol', 'limit']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method linear_market_trading" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'symbol' is set
        if ('symbol' not in params or
                params['symbol'] is None):
            raise ValueError("Missing the required parameter `symbol` when calling `linear_market_trading`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'symbol' in params:
            query_params.append(('symbol', params['symbol']))  # noqa: E501
        if 'limit' in params:
            query_params.append(('limit', params['limit']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json', 'application/x-www-form-urlencoded'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey', 'apiSignature', 'timestamp']  # noqa: E501

        return self.api_client.call_api(
            '/public/linear/recent-trading-records', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
