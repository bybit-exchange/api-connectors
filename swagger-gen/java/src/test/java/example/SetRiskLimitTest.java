package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.SetRiskLimitApi;
import org.junit.BeforeClass;
import org.junit.Test;


/**
 * API tests for set risk limit test
 * Author: sam.wang
 * Modification date: June 16, 2021
 */


public class SetRiskLimitTest {
    private final static SetRiskLimitApi api = new SetRiskLimitApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your Secret";

    private String symbol = "BTCUSD";
    private Integer risk_id=2;   //It's usually set to 1 or 2
    //private Integer risk_id=1;

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
//        String symbol = null;
//        Integer risk_id = null;
        Object response = api.SetRiskLimit(symbol, risk_id);
        System.out.println("Set risk limit result >>>>> "+JSON.toJSON(response).toString());
    }
}