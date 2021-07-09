package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.InversePositionModeSwitchApi;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * Position Mode Switch
 * Author: sam.wang
 * Modification date: June 16, 2021
 *
 */


public class InversePositionModeSwitchTest {
    private final static InversePositionModeSwitchApi api = new InversePositionModeSwitchApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your secret";

    private Integer mode=0;
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
    public void InversePositionModeSwitchTest() throws ApiException {
//        String margin = null;
//        String symbol = null;
        Object response = api.inversePositionModeSwitchApi(symbol, mode);
        System.out.println("Position mode switch result >>>>> "+JSON.toJSON(response).toString());

    }


}