package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.FullPartialPositionSlTpSwitchApi;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * Full/Partial Position SL/TP switch
 * Author: sam.wang
 * Modification date: June 16, 2021
 *
 * */


public class FullPartialPositionSlTpSwitchTest {
    private final static FullPartialPositionSlTpSwitchApi api = new FullPartialPositionSlTpSwitchApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your secret";
    private String symbol = "BTCUSD";
    private String tp_sl_mode = "Partial";   //Partial stop loss take profit
    //private String tp_sl_mode = "Full";    //Full stop loss take profit


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
    public void FullPartialPositionSlTpSwitchApiTest() throws ApiException {
//        String symbol = null;
//        String tp_sl_mode = null;
        Object response = api.fullPartialPositionSlTpSwitch(symbol, tp_sl_mode);
        System.out.println("Full/Partial Position SL/TP Switch result >>>>> " + JSON.toJSON(response).toString());

    }
}
