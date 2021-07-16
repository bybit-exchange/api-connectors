import hashlib
import hmac
import json
import requests
import urllib3
import time
def create(apiKey,secretKey,side,order_type,qty,price):
    params = {
        "side": side,
        "symbol": "BTCUSDT",
        "type": order_type,
        "qty": qty,
        "price": price,
        "timeInForce": "GTC",
        "api_key": apiKey,
        "timestamp": str(int(time.time()*1000))
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
    query_string=sign+'&sign='+signature
    url = 'https://api-testnet.bybit.com/spot/v1/order?'
    #headers = {"Content-Type": "application/json"}
    #headers = {"Content-Type": "application/x-www-form-urlencoded"}
    body = dict(params,**sign_real)
    urllib3.disable_warnings()
    s = requests.session()
    s.keep_alive = False
    for x in range(1):
        #response = requests.post(url, data=json.dumps(body), headers=headers,verify=False)
        #response = requests.post(url, data=query_string, headers=headers,verify=False)
        response = requests.post(url+query_string, verify=False)
        #response = requests.post(url+query_string, headers=headers,verify=False)
        #response = requests.post(url, headers=headers,verify=False)
        #print(response)
        print(response.text)
def main():
    apiKey = "U7OUiyDdJPVeU7fcxn"
    secret = b"6o2s1eOnkViVLfyg3zii1k0kf56j5aBNkLRn"
    create(apiKey, secret,'Buy','Limit','0.001','10000')
if __name__ == '__main__':
    main()
