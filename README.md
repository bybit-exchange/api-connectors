# NOTICE: the api-connectors in this repository are out-of-date. For recommendations of alternatives, please come to our [API Telegram group](https://t.me/BybitAPI).

# api-connectors
Libraries for connecting to the Bybit API. https://bybit-exchange.github.io/docs/inverse

# Official Examples

### Encryption
* [Cpp](/encryption_example/Encryption.cpp)
* [C#](/encryption_example/Encryption.cs)
* [Go](/encryption_example/Encryption.go)
* [PHP](/encryption_example/Encryption.php)
* [Python](/encryption_example/Encryption.py)

#### HTTP

* [Python](/official-http/python)
* [Cpp](/official-http/cpp)

#### Websockets

* [Python](/official-ws/python)
* [Java](/official-ws/Java)
* [go](/official-ws/go)

# Auto-Generated Languages

Clients:
* [Android](/swagger-gen/android)
* [Clojure](/swagger-gen/clojure)
* [C#](/swagger-gen/csharp)
* [Go](/swagger-gen/go)
* [Java](/swagger-gen/java)
* [Cpp](/swagger-gen/cpprest)
* [JavaScript](/swagger-gen/javascript)
* [Objective C](/swagger-gen/objc)
* [PHP](/swagger-gen/php)
* [Python](/swagger-gen/python)
* [Ruby](/swagger-gen/ruby)
* [Scala](/swagger-gen/scala)
* [Swift](/swagger-gen/swift4)

*Note* : The auto-generated code do not contains signature algorithm, you can refer to our example to generate the `sign` value. In Java SDKs, you should do like this:

```js
ApiKeyAuth apiKey = (ApiKeyAuth)client.getAuthentication("apiKey");
ApiKeyAuth sign = (ApiKeyAuth)client.getAuthentication("apiSignature");
ApiKeyAuth timestamp = (ApiKeyAuth)client.getAuthentication("timestamp";
apiKey.setApiKey("YOUR API KEY");
timestamp.setApiKey(String.valueOf(System.currentTimeMillis()/1000));
String signature = generateSign(paramStr);
sign.setApiKey(signature);
```

`generateSign` is a method that you need to implement yourself!
