# Swagger\Client\MarketApi

All URIs are relative to *https://api-testnet.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketOrderbook**](MarketApi.md#marketOrderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**marketSymbolInfo**](MarketApi.md#marketSymbolInfo) | **GET** /v2/public/tickers | Get the latest information for symbol.


# **marketOrderbook**
> object marketOrderbook($symbol)

Get the orderbook.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\MarketApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$symbol = "symbol_example"; // string | Contract type.

try {
    $result = $apiInstance->marketOrderbook($symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MarketApi->marketOrderbook: ', $e->getMessage(), PHP_EOL;
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **marketSymbolInfo**
> object marketSymbolInfo($symbol)

Get the latest information for symbol.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\MarketApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$symbol = "symbol_example"; // string | Contract type.

try {
    $result = $apiInstance->marketSymbolInfo($symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MarketApi->marketSymbolInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

