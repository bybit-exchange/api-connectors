package example;

import io.swagger.client.ApiException;
import io.swagger.client.BybitApiClient;
import io.swagger.client.api.OrderApi;
import org.junit.Ignore;
import org.junit.Test;

import java.math.BigDecimal;

/**
 *  private API tests example for OrderApi
 */
@Ignore
public class OrderApiTest {

    private String api_key = "YOUR API KEY";
    private String secret = "YOUR SECRET";
    private BybitApiClient apiClient = new BybitApiClient(api_key,secret);
    private OrderApi api = new OrderApi(apiClient);

    /**
     * Place active order
     *
     *
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void orderNewV2Test() throws ApiException {
        String side = null;
        String symbol = null;
        String orderType = null;
        BigDecimal qty = null;
        String timeInForce = null;
        Double price = null;
        Double takeProfit = null;
        Double stopLoss = null;
        Boolean reduceOnly = null;
        Boolean closeOnTrigger = null;
        String orderLinkId = null;
        String trailingStop = null;
        Object response = api.orderNewV2(side, symbol, orderType, qty, timeInForce, price, takeProfit, stopLoss, reduceOnly, closeOnTrigger, orderLinkId, trailingStop);

        // TODO: test validations
    }
}
