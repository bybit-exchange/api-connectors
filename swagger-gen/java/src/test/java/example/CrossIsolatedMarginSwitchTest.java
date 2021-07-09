package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.CrossIsolatedMarginSwitchApi;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * CrossIsolated margin switch
 * Author: sam.wang
 * Modification date: June 16, 2021
 **/



public class CrossIsolatedMarginSwitchTest {
    private final static CrossIsolatedMarginSwitchApi api = new CrossIsolatedMarginSwitchApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your secret";
    private String symbol = "BTCUSD";
    private Boolean is_isolated = false;   //Cross/Isolated: true is Isolated; false is Cross
    private long buy_leverage = 4;         //Switch Cross/Isolated; must set leverage value when switching from Cross to Isolated and the value of buy_leverage must be equal to sell_leverage
    private long sell_leverage = 4;        //Switch Cross/Isolated; must set leverage value when switching from Cross to Isolated and the value of buy_leverage must be equal to sell_leverage




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
    public void CrossIsolatedMarginSwitchApiTest() throws ApiException {
//        String symbol = null;
//        Boolean is_isolated = null;
//        long buy_leverage = null;
//        long sell_leverage = null;

        Object response = api.crossIsolatedMarginSwitch(symbol, is_isolated, buy_leverage, sell_leverage);
        System.out.println("Cross Isolated Margin Switch result >>>>> " + JSON.toJSON(response).toString());
    }

}

