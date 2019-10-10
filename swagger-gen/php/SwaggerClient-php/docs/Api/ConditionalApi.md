# Swagger\Client\ConditionalApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](ConditionalApi.md#conditionalCancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**conditionalGetOrders**](ConditionalApi.md#conditionalGetOrders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**conditionalNew**](ConditionalApi.md#conditionalNew) | **POST** /open-api/stop-order/create | Place a new conditional order.


# **conditionalCancel**
> object conditionalCancel($stop_order_id)

Cancel conditional order.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$stop_order_id = "stop_order_id_example"; // string | Order ID of conditional order.

try {
    $result = $apiInstance->conditionalCancel($stop_order_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalCancel: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **string**| Order ID of conditional order. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalGetOrders**
> object conditionalGetOrders($stop_order_id, $order_link_id, $symbol, $order, $page, $limit)

Get my conditional order list.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$stop_order_id = "stop_order_id_example"; // string | Order ID of conditional order.
$order_link_id = "order_link_id_example"; // string | Agency customized order ID.
$symbol = "symbol_example"; // string | Contract type. Default BTCUSD.
$order = "order_example"; // string | Sort orders by creation date
$page = 8.14; // float | Page. Default getting first page data
$limit = 8.14; // float | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.

try {
    $result = $apiInstance->conditionalGetOrders($stop_order_id, $order_link_id, $symbol, $order, $page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalGetOrders: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **string**| Order ID of conditional order. | [optional]
 **order_link_id** | **string**| Agency customized order ID. | [optional]
 **symbol** | **string**| Contract type. Default BTCUSD. | [optional]
 **order** | **string**| Sort orders by creation date | [optional]
 **page** | **float**| Page. Default getting first page data | [optional]
 **limit** | **float**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalNew**
> object conditionalNew($side, $symbol, $order_type, $qty, $price, $base_price, $stop_px, $time_in_force, $close_on_trigger, $order_link_id)

Place a new conditional order.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$side = "side_example"; // string | Side.
$symbol = "symbol_example"; // string | Contract type.
$order_type = "order_type_example"; // string | Conditional order type.
$qty = 8.14; // float | Order quantity.
$price = 1.2; // double | Execution price for conditional order
$base_price = 1.2; // double | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
$stop_px = 1.2; // double | Trigger price.
$time_in_force = "time_in_force_example"; // string | Time in force.
$close_on_trigger = true; // bool | close on trigger.
$order_link_id = "order_link_id_example"; // string | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..

try {
    $result = $apiInstance->conditionalNew($side, $symbol, $order_type, $qty, $price, $base_price, $stop_px, $time_in_force, $close_on_trigger, $order_link_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalNew: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **string**| Side. |
 **symbol** | **string**| Contract type. |
 **order_type** | **string**| Conditional order type. |
 **qty** | **float**| Order quantity. |
 **price** | **double**| Execution price for conditional order |
 **base_price** | **double**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. |
 **stop_px** | **double**| Trigger price. |
 **time_in_force** | **string**| Time in force. |
 **close_on_trigger** | **bool**| close on trigger. | [optional]
 **order_link_id** | **string**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

