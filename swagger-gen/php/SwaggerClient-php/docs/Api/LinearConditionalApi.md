# Swagger\Client\LinearConditionalApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearConditionalCancel**](LinearConditionalApi.md#linearConditionalCancel) | **POST** /private/linear/stop-order/cancel | Cancel Active Order
[**linearConditionalCancelAll**](LinearConditionalApi.md#linearConditionalCancelAll) | **POST** /private/linear/stop-order/cancel-all | Cancel all stop orders.
[**linearConditionalGetOrders**](LinearConditionalApi.md#linearConditionalGetOrders) | **GET** /private/linear/stop-order/list | Get linear Stop Orders
[**linearConditionalNew**](LinearConditionalApi.md#linearConditionalNew) | **POST** /private/linear/stop-order/create | Create linear stop Order
[**linearConditionalQuery**](LinearConditionalApi.md#linearConditionalQuery) | **GET** /private/linear/stop-order/search | Get Stop Orders(real-time)
[**linearConditionalReplace**](LinearConditionalApi.md#linearConditionalReplace) | **POST** /private/linear/stop-order/replace | Replace conditional order


# **linearConditionalCancel**
> object linearConditionalCancel($stop_order_id, $order_link_id, $symbol)

Cancel Active Order

This will cancel linear active order

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

$apiInstance = new Swagger\Client\Api\LinearConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$stop_order_id = "stop_order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 
$symbol = "symbol_example"; // string | 

try {
    $result = $apiInstance->linearConditionalCancel($stop_order_id, $order_link_id, $symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearConditionalApi->linearConditionalCancel: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **string**|  | [optional]
 **order_link_id** | **string**|  | [optional]
 **symbol** | **string**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearConditionalCancelAll**
> object linearConditionalCancelAll($symbol)

Cancel all stop orders.

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

$apiInstance = new Swagger\Client\Api\LinearConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.

try {
    $result = $apiInstance->linearConditionalCancelAll($symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearConditionalApi->linearConditionalCancelAll: ', $e->getMessage(), PHP_EOL;
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

# **linearConditionalGetOrders**
> object linearConditionalGetOrders($stop_order_id, $order_link_id, $symbol, $order, $page, $limit, $stop_order_status)

Get linear Stop Orders

This will get linear active orders

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

$apiInstance = new Swagger\Client\Api\LinearConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$stop_order_id = "stop_order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 
$symbol = "symbol_example"; // string | 
$order = "order_example"; // string | 
$page = "page_example"; // string | 
$limit = "limit_example"; // string | 
$stop_order_status = "stop_order_status_example"; // string | 

try {
    $result = $apiInstance->linearConditionalGetOrders($stop_order_id, $order_link_id, $symbol, $order, $page, $limit, $stop_order_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearConditionalApi->linearConditionalGetOrders: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stop_order_id** | **string**|  | [optional]
 **order_link_id** | **string**|  | [optional]
 **symbol** | **string**|  | [optional]
 **order** | **string**|  | [optional]
 **page** | **string**|  | [optional]
 **limit** | **string**|  | [optional]
 **stop_order_status** | **string**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearConditionalNew**
> object linearConditionalNew($symbol, $side, $order_type, $qty, $price, $base_price, $stop_px, $time_in_force, $trigger_by, $reduce_only, $close_on_trigger, $order_link_id, $take_profit, $stop_loss, $tp_trigger_by, $sl_trigger_by)

Create linear stop Order

This will create linear stop order

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

$apiInstance = new Swagger\Client\Api\LinearConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | 
$side = "side_example"; // string | 
$order_type = "order_type_example"; // string | 
$qty = 1.2; // double | 
$price = 1.2; // double | 
$base_price = 1.2; // double | 
$stop_px = 1.2; // double | 
$time_in_force = "time_in_force_example"; // string | 
$trigger_by = "trigger_by_example"; // string | 
$reduce_only = true; // bool | 
$close_on_trigger = true; // bool | 
$order_link_id = "order_link_id_example"; // string | 
$take_profit = 1.2; // double | 
$stop_loss = 1.2; // double | 
$tp_trigger_by = "tp_trigger_by_example"; // string | 
$sl_trigger_by = "sl_trigger_by_example"; // string | 

try {
    $result = $apiInstance->linearConditionalNew($symbol, $side, $order_type, $qty, $price, $base_price, $stop_px, $time_in_force, $trigger_by, $reduce_only, $close_on_trigger, $order_link_id, $take_profit, $stop_loss, $tp_trigger_by, $sl_trigger_by);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearConditionalApi->linearConditionalNew: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional]
 **side** | **string**|  | [optional]
 **order_type** | **string**|  | [optional]
 **qty** | **double**|  | [optional]
 **price** | **double**|  | [optional]
 **base_price** | **double**|  | [optional]
 **stop_px** | **double**|  | [optional]
 **time_in_force** | **string**|  | [optional]
 **trigger_by** | **string**|  | [optional]
 **reduce_only** | **bool**|  | [optional]
 **close_on_trigger** | **bool**|  | [optional]
 **order_link_id** | **string**|  | [optional]
 **take_profit** | **double**|  | [optional]
 **stop_loss** | **double**|  | [optional]
 **tp_trigger_by** | **string**|  | [optional]
 **sl_trigger_by** | **string**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearConditionalQuery**
> object linearConditionalQuery($symbol, $stop_order_id, $order_link_id)

Get Stop Orders(real-time)

This will get linear stop orders(real-time)

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

$apiInstance = new Swagger\Client\Api\LinearConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | 
$stop_order_id = "stop_order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 

try {
    $result = $apiInstance->linearConditionalQuery($symbol, $stop_order_id, $order_link_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearConditionalApi->linearConditionalQuery: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional]
 **stop_order_id** | **string**|  | [optional]
 **order_link_id** | **string**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearConditionalReplace**
> object linearConditionalReplace($symbol, $stop_order_id, $order_link_id, $p_r_qty, $p_r_price, $p_r_trigger_price)

Replace conditional order

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

$apiInstance = new Swagger\Client\Api\LinearConditionalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | 
$stop_order_id = "stop_order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 
$p_r_qty = "p_r_qty_example"; // string | 
$p_r_price = 8.14; // float | 
$p_r_trigger_price = 8.14; // float | 

try {
    $result = $apiInstance->linearConditionalReplace($symbol, $stop_order_id, $order_link_id, $p_r_qty, $p_r_price, $p_r_trigger_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearConditionalApi->linearConditionalReplace: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  |
 **stop_order_id** | **string**|  | [optional]
 **order_link_id** | **string**|  | [optional]
 **p_r_qty** | **string**|  | [optional]
 **p_r_price** | **float**|  | [optional]
 **p_r_trigger_price** | **float**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

