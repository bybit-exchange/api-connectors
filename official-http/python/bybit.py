#!/usr/bin/env python

from bravado.client import SwaggerClient
from bravado.requests_client import RequestsClient
from BybitAuthenticator import APIKeyAuthenticator
from bravado.swagger_model import load_file

import json


def bybit(test=True, config=None, api_key=None, api_secret=None):
    if test:
        host = 'https://api-testnet.bybit.com'
    else:
        host = 'https://api.bybit.com'

    if config is None:
        # See full config options at http://bravado.readthedocs.io/en/latest/configuration.html
        config = {
            # Don't use models (Python classes) instead of dicts for #/definitions/{models}
            'use_models': False,
            # bravado has some issues with nullable fields
            'validate_responses': False,
            # Returns response in 2-tuple of (body, response); if False, will only return body
            'also_return_response': True,
            "host": host
        }

    api_key = api_key
    api_secret = api_secret

    spec_uri = host + "/doc/swagger/v_0_2_6.txt"

    if api_key and api_secret:
        request_client = RequestsClient()
        request_client.authenticator = APIKeyAuthenticator(host, api_key, api_secret)

        return SwaggerClient.from_url(spec_uri, config=config, http_client=request_client)

    else:

        return SwaggerClient.from_url(spec_uri, config=config)
