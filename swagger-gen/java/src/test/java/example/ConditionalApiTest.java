package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.ConditionalApi;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Map;

/**
 * API tests for ConditionalApi
 * Author: sam.wang
 * Modification date: June 14, 2021
 */

@Ignore
public class ConditionalApiTest {

    private final static ConditionalApi api = new ConditionalApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your secret";

    private String stopOrderId;
    private String symbol = "BTCUSD";


    @BeforeClass
    public static void setUp() {
        // overwrite apiClient here
        ApiClient apiClient = new ApiClient();
        apiClient.setBasePath("https://api.bybit.com"); // https://api-testnet.bybit.com
        apiClient.setApiKey(api_key);
        apiClient.setSecret(secret);
        api.setApiClient(apiClient);
    }


    @Test
    public void conditionalNewTest() throws ApiException {
        String side = "Buy";
//        String symbol = "BTCUSD";
        String orderType = "Limit";
        String qty = "1";
        String price = "31000";
        String stopPx = "32000";
        String basePrice = "33000";
        String timeInForce = "GoodTillCancel";
        String triggerBy = null;
        Boolean closeOnTrigger = null;
        String orderLinkId = null;
        Object response = api.conditionalNew(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, price, triggerBy, closeOnTrigger, orderLinkId);
        System.out.println("conditional order result = " + response.toString());

        Map<String, Object> resultJson = JSON.parseObject(JSON.toJSON(response).toString());
        String reposeStopOrderId = "";
        if (resultJson != null) {
            String responseStatus = resultJson.get("ret_msg").toString();
            System.out.println("responseStatus = " + responseStatus);
            for (String key : resultJson.keySet()) {
                if (key.equals("result")) {
                    Map<String, String> result = (Map<String, String>) resultJson.get(key);
                    if (!result.get("stop_order_id").equals("")) {
                        reposeStopOrderId = result.get("stop_order_id");
                    }
                }
            }

            if (responseStatus.equals("OK") && reposeStopOrderId != null && !reposeStopOrderId.equals("")) {
                stopOrderId = reposeStopOrderId;
                System.out.println("stopOrderId = " + stopOrderId);
                try {
                    // Wait 5000 milliseconds
                    new Thread().sleep(5000);

                    //query one condition order

                    conditionalGetOneOrderTest();
                    new Thread().sleep(5000);

                    conditionalGetOrdersTest();
                    new Thread().sleep(5000);

                    //update conditional order
                    conditionalReplaceTest(symbol, stopOrderId, "3");
                    new Thread().sleep(5000);

                    //cancel conditional order
                    conditionalCancelTestDemo(symbol, stopOrderId, null);

                } catch (Exception e) {
                    e.printStackTrace();
                }

            }

        }

    }


    /**
     * @param symbol
     * @param stopOrderId
     * @param pRQty
     * @throws ApiException
     */

    public void conditionalReplaceTest(String symbol, String stopOrderId, String pRQty) throws ApiException {
        String pRPrice = null;
        String pRTriggerPrice = null;
        Object response = api.conditionalReplace(symbol, stopOrderId, null, pRQty, null, null);
        System.out.println("update conditional order = " + JSON.toJSON(response).toString());

    }


    /**
     * @param symbol
     * @param stopOrderId
     * @throws ApiException
     */
    public void conditionalCancelTestDemo(String symbol, String stopOrderId, String orderLinkId) throws ApiException {
        Object response = api.conditionalCancel(symbol, stopOrderId, orderLinkId);
        System.out.println("conditional cancel  order result =  " + JSON.toJSON(response).toString());

    }


    /**
     * Cancel conditional order
     */


//    @Test
    public void conditionalCancelAllTest() throws ApiException {
        String symbol = "BTCUSD";
        Object response = api.conditionalCancelAll(symbol);
        System.out.println("conditional cancel all orders result = " + JSON.toJSON(response).toString());

    }


    /**
     * Get my conditional order list.
     */

//    @Test
    public void conditionalGetOneOrderTest() throws ApiException {
//        String symbol = null;
        String orderLinkId = null;
        Object response = api.conditionalQuery(stopOrderId, orderLinkId, symbol);
        System.out.println("query one conditional order ——->>>>>>> result= " + JSON.toJSON(response).toString());

    }

    /**
     * Get my conditional order list.
     */

//    @Test
    public void conditionalGetOrdersTest() throws ApiException {
//        String symbol = null;
        String stopOrderStatus = null;
        BigDecimal limit = null;
        String direction = null;
        String cursor = null;

        Object response = api.conditionalGetOrders(symbol, null, null, null, null);
        System.out.println("conditional order list ——->>>>>>> result= " + JSON.toJSON(response).toString());

    }


}
