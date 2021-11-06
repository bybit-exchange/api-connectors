const crypto = require('crypto');

var apiKey = "";
var secret = "";
var timestamp = Date.now();
var params = {
	"order_id":"876b0ac1-bafe-4110-b404-6a7c8211a6d9",
	"symbol":"BTCUSD",
	"timestamp":timestamp,
	"api_key" : apiKey,
};

var signature = getSignature(params, secret);

console.log("signature of params: ");
console.log(signature);
console.log();

console.log("ordered params - querystring: ");
console.log(getQueryStringSigned(params, secret));
console.log();

console.log("ordered params - serialized to JSON for POST: ");
console.log(getPostDataSigned(params, secret));
console.log();

function getQueryStringSigned(parameters, secret) {
	const sign = getSignature(parameters, secret);
	const qs = getOrderedParams(params, secret) + "&sign=" + signature
	return qs;
}

function getPostDataSigned(parameters, secret) {
	const sign = getSignature(parameters, secret);

	parameters.sign = sign;

	return parameters;
}

function getSignature(parameters, secret) {
	let orderedParams = getOrderedParams(parameters);
	return crypto.createHmac('sha256', secret).update(orderedParams).digest('hex');
}

function getOrderedParams(parameters) {
	let orderedParams = "";
	Object.keys(parameters).sort().forEach(function(key) {
	  orderedParams += key + "=" + parameters[key] + "&";
	});
	orderedParams = orderedParams.substring(0, orderedParams.length - 1);

	return orderedParams;
}
