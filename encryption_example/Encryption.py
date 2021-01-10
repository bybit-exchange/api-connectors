import hashlib
import hmac
import json
import requests
import urllib3
def create(apiKey,secretKey,side,order_type,qty,price):
    params = {
        "side": side,
        "symbol": "BTCUSD",
        "order_type": order_type,
        "qty": qty,
        "price": price,
        "time_in_force": "GoodTillCancel",
        "api_key": apiKey,
        "timestamp": "1542782900000",
        "recv_window": "93800000000",
        "reduce_only":False,
    }
    sign = ''
    for key in sorted(params.keys()):
        v = params[key]
        if isinstance(params[key], bool):
            if params[key]:
                v = 'true'
            else :
                v = 'false'
        sign += key + '=' + v + '&'
    sign = sign[:-1]
    print(sign)
    hash = hmac.new(secretKey, sign.encode("utf-8"), hashlib.sha256)
    signature = hash.hexdigest()
    sign_real = {
        "sign": signature
    }
    url = 'https://api.bybit.com/v2/private/order/create'
    headers = {"Content-Type": "application/json"}
    body = dict(params,**sign_real)
    urllib3.disable_warnings()
    s = requests.session()
    s.keep_alive = False
    for x in range(1):
        response = requests.post(url, data=json.dumps(body), headers=headers,verify=False)
        print(response)
        print(response.text)
def main():
    apiKey = ""
    secret = b""
    create(apiKey, secret,'Buy','Limit','100','8700')
if __name__ == '__main__':
    main()