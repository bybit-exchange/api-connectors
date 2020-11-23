# Swagger\Client\ConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](ConditionalApi.md#conditionalCancel) | **POST** /v2/private/stop-order/cancel | Cancel conditional order.
[**conditionalCancelAll**](ConditionalApi.md#conditionalCancelAll) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditionalGetOrders**](ConditionalApi.md#conditionalGetOrders) | **GET** /v2/private/stop-order/list | Get my conditional order list.
[**conditionalNew**](ConditionalApi.md#conditionalNew) | **POST** /v2/private/stop-order/create | Place a new conditional order.
[**conditionalQuery**](ConditionalApi.md#conditionalQuery) | **GET** /v2/private/stop-order | Query real-time stop order information.
[**conditionalReplace**](ConditionalApi.md#conditionalReplace) | **POST** /v2/private/stop-order/replace | Replace conditional order. Only incomplete orders can be modified.


# **conditionalCancel**
> object conditionalCancel($symbol, $stop_order_id, $order_link_id)

Cancel conditional order.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: apiKey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');
// Configure API key authorization: apiSignature
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('sign', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sign', 'Bearer');
// Configure API key authorization: timestamp
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('timestamp', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('timestamp', 'Bearer');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.
$stop_order_id = "stop_order_id_example"; // string | Order ID of conditional order.
$order_link_id = "order_link_id_example"; // string | Agency customized order ID.

try {
    $result = $apiInstance->conditionalCancel($symbol, $stop_order_id, $order_link_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalCancel: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **stop_order_id** | **string**| Order ID of conditional order. | [optional]
 **order_link_id** | **string**| Agency customized order ID. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalCancelAll**
> object conditionalCancelAll($symbol)

Cancel conditional order.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: apiKey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');
// Configure API key authorization: apiSignature
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('sign', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sign', 'Bearer');
// Configure API key authorization: timestamp
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('timestamp', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('timestamp', 'Bearer');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.

try {
    $result = $apiInstance->conditionalCancelAll($symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalCancelAll: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalGetOrders**
> object conditionalGetOrders($symbol, $stop_order_status, $limit, $direction, $cursor)

Get my conditional order list.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: apiKey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');
// Configure API key authorization: apiSignature
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('sign', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sign', 'Bearer');
// Configure API key authorization: timestamp
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('timestamp', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('timestamp', 'Bearer');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type
$stop_order_status = "stop_order_status_example"; // string | Stop order status.
$limit = 8.14; // float | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
$direction = "direction_example"; // string | Search direction. prev: prev page, next: next page. Defaults to next
$cursor = "cursor_example"; // string | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode

try {
    $result = $apiInstance->conditionalGetOrders($symbol, $stop_order_status, $limit, $direction, $cursor);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalGetOrders: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type |
 **stop_order_status** | **string**| Stop order status. | [optional]
 **limit** | **float**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]
 **direction** | **string**| Search direction. prev: prev page, next: next page. Defaults to next | [optional]
 **cursor** | **string**| Page turning mark，Use return cursor,Sign use origin data, in request please urlencode | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalNew**
> object conditionalNew($side, $symbol, $order_type, $qty, $base_price, $stop_px, $time_in_force, $price, $trigger_by, $close_on_trigger, $order_link_id)

Place a new conditional order.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: apiKey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');
// Configure API key authorization: apiSignature
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('sign', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sign', 'Bearer');
// Configure API key authorization: timestamp
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('timestamp', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('timestamp', 'Bearer');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$side = "side_example"; // string | Side.
$symbol = "symbol_example"; // string | Contract type.
$order_type = "order_type_example"; // string | Conditional order type.
$qty = "qty_example"; // string | Order quantity.
$base_price = "base_price_example"; // string | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
$stop_px = "stop_px_example"; // string | Trigger price.
$time_in_force = "time_in_force_example"; // string | Time in force.
$price = "price_example"; // string | Execution price for conditional order
$trigger_by = "trigger_by_example"; // string | Trigger price type. Default LastPrice.
$close_on_trigger = true; // bool | close on trigger.
$order_link_id = "order_link_id_example"; // string | Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..

try {
    $result = $apiInstance->conditionalNew($side, $symbol, $order_type, $qty, $base_price, $stop_px, $time_in_force, $price, $trigger_by, $close_on_trigger, $order_link_id);
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
 **qty** | **string**| Order quantity. |
 **base_price** | **string**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. |
 **stop_px** | **string**| Trigger price. |
 **time_in_force** | **string**| Time in force. |
 **price** | **string**| Execution price for conditional order | [optional]
 **trigger_by** | **string**| Trigger price type. Default LastPrice. | [optional]
 **close_on_trigger** | **bool**| close on trigger. | [optional]
 **order_link_id** | **string**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalQuery**
> object conditionalQuery($stop_order_id, $order_link_id, $symbol)

Query real-time stop order information.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: apiKey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');
// Configure API key authorization: apiSignature
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('sign', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sign', 'Bearer');
// Configure API key authorization: timestamp
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('timestamp', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('timestamp', 'Bearer');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$stop_order_id = "stop_order_id_example"; // string | Order ID of conditional order.
$order_link_id = "order_link_id_example"; // string | Agency customized order ID.
$symbol = "symbol_example"; // string | Contract type.

try {
    $result = $apiInstance->conditionalQuery($stop_order_id, $order_link_id, $symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalQuery: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **string**| Order ID of conditional order. | [optional]
 **order_link_id** | **string**| Agency customized order ID. | [optional]
 **symbol** | **string**| Contract type. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalReplace**
> object conditionalReplace($symbol, $stop_order_id, $order_link_id, $p_r_qty, $p_r_price, $p_r_trigger_price)

Replace conditional order. Only incomplete orders can be modified.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: apiKey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');
// Configure API key authorization: apiSignature
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('sign', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sign', 'Bearer');
// Configure API key authorization: timestamp
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('timestamp', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('timestamp', 'Bearer');

$apiInstance = new Swagger\Client\Api\ConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.
$stop_order_id = "stop_order_id_example"; // string | Stop order ID.
$order_link_id = "order_link_id_example"; // string | Order Link ID.
$p_r_qty = "p_r_qty_example"; // string | Order quantity.
$p_r_price = "p_r_price_example"; // string | Order price.
$p_r_trigger_price = "p_r_trigger_price_example"; // string | Trigger price.

try {
    $result = $apiInstance->conditionalReplace($symbol, $stop_order_id, $order_link_id, $p_r_qty, $p_r_price, $p_r_trigger_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConditionalApi->conditionalReplace: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **stop_order_id** | **string**| Stop order ID. | [optional]
 **order_link_id** | **string**| Order Link ID. | [optional]
 **p_r_qty** | **string**| Order quantity. | [optional]
 **p_r_price** | **string**| Order price. | [optional]
 **p_r_trigger_price** | **string**| Trigger price. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

