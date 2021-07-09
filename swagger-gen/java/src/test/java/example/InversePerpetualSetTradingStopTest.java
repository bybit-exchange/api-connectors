package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.InversePerpetualSetTradingStopApi;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * API tests for Inverse Perpetual Set Trading-stop
 * Author: sam.wang
 * Modification date: June 14, 2021
 */




public class InversePerpetualSetTradingStopTest {
    private final static InversePerpetualSetTradingStopApi api = new InversePerpetualSetTradingStopApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your Secret";

    private String symbol = "BTCUSD";
    private long take_profit = 38990;

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
    public void InversePerpetualSetTradingStopTest() throws ApiException {
//        String margin = null;
//        String symbol = null;
        Object response = api.inversePerpetualSetTradingStopApi(symbol, take_profit);
        System.out.println("Inverse perpetual set trading-stop result >>>>> " + JSON.toJSON(response).toString());

    }


}