const qs = require('qs')
const cryptojs = require('crypto-js')

var apiKey = "";
var secret = "";
var timestamp = Date.now();
var params = {
	"order_id":"876b0ac1-bafe-4110-b404-6a7c8211a6d9",
	"symbol":"BTCUSD",
	"timestamp":timestamp,
	"api_key" : apiKey,
};

console.log(getSignature(params, secret));

function getSignature(params, secret) {
  const payload = qs.stringify(params, { sort: (a, b) => a.localeCompare(b) })
  return cryptojs.HmacSHA256(payload, secret).toString(cryptojs.enc.Hex)
}

