# Swagger\Client\OrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderCancel**](OrderApi.md#orderCancel) | **POST** /v2/private/order/cancel | Get my active order list.
[**orderCancelAll**](OrderApi.md#orderCancelAll) | **POST** /v2/private/order/cancelAll | Get my active order list.
[**orderGetOrders**](OrderApi.md#orderGetOrders) | **GET** /v2/private/order/list | Get my active order list.
[**orderNew**](OrderApi.md#orderNew) | **POST** /v2/private/order/create | Place active order
[**orderQuery**](OrderApi.md#orderQuery) | **GET** /v2/private/order | Get my active order list.
[**orderReplace**](OrderApi.md#orderReplace) | **POST** /v2/private/order/replace | Replace active order. Only incomplete orders can be modified.


# **orderCancel**
> object orderCancel($symbol, $order_id, $order_link_id)

Get my active order list.

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

$apiInstance = new Swagger\Client\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.
$order_id = "order_id_example"; // string | Order ID
$order_link_id = "order_link_id_example"; // string | Order link id.

try {
    $result = $apiInstance->orderCancel($symbol, $order_id, $order_link_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->orderCancel: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **order_id** | **string**| Order ID | [optional]
 **order_link_id** | **string**| Order link id. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **orderCancelAll**
> object orderCancelAll($symbol)

Get my active order list.

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

$apiInstance = new Swagger\Client\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.

try {
    $result = $apiInstance->orderCancelAll($symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->orderCancelAll: ', $e->getMessage(), PHP_EOL;
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

# **orderGetOrders**
> object orderGetOrders($symbol, $limit, $order_status, $direction, $cursor)

Get my active order list.

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

$apiInstance = new Swagger\Client\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type. Default BTCUSD
$limit = 8.14; // float | TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
$order_status = "order_status_example"; // string | Query your orders for all statuses if 'order_status' is empty. If you want to query orders with specific statuses , you can pass the order_status split by
$direction = "direction_example"; // string | Search direction. prev: prev page, next: next page. Defaults to next
$cursor = "cursor_example"; // string | Page turning mark，Use return cursor,Sign use origin data, in request please urlencode

try {
    $result = $apiInstance->orderGetOrders($symbol, $limit, $order_status, $direction, $cursor);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->orderGetOrders: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. Default BTCUSD |
 **limit** | **float**| TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional]
 **order_status** | **string**| Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by | [optional]
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

# **orderNew**
> object orderNew($side, $symbol, $order_type, $qty, $time_in_force, $price, $take_profit, $stop_loss, $reduce_only, $close_on_trigger, $order_link_id)

Place active order

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

$apiInstance = new Swagger\Client\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$side = "side_example"; // string | Side
$symbol = "symbol_example"; // string | Contract type.
$order_type = "order_type_example"; // string | Active order type
$qty = 8.14; // float | 
$time_in_force = "time_in_force_example"; // string | Time in force
$price = 1.2; // double | Order price.
$take_profit = 1.2; // double | take profit price
$stop_loss = 1.2; // double | stop loss price
$reduce_only = true; // bool | reduce only
$close_on_trigger = true; // bool | close on trigger
$order_link_id = "order_link_id_example"; // string | TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.

try {
    $result = $apiInstance->orderNew($side, $symbol, $order_type, $qty, $time_in_force, $price, $take_profit, $stop_loss, $reduce_only, $close_on_trigger, $order_link_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->orderNew: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **string**| Side |
 **symbol** | **string**| Contract type. |
 **order_type** | **string**| Active order type |
 **qty** | **float**|  |
 **time_in_force** | **string**| Time in force |
 **price** | **double**| Order price. | [optional]
 **take_profit** | **double**| take profit price | [optional]
 **stop_loss** | **double**| stop loss price | [optional]
 **reduce_only** | **bool**| reduce only | [optional]
 **close_on_trigger** | **bool**| close on trigger | [optional]
 **order_link_id** | **string**| TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **orderQuery**
> object orderQuery($order_id, $symbol)

Get my active order list.

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

$apiInstance = new Swagger\Client\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = "order_id_example"; // string | Order ID
$symbol = "symbol_example"; // string | Contract type. Default BTCUSD

try {
    $result = $apiInstance->orderQuery($order_id, $symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->orderQuery: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **string**| Order ID | [optional]
 **symbol** | **string**| Contract type. Default BTCUSD | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **orderReplace**
> object orderReplace($symbol, $order_id, $order_link_id, $p_r_qty, $p_r_price)

Replace active order. Only incomplete orders can be modified.

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

$apiInstance = new Swagger\Client\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.
$order_id = "order_id_example"; // string | Order ID.
$order_link_id = "order_link_id_example"; // string | Order Link ID.
$p_r_qty = "p_r_qty_example"; // string | Order quantity.
$p_r_price = "p_r_price_example"; // string | Order price.

try {
    $result = $apiInstance->orderReplace($symbol, $order_id, $order_link_id, $p_r_qty, $p_r_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->orderReplace: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **order_id** | **string**| Order ID. | [optional]
 **order_link_id** | **string**| Order Link ID. | [optional]
 **p_r_qty** | **string**| Order quantity. | [optional]
 **p_r_price** | **string**| Order price. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

