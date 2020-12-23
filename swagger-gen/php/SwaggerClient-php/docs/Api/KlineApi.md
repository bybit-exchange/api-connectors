# Swagger\Client\KlineApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**klineGet**](KlineApi.md#klineGet) | **GET** /v2/public/kline/list | Query historical kline.
[**klineMarkPrice**](KlineApi.md#klineMarkPrice) | **GET** /v2/public/mark-price-kline | Query mark price kline.


# **klineGet**
> object klineGet($symbol, $interval, $from, $limit)

Query historical kline.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\KlineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$symbol = "symbol_example"; // string | Contract type.
$interval = "interval_example"; // string | Kline interval.
$from = 8.14; // float | from timestamp.
$limit = 8.14; // float | Contract type.

try {
    $result = $apiInstance->klineGet($symbol, $interval, $from, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KlineApi->klineGet: ', $e->getMessage(), PHP_EOL;
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

# **klineMarkPrice**
> object klineMarkPrice($symbol, $interval, $from, $limit)

Query mark price kline.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\KlineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$symbol = "symbol_example"; // string | Contract type.
$interval = "interval_example"; // string | Data refresh interval
$from = 56; // int | From timestamp in seconds
$limit = 56; // int | Limit for data size, max size is 1000. Default size is 500

try {
    $result = $apiInstance->klineMarkPrice($symbol, $interval, $from, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KlineApi->klineMarkPrice: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **interval** | **string**| Data refresh interval |
 **from** | **int**| From timestamp in seconds |
 **limit** | **int**| Limit for data size, max size is 1000. Default size is 500 | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

