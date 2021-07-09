package example;/*
package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiException;
import io.swagger.client.BybitApiClient;
import io.swagger.client.api.USDTOrderApi;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Map;


*/
/**
 * private API tests example for OrderApi
 * Author: sam.wang
 * Modification date: May 14, 2021
 *//*


public class USDTOrderApiTest {
    private String api_key = "Your Apikey";
    private String secret = "Your secret";
    private BybitApiClient apiClient = new BybitApiClient(api_key, secret);
    private USDTOrderApi api = new USDTOrderApi(apiClient);
    private String orderId;
    private String symbol = "BTCUSDT";


    */
/**
     * Create order
     *//*

    @Test
    public void orderNewV2Test() throws ApiException {
        String side = "Buy";
        String orderType = "Limit";
        BigDecimal qty = new BigDecimal(0.001);
        Double price = 31000D;
        String timeInForce = "GoodTillCancel";
        Boolean reduceOnly = false;
        Boolean closeOnTrigger = false;
        Double takeProfit = null;
        Double stopLoss = null;
        String orderLinkId = null;
        String trailingStop = null;
        //create order
        Object response = api.orderNewV2(side, symbol, orderType, qty, timeInForce, price, takeProfit, stopLoss,
                reduceOnly, closeOnTrigger, orderLinkId, trailingStop);

        System.out.println("Create order ——->>>>>>> result= " + JSON.toJSON(response).toString());

        Map<String, Object> resultJson = JSON.parseObject(JSON.toJSON(response).toString());
        String responseOrderId = "";
        if (resultJson != null) {
            String responseStatus = resultJson.get("ret_msg").toString();
            System.out.println("responseStatus = " + responseStatus);
            for (String key : resultJson.keySet()) {
                if (key.equals("result")) {
                    Map<String, String> result = (Map<String, String>) resultJson.get(key);
                    if (!result.get("order_id").equals("")) {
                        responseOrderId = result.get("order_id");
                    }
                }
            }

            if (responseStatus.equals("OK") && responseOrderId != null && !responseOrderId.equals("")) {
                orderId = responseOrderId;
                System.out.println("orderId = " + orderId);
                try {
                    // Wait 5000 milliseconds
                    new Thread().sleep(5000);

                    //update order
                    orderReplaceTestDemo(orderId,symbol,new BigDecimal(0.004));

                    new Thread().sleep(5000);
                    //cancel order
                    orderCancelTest(orderId, symbol);

                } catch (Exception e) {
                    e.printStackTrace();
                }

            }

        }

    }

    */
/**
     * update order
     * @param orderId
     * @param symbol
     * @param pRQty
     * @throws ApiException
     *//*

    public void orderReplaceTestDemo(String orderId,String symbol,BigDecimal pRQty) throws ApiException {
        Object response = api.myOrderReplace(orderId, symbol,pRQty);
        System.out.println("update order result = "+response.toString());

    }

    */
/**
     * cancel order
     * @param orderId
     * @param symbol
     * @throws ApiException
     *//*

    public void orderCancelTest(String orderId, String symbol) throws ApiException {
        Object response = api.orderCancelV2(orderId, symbol, null);
        System.out.println("Cancel Order ——->>> result= " + JSON.toJSON(response).toString());

    }




    */
/**
     *
     * cancel all orders
     *//*


    @Test
    public void orderCancelAllTest() throws ApiException {
        String symbol = "BTCUSDT";
        Object response = api.orderCancelAll(symbol);
        System.out.println("cancel all orders result = "+response.toString());

    }




    public void orderGetOrdersTestDemo(String orderId, String symbol) throws ApiException {
        String orderLinkId = null;
        String order = null;
        BigDecimal page = new BigDecimal(1);
        BigDecimal limit = new BigDecimal(20);
        String orderStatus = null;
        Object response = api.orderGetOrders(orderId, orderLinkId, symbol, order, page, limit, orderStatus);
        System.out.println("Entrusted order query results ——->>> result= " + JSON.toJSON(response).toString());

    }



    public void orderQueryTestDemo(String orderId, String symbol) throws ApiException {
        Object response = api.orderQuery(orderId, symbol);
        System.out.println("Entrusted order query results2 ——->>> result2 = " + JSON.toJSON(response).toString());

    }

}









*/
