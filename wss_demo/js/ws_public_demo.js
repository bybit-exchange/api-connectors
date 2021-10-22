var url = require('url');
var WebSocket = require('ws');
var crypto = require('crypto');
var endpoint = "wss://stream-testnet.bybit.com/realtime"
console.log('attempting to connect to WebSocket %j', endpoint);
var client = new WebSocket(endpoint);
client.on('open', function () {
	console.log('"open" event!');
	console.log('WebSocket Client Connected');
	setInterval(()=>{client.ping()}, 30000);
	client.ping();
	client.send(JSON.stringify({"op": "subscribe", "args": ["orderBook_200.100ms.BTCUSD"]}));
});

client.on('message', function (data) {
	console.log('"message" event! %j', data);
});
client.on('ping', function (data, flags) {
	console.log("ping received");
});
client.on('pong', function (data, flags) {
	console.log("pong received");
});
