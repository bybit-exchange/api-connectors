package com.trading.websocket.test;

import com.alibaba.fastjson.JSON;
import io.netty.bootstrap.Bootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.codec.http.EmptyHttpHeaders;
import io.netty.handler.codec.http.HttpClientCodec;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.websocketx.CloseWebSocketFrame;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketClientHandshakerFactory;
import io.netty.handler.codec.http.websocketx.WebSocketVersion;
import io.netty.handler.ssl.SslContext;
import io.netty.handler.ssl.SslContextBuilder;
import io.netty.handler.ssl.util.InsecureTrustManagerFactory;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.net.URI;
import java.nio.charset.StandardCharsets;

/**
 * @author god.yang
 * @date 2021/9/27
 */
public class WebSocketClient {
    private static final EventLoopGroup group = new NioEventLoopGroup();
    private final URI uri;
    private Channel ch;

    public WebSocketClient(final String uri) {
        this.uri = URI.create(uri);
    }

    public static void main(String[] args) throws Exception {
        String address = "wss://stream.bybit.com/trade/option/usdc/private/v1";
        String apiKey = "your apiKey";
        String apiSecret = "your apiSecret";
        String[] topics = new String[]{"user.option.order","user.option.orderHistory", "user.option.tradeHistory"};
        WebSocketClient webSocketClient = new WebSocketClient(address);
        webSocketClient.open();
        Long timestamp = 2796531840000L;
        String sign = createSign(apiKey, timestamp, apiSecret);
        String authStr = "{\"id\":\"signAuth_request_id\",\"method\":\"public/signAuth\",\"params\":{\"sign\":\"" + sign + "\",\"apiKey\":\"" + apiKey + "\",\"timestamp\":" + timestamp + "}}";
        webSocketClient.sendMessage(authStr);
        Thread.sleep(100);
        String subStr = "{\"method\":\"private/subscribe\",\"id\":\"requestId\",\"params\":{\"channels\":" + JSON.toJSONString(topics) + "}}";
        webSocketClient.sendMessage(subStr);
    }

    public static String createSign(String apiKey, Long timestamp, String apiSecret) throws Exception {
        String url = "GET/realtime" + timestamp;
        Mac hmacSHA256 = Mac.getInstance("HmacSHA256");
        SecretKeySpec secret_key = new SecretKeySpec(apiSecret.getBytes(StandardCharsets.UTF_8), "HmacSHA256");
        hmacSHA256.init(secret_key);
        byte[] bytes = hmacSHA256.doFinal(url.getBytes(StandardCharsets.UTF_8));
        String sign = bytesToHexString(bytes);
        return sign;
    }

    public static String bytesToHexString(byte[] src) {
        StringBuilder stringBuilder = new StringBuilder();
        if (src == null || src.length <= 0) {
            return null;
        }
        for (int i = 0; i < src.length; i++) {
            int v = src[i] & 0xFF;
            String hv = Integer.toHexString(v);
            if (hv.length() < 2) {
                stringBuilder.append(0);
            }
            stringBuilder.append(hv);
        }
        return stringBuilder.toString();
    }

    public void open() throws Exception {
        Bootstrap b = new Bootstrap();
        String protocol = uri.getScheme();
        Integer port;
        final SslContext sslCtx;
        if (uri.getPort() <= 0) {
            if (protocol.equals("wss")) {
                port = 443;
                sslCtx = SslContextBuilder.forClient().trustManager(InsecureTrustManagerFactory.INSTANCE).build();
            } else {
                port = 80;
                sslCtx = null;
            }
        } else {
            port = uri.getPort();
            sslCtx = null;
        }

        final WebSocketClientHandler handler =
                new WebSocketClientHandler(
                        WebSocketClientHandshakerFactory.newHandshaker(
                                uri, WebSocketVersion.V13, null, false, EmptyHttpHeaders.INSTANCE, 1280000)
                );

        b.group(group)
                .channel(NioSocketChannel.class)
                .handler(new ChannelInitializer<SocketChannel>() {
                    @Override
                    public void initChannel(SocketChannel ch) throws Exception {
                        ChannelPipeline pipeline = ch.pipeline();
                        if (sslCtx != null) {
                            pipeline.addLast(sslCtx.newHandler(ch.alloc(), uri.getHost(), port));
                        }
                        pipeline.addLast("http-codec", new HttpClientCodec());
                        pipeline.addLast("aggregator", new HttpObjectAggregator(65536));
                        pipeline.addLast("ws-handler", handler);
                    }
                });

        ch = b.connect(uri.getHost(), port).sync().channel();
        handler.handshakeFuture().sync();
        System.out.println("###########");
    }

    public void close() throws InterruptedException {
        ch.writeAndFlush(new CloseWebSocketFrame());
        ch.closeFuture().sync();
    }

    public void sendMessage(final String text) {
        ch.writeAndFlush(new TextWebSocketFrame(text));
    }
}
