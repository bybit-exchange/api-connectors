# Swagger\Client\LinearOrderApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearOrderNew**](LinearOrderApi.md#linearOrderNew) | **POST** /private/linear/order/create | Create Order


# **linearOrderNew**
> object linearOrderNew($symbol, $side, $order_type, $time_in_force, $qty, $price, $take_profit, $stop_loss, $reduce_only, $tp_trigger_by, $sl_trigger_by, $close_on_trigger, $order_link_id)

Create Order

This will create linear order

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\LinearOrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

