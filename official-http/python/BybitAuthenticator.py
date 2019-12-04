import urllib.parse
import time
import hashlib
import hmac
from bravado.requests_client import Authenticator


class APIKeyAuthenticator(Authenticator):
    """?api_key authenticator.
    This authenticator adds Bybit API key support via header.
    :param host: Host to authenticate for.
    :param api_key: API key.
    :param api_secret: API secret.
    """

    def __init__(self, host, api_key, api_secret):
        super(APIKeyAuthenticator, self).__init__(host)
        self.api_key = api_key
        self.api_secret = api_secret

    # Forces this to apply to all requests.
    def matches(self, url):
        if "swagger.json" in url:
            return False
        return True

    def apply(self, r):
        #add user-agent
        r.headers["User-Agent"] = "Official-SDKs"
        #add auth info
        expires = str(int(round(time.time())-1))+"000"
        r.params['timestamp'] = expires
        r.params['api_key'] = self.api_key
        # print(json.dumps(r.data,  separators=(',',':')))
        r.params['sign'] = self.generate_signature(r)
        return r

    def generate_signature(self, req):
        """Generate a request signature."""
        _dict = req.params
        if (type(req.data).__name__=='dict'):
            for k, v in req.data.items():
                _dict[k] = v
        _val = '&'.join([str(k)+"="+str(v) for k, v in sorted(_dict.items()) if (k != 'sign') and (v is not None)])
        return str(hmac.new(bytes(self.api_secret, "utf-8"), bytes(_val, "utf-8"), digestmod="sha256").hexdigest())

