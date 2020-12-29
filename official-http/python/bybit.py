#!/usr/bin/env python

from urllib.parse import urljoin
from bravado.client import SwaggerClient
from bravado.requests_client import RequestsClient
from BybitAuthenticator import APIKeyAuthenticator
from bravado.swagger_model import load_file

import json


TESTNET = 'https://api-testnet.bybit.com'
MAINNET = 'https://api.bybit.com'


def bybit(test=True, config=None, api_key=None, api_secret=None):
    host = TESTNET if test else MAINNET

    config = {
        # Don't use models (Python classes) instead of dicts for #/definitions/{models}
        'use_models': False,
        # bravado has some issues with nullable fields
        'validate_responses': False,
        # Returns response in 2-tuple of (body, response); if False, will only return body
        'also_return_response': True,
        'host': host
    } if not config else config
    
    spec_uri = urljoin(host, "/doc/swagger/v_0_2_10.txt")

    if api_key and api_secret:
        request_client = RequestsClient()
        request_client.authenticator = APIKeyAuthenticator(host, api_key, api_secret)

        return SwaggerClient.from_url(spec_uri, config=config, http_client=request_client)

    else:

        return SwaggerClient.from_url(spec_uri, config=config)

