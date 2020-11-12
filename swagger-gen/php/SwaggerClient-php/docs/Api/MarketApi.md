# Swagger\Client\MarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketAccountRatio**](MarketApi.md#marketAccountRatio) | **GET** /v2/public/account-ratio | Query Account Long Short Ratio
[**marketBigDeal**](MarketApi.md#marketBigDeal) | **GET** /v2/public/big-deal | Query Big Deal
[**marketLiqRecords**](MarketApi.md#marketLiqRecords) | **GET** /v2/public/liq-records | Query liq records.
[**marketOpenInterest**](MarketApi.md#marketOpenInterest) | **GET** /v2/public/open-interest | Query Open Interest
[**marketOrderbook**](MarketApi.md#marketOrderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**marketSymbolInfo**](MarketApi.md#marketSymbolInfo) | **GET** /v2/public/tickers | Get the latest information for symbol.
[**marketTradingRecords**](MarketApi.md#marketTradingRecords) | **GET** /v2/public/trading-records | Get recent trades


# **marketAccountRatio**
> object marketAccountRatio($symbol, $period, $limit)

Query Account Long Short Ratio

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
$period = "period_example"; // string | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
$limit = 56; // int | Limit for data size, max size is 500. Default size is 50

try {
    $result = $apiInstance->marketAccountRatio($symbol, $period, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MarketApi->marketAccountRatio: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **period** | **string**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d |
 **limit** | **int**| Limit for data size, max size is 500. Default size is 50 | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **marketBigDeal**
> object marketBigDeal($symbol, $limit)

Query Big Deal

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
$limit = 56; // int | Limit for data size, max size is 1000. Default size is 500

try {
    $result = $apiInstance->marketBigDeal($symbol, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MarketApi->marketBigDeal: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **limit** | **int**| Limit for data size, max size is 1000. Default size is 500 | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **marketLiqRecords**
> object marketLiqRecords($symbol, $from, $limit, $start_time, $end_time)

Query liq records.

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
$from = 56; // int | From ID. Default: return latest data
$limit = 56; // int | Limit for data size, max size is 1000. Default size is 500
$start_time = 56; // int | Start timestamp point for result, in millisecond
$end_time = 56; // int | End timestamp point for result, in millisecond

try {
    $result = $apiInstance->marketLiqRecords($symbol, $from, $limit, $start_time, $end_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MarketApi->marketLiqRecords: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **from** | **int**| From ID. Default: return latest data | [optional]
 **limit** | **int**| Limit for data size, max size is 1000. Default size is 500 | [optional]
 **start_time** | **int**| Start timestamp point for result, in millisecond | [optional]
 **end_time** | **int**| End timestamp point for result, in millisecond | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **marketOpenInterest**
> object marketOpenInterest($symbol, $period, $limit)

Query Open Interest

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
$period = "period_example"; // string | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
$limit = 56; // int | Limit for data size, max size is 200. Default size is 50

try {
    $result = $apiInstance->marketOpenInterest($symbol, $period, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MarketApi->marketOpenInterest: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **period** | **string**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d |
 **limit** | **int**| Limit for data size, max size is 200. Default size is 50 | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

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

# **marketTradingRecords**
> object marketTradingRecords($symbol, $from, $limit)

Get recent trades

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
$from = 56; // int | From ID. Default: return latest data
$limit = 56; // int | Number of results. Default 500; max 1000

try {
    $result = $apiInstance->marketTradingRecords($symbol, $from, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MarketApi->marketTradingRecords: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| Contract type. |
 **from** | **int**| From ID. Default: return latest data | [optional]
 **limit** | **int**| Number of results. Default 500; max 1000 | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

