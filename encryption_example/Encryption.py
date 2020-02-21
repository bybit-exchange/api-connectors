import hmac


def get_signature(secret: str, req_params: dict):
    """
    :param secret    : str, your api-secret
    :param req_params: dict, your request params
    :return: signature
    """
    _val = '&'.join([str(k)+"="+str(v) for k, v in sorted(req_params.items()) if (k != 'sign') and (v is not None)])
    # print(_val)
    return str(hmac.new(bytes(secret, "utf-8"), bytes(_val, "utf-8"), digestmod="sha256").hexdigest())


if __name__ == "__main__":
    secret = "t7T0YlFnYXk0Fx3JswQsDrViLg1Gh3DUU5Mr"
    params = {}
    params['api_key'] = "B2Rou0PLPpGqcU0Vu2"
    params['leverage'] = 100
    params['symbol'] = "BTCUSD"
    params['timestamp'] = "1542434791000"
    print(get_signature(secret, params))