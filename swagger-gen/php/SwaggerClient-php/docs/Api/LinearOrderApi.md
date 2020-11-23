# Swagger\Client\LinearOrderApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearOrderCancel**](LinearOrderApi.md#linearOrderCancel) | **POST** /private/linear/order/cancel | Cancel Active Order
[**linearOrderCancelAll**](LinearOrderApi.md#linearOrderCancelAll) | **POST** /private/linear/order/cancel-all | Cancel all active orders.
[**linearOrderGetOrders**](LinearOrderApi.md#linearOrderGetOrders) | **GET** /private/linear/order/list | Get linear Active Orders
[**linearOrderNew**](LinearOrderApi.md#linearOrderNew) | **POST** /private/linear/order/create | Create Active Order
[**linearOrderQuery**](LinearOrderApi.md#linearOrderQuery) | **GET** /private/linear/order/search | Get Active Orders(real-time)
[**linearOrderReplace**](LinearOrderApi.md#linearOrderReplace) | **POST** /private/linear/order/replace | Replace Active Order


# **linearOrderCancel**
> object linearOrderCancel($order_id, $order_link_id, $symbol)

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

$apiInstance = new Swagger\Client\Api\LinearOrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = "order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 
$symbol = "symbol_example"; // string | 

try {
    $result = $apiInstance->linearOrderCancel($order_id, $order_link_id, $symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearOrderApi->linearOrderCancel: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **string**|  | [optional]
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

# **linearOrderCancelAll**
> object linearOrderCancelAll($symbol)

Cancel all active orders.

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

$apiInstance = new Swagger\Client\Api\LinearOrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.

try {
    $result = $apiInstance->linearOrderCancelAll($symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearOrderApi->linearOrderCancelAll: ', $e->getMessage(), PHP_EOL;
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

# **linearOrderGetOrders**
> object linearOrderGetOrders($order_id, $order_link_id, $symbol, $order, $page, $limit, $order_status)

Get linear Active Orders

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

$apiInstance = new Swagger\Client\Api\LinearOrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = "order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 
$symbol = "symbol_example"; // string | 
$order = "order_example"; // string | 
$page = "page_example"; // string | 
$limit = "limit_example"; // string | 
$order_status = "order_status_example"; // string | 

try {
    $result = $apiInstance->linearOrderGetOrders($order_id, $order_link_id, $symbol, $order, $page, $limit, $order_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearOrderApi->linearOrderGetOrders: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **string**|  | [optional]
 **order_link_id** | **string**|  | [optional]
 **symbol** | **string**|  | [optional]
 **order** | **string**|  | [optional]
 **page** | **string**|  | [optional]
 **limit** | **string**|  | [optional]
 **order_status** | **string**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearOrderNew**
> object linearOrderNew($symbol, $side, $order_type, $time_in_force, $qty, $price, $take_profit, $stop_loss, $reduce_only, $tp_trigger_by, $sl_trigger_by, $close_on_trigger, $order_link_id)

Create Active Order

This will create linear order

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

$apiInstance = new Swagger\Client\Api\LinearOrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | 
$side = "side_example"; // string | 
$order_type = "order_type_example"; // string | 
$time_in_force = "time_in_force_example"; // string | 
$qty = 1.2; // double | 
$price = 1.2; // double | 
$take_profit = 1.2; // double | 
$stop_loss = 1.2; // double | 
$reduce_only = true; // bool | 
$tp_trigger_by = "tp_trigger_by_example"; // string | 
$sl_trigger_by = "sl_trigger_by_example"; // string | 
$close_on_trigger = true; // bool | 
$order_link_id = "order_link_id_example"; // string | 

try {
    $result = $apiInstance->linearOrderNew($symbol, $side, $order_type, $time_in_force, $qty, $price, $take_profit, $stop_loss, $reduce_only, $tp_trigger_by, $sl_trigger_by, $close_on_trigger, $order_link_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearOrderApi->linearOrderNew: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional]
 **side** | **string**|  | [optional]
 **order_type** | **string**|  | [optional]
 **time_in_force** | **string**|  | [optional]
 **qty** | **double**|  | [optional]
 **price** | **double**|  | [optional]
 **take_profit** | **double**|  | [optional]
 **stop_loss** | **double**|  | [optional]
 **reduce_only** | **bool**|  | [optional]
 **tp_trigger_by** | **string**|  | [optional]
 **sl_trigger_by** | **string**|  | [optional]
 **close_on_trigger** | **bool**|  | [optional]
 **order_link_id** | **string**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearOrderQuery**
> object linearOrderQuery($symbol, $order_id, $order_link_id)

Get Active Orders(real-time)

This will get linear active orders(real-time)

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

$apiInstance = new Swagger\Client\Api\LinearOrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | 
$order_id = "order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 

try {
    $result = $apiInstance->linearOrderQuery($symbol, $order_id, $order_link_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearOrderApi->linearOrderQuery: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  | [optional]
 **order_id** | **string**|  | [optional]
 **order_link_id** | **string**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearOrderReplace**
> object linearOrderReplace($symbol, $order_id, $order_link_id, $p_r_qty, $p_r_price)

Replace Active Order

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

$apiInstance = new Swagger\Client\Api\LinearOrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | 
$order_id = "order_id_example"; // string | 
$order_link_id = "order_link_id_example"; // string | 
$p_r_qty = "p_r_qty_example"; // string | 
$p_r_price = 8.14; // float | 

try {
    $result = $apiInstance->linearOrderReplace($symbol, $order_id, $order_link_id, $p_r_qty, $p_r_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearOrderApi->linearOrderReplace: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**|  |
 **order_id** | **string**|  | [optional]
 **order_link_id** | **string**|  | [optional]
 **p_r_qty** | **string**|  | [optional]
 **p_r_price** | **float**|  | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

