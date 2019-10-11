# JAVA Adapter for Bybit Websocket API

This is a sample adapter for receiving realtime data from the Bybit API. You can get more infomation in [the documention of websocket-api](https://github.com/bybit-exchange/bybit-official-api-docs/blob/master/en/websocket.md)

# Marvn dependency requirement

To run this demo, you should make sure the following dependencies are in your pom.xml

```
<dependency>
    <groupId>javax.websocket</groupId>
    <artifactId>javax.websocket-client-api</artifactId>
    <version>1.1</version>
</dependency>
<dependency>
    <groupId>org.glassfish.tyrus.bundles</groupId>
    <artifactId>tyrus-standalone-client</artifactId>
    <version>1.9</version>
</dependency>
<dependency>
    <groupId>org.json</groupId>
    <artifactId>json</artifactId>
    <version>20160810</version>
</dependency>
```