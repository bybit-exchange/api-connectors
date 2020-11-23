# Swagger\Client\ExecutionApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executionGetTrades**](ExecutionApi.md#executionGetTrades) | **GET** /v2/private/execution/list | Get user’s trade records.
[**positionsClosePnlRecords**](ExecutionApi.md#positionsClosePnlRecords) | **GET** /v2/private/trade/closed-pnl/list | Get user&#39;s closed profit and loss records


# **executionGetTrades**
> object executionGetTrades($order_id, $symbol, $start_time, $page, $limit)

Get user’s trade records.

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

$apiInstance = new Swagger\Client\Api\ExecutionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = "order_id_example"; // string | OrderID. If not provided, will return user’s trading records.
$symbol = "symbol_example"; // string | Contract type. If order_id not provided, symbol is required.
$start_time = "start_time_example"; // string | Start timestamp point for result.
$page = "page_example"; // string | Page. Default getting first page data.
$limit = "limit_example"; // string | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.

try {
    $result = $apiInstance->executionGetTrades($order_id, $symbol, $start_time, $page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExecutionApi->executionGetTrades: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **string**| OrderID. If not provided, will return user’s trading records. | [optional]
 **symbol** | **string**| Contract type. If order_id not provided, symbol is required. | [optional]
 **start_time** | **string**| Start timestamp point for result. | [optional]
 **page** | **string**| Page. Default getting first page data. | [optional]
 **limit** | **string**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **positionsClosePnlRecords**
> object positionsClosePnlRecords($symbol, $start_time, $end_time, $exec_type, $page, $limit)

Get user's closed profit and loss records

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

$apiInstance = new Swagger\Client\Api\ExecutionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type
$start_time = 56; // int | Start timestamp point for result, in second
$end_time = 56; // int | End timestamp point for result, in second
$exec_type = "exec_type_example"; // string | Execution type
$page = 56; // int | Page. By default, gets first page of data. Maximum of 50 pages
$limit = 56; // int | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.

try {
    $result = $apiInstance->positionsClosePnlRecords($symbol, $start_time, $end_time, $exec_type, $page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExecutionApi->positionsClosePnlRecords: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type |
 **start_time** | **int**| Start timestamp point for result, in second | [optional]
 **end_time** | **int**| End timestamp point for result, in second | [optional]
 **exec_type** | **string**| Execution type | [optional]
 **page** | **int**| Page. By default, gets first page of data. Maximum of 50 pages | [optional]
 **limit** | **int**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

