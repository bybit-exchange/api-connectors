# Swagger\Client\LinearKlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linearKlineGet**](LinearKlineApi.md#linearKlineGet) | **GET** /public/linear/kline | Get kline
[**linearKlineMarkPrice**](LinearKlineApi.md#linearKlineMarkPrice) | **GET** /public/linear/mark-price-kline | Get kline


# **linearKlineGet**
> object linearKlineGet($symbol, $interval, $from, $limit)

Get kline

This will get kline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\LinearKlineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$symbol = "symbol_example"; // string | Contract type.
$interval = "interval_example"; // string | Kline interval.
$from = 8.14; // float | from timestamp.
$limit = 8.14; // float | Contract type.

try {
    $result = $apiInstance->linearKlineGet($symbol, $interval, $from, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearKlineApi->linearKlineGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **interval** | **string**| Kline interval. |
 **from** | **float**| from timestamp. |
 **limit** | **float**| Contract type. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **linearKlineMarkPrice**
> object linearKlineMarkPrice($symbol, $interval, $from, $limit)

Get kline

This will get mark price kline

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

$apiInstance = new Swagger\Client\Api\LinearKlineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = "symbol_example"; // string | Contract type.
$interval = "interval_example"; // string | Kline interval.
$from = 8.14; // float | from timestamp.
$limit = 8.14; // float | Contract type.

try {
    $result = $apiInstance->linearKlineMarkPrice($symbol, $interval, $from, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LinearKlineApi->linearKlineMarkPrice: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **interval** | **string**| Kline interval. |
 **from** | **float**| from timestamp. |
 **limit** | **float**| Contract type. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [apiSignature](../../README.md#apiSignature), [timestamp](../../README.md#timestamp)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

