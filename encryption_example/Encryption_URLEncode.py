#This is for the requests that contain special characters in the arguments and the query string is with the URL
import hashlib
import hmac
import json
import requests
import urllib3
import time
from urllib.parse import quote_plus 
def create(apiKey,secretKey):
    params = {
        "symbol":"BTCUSD",
        "cursor":"YcB2Mz1+avG8vL/TodqA923GQSC5/+SEzivw7aLT6eBjGCtOGRUsPIMtwPH5+5Eh",
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
    hash = hmac.new(secretKey, sign.encode("utf-8"), hashlib.sha256)
    signature = hash.hexdigest()
    sign_real = {
        "sign": signature
    }
    qs_urlencoded=''
    for key in sorted(params.keys()):
        v = params[key]
        if isinstance(params[key], bool):
            if params[key]:
                v = 'true'
            else :
                v = 'false'
        qs_urlencoded += key + '=' + quote_plus(v) + '&'
    qs_urlencoded = qs_urlencoded[:-1]
    query_string=qs_urlencoded+'&sign='+signature
    url = 'https://api-testnet.bybit.com/v2/private/stop-order/list?'
    #headers = {"Content-Type": "application/x-www-form-urlencoded"} # If you put the parameter query string into request body, you must specify this one
    #headers = {"Content-Type": "application/json"} # If you put the parameter query string into request body, you must specify this one
    body = dict(params,**sign_real)
    urllib3.disable_warnings()
    s = requests.session()
    s.keep_alive = False
    for x in range(1):
        #response = requests.post(url, data=json.dumps(body), headers=headers,verify=False) #wrong way
        #response = requests.post(url, data=query_string, headers=headers,verify=False) # You must specify "Content-Type" to "application/x-www-form-urlencoded" if you put query string into request body
        response = requests.get(url+query_string, verify=False)
        print(response.text)
def main():
    apiKey = ""
    secret = b""
    create(apiKey, secret)
if __name__ == '__main__':
    main()
