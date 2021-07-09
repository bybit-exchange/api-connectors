package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.InversePerpetualSetLeverageApi;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * API tests for Inverse Perpetual Set Leverage
 * Author: sam.wang
 * Modification date: June 15, 2021
 */


public class InversePerpetualSetLeverage {

    private final static InversePerpetualSetLeverageApi api = new InversePerpetualSetLeverageApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your Secret";

    private String symbol = "BTCUSD";
    private long leverage = 12;

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
    public void InversePerpetualSetLeverageTest() throws ApiException {
//        String margin = null;
//        String symbol = null;
        Object response = api.InversePerpetualSetLeverageApi(symbol, leverage);
        System.out.println("Inverse perpetual set trading-stop result >>>>> " + JSON.toJSON(response).toString());

    }
}
