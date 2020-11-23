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


class ExecutionApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def execution_get_trades(self, **kwargs):  # noqa: E501
        """Get user’s trade records.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.execution_get_trades(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str order_id: OrderID. If not provided, will return user’s trading records.
        :param str symbol: Contract type. If order_id not provided, symbol is required.
        :param str start_time: Start timestamp point for result.
        :param str page: Page. Default getting first page data.
        :param str limit: Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.execution_get_trades_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.execution_get_trades_with_http_info(**kwargs)  # noqa: E501
            return data

    def execution_get_trades_with_http_info(self, **kwargs):  # noqa: E501
        """Get user’s trade records.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.execution_get_trades_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str order_id: OrderID. If not provided, will return user’s trading records.
        :param str symbol: Contract type. If order_id not provided, symbol is required.
        :param str start_time: Start timestamp point for result.
        :param str page: Page. Default getting first page data.
        :param str limit: Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['order_id', 'symbol', 'start_time', 'page', 'limit']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method execution_get_trades" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'order_id' in params:
            query_params.append(('order_id', params['order_id']))  # noqa: E501
        if 'symbol' in params:
            query_params.append(('symbol', params['symbol']))  # noqa: E501
        if 'start_time' in params:
            query_params.append(('start_time', params['start_time']))  # noqa: E501
        if 'page' in params:
            query_params.append(('page', params['page']))  # noqa: E501
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
            '/v2/private/execution/list', 'GET',
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

    def positions_close_pnl_records(self, symbol, **kwargs):  # noqa: E501
        """Get user's closed profit and loss records  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_close_pnl_records(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type (required)
        :param int start_time: Start timestamp point for result, in second
        :param int end_time: End timestamp point for result, in second
        :param str exec_type: Execution type
        :param int page: Page. By default, gets first page of data. Maximum of 50 pages
        :param int limit: Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.positions_close_pnl_records_with_http_info(symbol, **kwargs)  # noqa: E501
        else:
            (data) = self.positions_close_pnl_records_with_http_info(symbol, **kwargs)  # noqa: E501
            return data

    def positions_close_pnl_records_with_http_info(self, symbol, **kwargs):  # noqa: E501
        """Get user's closed profit and loss records  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_close_pnl_records_with_http_info(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type (required)
        :param int start_time: Start timestamp point for result, in second
        :param int end_time: End timestamp point for result, in second
        :param str exec_type: Execution type
        :param int page: Page. By default, gets first page of data. Maximum of 50 pages
        :param int limit: Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['symbol', 'start_time', 'end_time', 'exec_type', 'page', 'limit']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method positions_close_pnl_records" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'symbol' is set
        if ('symbol' not in params or
                params['symbol'] is None):
            raise ValueError("Missing the required parameter `symbol` when calling `positions_close_pnl_records`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'symbol' in params:
            query_params.append(('symbol', params['symbol']))  # noqa: E501
        if 'start_time' in params:
            query_params.append(('start_time', params['start_time']))  # noqa: E501
        if 'end_time' in params:
            query_params.append(('end_time', params['end_time']))  # noqa: E501
        if 'exec_type' in params:
            query_params.append(('exec_type', params['exec_type']))  # noqa: E501
        if 'page' in params:
            query_params.append(('page', params['page']))  # noqa: E501
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
            '/v2/private/trade/closed-pnl/list', 'GET',
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
