package com.trading.websocket.test;

import io.netty.channel.*;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.websocketx.*;
import io.netty.util.CharsetUtil;
import io.netty.util.concurrent.ScheduledFuture;

import java.util.concurrent.TimeUnit;

/**
 * @author god.yang
 * @date 2021/9/27
 */
public class WebSocketClientHandler extends SimpleChannelInboundHandler<Object> {
    private final WebSocketClientHandshaker handshaker;
    private ChannelPromise handshakeFuture;
    ScheduledFuture<?> heartScheduledFuture;


    public ScheduledFuture getHeartScheduledFuture() {
        return heartScheduledFuture;
    }

    public WebSocketClientHandler(final WebSocketClientHandshaker handshaker) {
        this.handshaker = handshaker;

    }

    public ChannelFuture handshakeFuture() {
        return handshakeFuture;
    }

    @Override
    public void handlerAdded(final ChannelHandlerContext ctx) throws Exception {
        handshakeFuture = ctx.newPromise();
    }

    @Override
    public void channelActive(final ChannelHandlerContext ctx) throws Exception {
        handshaker.handshake(ctx.channel());
        heartScheduledFuture = ctx.channel().eventLoop().scheduleWithFixedDelay(() -> {
            ctx.writeAndFlush(new TextWebSocketFrame("ping"));
        }, 2, 3, TimeUnit.SECONDS);
    }

    @Override
    public void channelInactive(final ChannelHandlerContext ctx) throws Exception {
        heartScheduledFuture.cancel(true);
    }

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, Object msg) throws Exception {
        final Channel ch = ctx.channel();
        if (!handshaker.isHandshakeComplete()) {
            handshaker.finishHandshake(ch, (FullHttpResponse) msg);
            handshakeFuture.setSuccess();
            return;
        }

        if (msg instanceof FullHttpResponse) {
            final FullHttpResponse response = (FullHttpResponse) msg;
            throw new Exception("Unexpected FullHttpResponse (getStatus=" + response.status() + ", content="
                    + response.content().toString(CharsetUtil.UTF_8) + ')');
        }

        final WebSocketFrame frame = (WebSocketFrame) msg;
        if (frame instanceof TextWebSocketFrame textWebSocketFrame) {
            handData(textWebSocketFrame.text());
        } else if (frame instanceof PongWebSocketFrame) {

        } else if (frame instanceof CloseWebSocketFrame) {
            ch.close();
        } else if (frame instanceof BinaryWebSocketFrame) {
            System.out.println(frame.content().toString());
        }

    }

    @Override
    public void exceptionCaught(final ChannelHandlerContext ctx, final Throwable cause) throws Exception {
        cause.printStackTrace();

        if (!handshakeFuture.isDone()) {
            handshakeFuture.setFailure(cause);
        }

        ctx.close();
    }


    private void handData(String data) {
        System.out.println(data);
    }
}
