package example;

import com.alibaba.fastjson.JSON;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.api.PositionsApi;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

/**
 * API tests for PositionsApi
 * Author: sam.wang
 * Modification date: June 14, 2021
 */


@Ignore
public class PositionsApiTest {
    private final static PositionsApi api = new PositionsApi();
    private static String api_key = "Your Apikey";
    private static String secret = "Your Secret";
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


    /**
     * Update margin.
     */

    @Test
    public void positionsChangeMarginTest() throws ApiException {
//        String symbol = "BTCUSD";
        String margin = "0.00000220";
        Object response = api.positionsChangeMargin(symbol, margin);
        System.out.println("change-position-margin result =" + response.toString());

    }

    /**
     * Get my position list.
     */

    @Test
    public void positionsMyPositionTest() throws ApiException {

        Object response = api.positionsMyPosition(symbol);
        System.out.println(" Get my position list ——->>> result= " + JSON.toJSON(response).toString());


    }

    /**
     * Get my position list.
     *
     * @throws ApiException if the Api call fails
     */

    @Test
    public void positionsMyPositionV2Test() throws ApiException {
//        String symbol = "BTCUSD";
        Object response = api.positionsMyPosition(symbol);
        System.out.println("To get the position ——->>> result= " + JSON.toJSON(response).toString());

        // TODO: test validations
    }

    /**
     * Change user leverage.
     *
     * @throws ApiException if the Api call fails
     */

//    @Test
    public void positionsSaveLeverageTest() throws ApiException {
//        String symbol = null;
        String leverage = null;
        Object response = api.positionsSaveLeverage(symbol, leverage);
        System.out.println("Change user leverage ——->>> result= " + JSON.toJSON(response).toString());

        // TODO: test validations
    }

    /**
     * Set Trading-Stop Condition.
     *
     * @throws ApiException if the Api call fails
     */

    @Test
    public void positionsTradingStopTest() throws ApiException {
//        String symbol = null;
        String takeProfit = null;
        String stopLoss = null;
        String trailingStop = null;
        String newTrailingActive = null;
        Object response = api.positionsTradingStop(symbol, takeProfit, stopLoss, trailingStop,newTrailingActive);
        System.out.println("Set Trading-Stop Condition ——->>> result= " + JSON.toJSON(response).toString());
        // TODO: test validations
    }

    /**
     * Get user leverage setting.
     *
     * @throws ApiException if the Api call fails
     */

//    @Test
    public void positionsUserLeverageTest() throws ApiException {
//        Object response = api.positionsUserLeverage();

        // TODO: test validations
    }

}