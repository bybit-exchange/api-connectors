package com.bybit;

import javax.websocket.*;

@ClientEndpoint
public class BybitWebsocket {

    @OnOpen
    public void onOpen(Session session) {
        System.out.println("Connected to endpoint: " + session.getBasicRemote());
        try {
            Client.session=session;
            System.out.println(Client.session);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @OnMessage
    public void processMessage(String message) {
        System.out.println("Received message in client: " + message);
    }

    @OnError
    public void processError(Throwable t) {
        t.printStackTrace();
    }


}