# Swagger\Client\ConditionalApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conditionalCancel**](ConditionalApi.md#conditionalCancel) | **POST** /open-api/stop-order/cancel | Cancel conditional order.
[**conditionalCancelAll**](ConditionalApi.md#conditionalCancelAll) | **POST** /v2/private/stop-order/cancelAll | Cancel conditional order.
[**conditionalGetOrders**](ConditionalApi.md#conditionalGetOrders) | **GET** /open-api/stop-order/list | Get my conditional order list.
[**conditionalNew**](ConditionalApi.md#conditionalNew) | **POST** /open-api/stop-order/create | Place a new conditional order.
[**conditionalReplace**](ConditionalApi.md#conditionalReplace) | **POST** /open-api/stop-order/replace | Replace conditional order. Only incomplete orders can be modified.


# **conditionalCancel**
> object conditionalCancel($stop_order_id)

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

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
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

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalGetOrders**
> object conditionalGetOrders($stop_order_id, $order_link_id, $symbol, $order, $page, $limit)

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
$qty = 8.14; // float | Order quantity.
$base_price = 1.2; // double | Send current market price. It will be used to compare with the value of 'stop_px', to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
$stop_px = 1.2; // double | Trigger price.
$time_in_force = "time_in_force_example"; // string | Time in force.
$price = 1.2; // double | Execution price for conditional order
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
 **qty** | **float**| Order quantity. |
 **base_price** | **double**| Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order.. |
 **stop_px** | **double**| Trigger price. |
 **time_in_force** | **string**| Time in force. |
 **price** | **double**| Execution price for conditional order | [optional]
 **trigger_by** | **string**| Trigger price type. Default LastPrice. | [optional]
 **close_on_trigger** | **bool**| close on trigger. | [optional]
 **order_link_id** | **string**| Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **conditionalReplace**
> object conditionalReplace($symbol, $stop_order_id, $order_id, $p_r_qty, $p_r_price, $p_r_trigger_price)

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
$order_id = "order_id_example"; // string | Stop order ID.
$p_r_qty = 8.14; // float | Order quantity.
$p_r_price = 1.2; // double | Order price.
$p_r_trigger_price = 1.2; // double | Trigger price.

try {
    $result = $apiInstance->conditionalReplace($symbol, $stop_order_id, $order_id, $p_r_qty, $p_r_price, $p_r_trigger_price);
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
 **order_id** | **string**| Stop order ID. | [optional]
 **p_r_qty** | **float**| Order quantity. | [optional]
 **p_r_price** | **double**| Order price. | [optional]
 **p_r_trigger_price** | **double**| Trigger price. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

