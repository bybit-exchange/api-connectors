package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.ChangeMarginApi;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * Change Margin
 * Author: sam.wang
 * Modification date: June 14, 2021
 *
 */



public class ChangeMarginTest {
    private final static ChangeMarginApi api = new ChangeMarginApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your Secret";
    private String margin="0.000003080";
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
    public void ChangeMarginApiTest() throws ApiException {
//        String margin = null;
//        String symbol = null;
        Object response = api.chargeMargin(symbol, margin);
        System.out.println("Change Margin result >>>>> "+JSON.toJSON(response).toString());
    }
}
