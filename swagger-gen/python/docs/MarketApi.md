# swagger_client.MarketApi

All URIs are relative to *https://api.bybit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**market_account_ratio**](MarketApi.md#market_account_ratio) | **GET** /v2/public/account-ratio | Query Account Long Short Ratio
[**market_big_deal**](MarketApi.md#market_big_deal) | **GET** /v2/public/big-deal | Query Big Deal
[**market_liq_records**](MarketApi.md#market_liq_records) | **GET** /v2/public/liq-records | Query liq records.
[**market_open_interest**](MarketApi.md#market_open_interest) | **GET** /v2/public/open-interest | Query Open Interest
[**market_orderbook**](MarketApi.md#market_orderbook) | **GET** /v2/public/orderBook/L2 | Get the orderbook.
[**market_symbol_info**](MarketApi.md#market_symbol_info) | **GET** /v2/public/tickers | Get the latest information for symbol.
[**market_trading_records**](MarketApi.md#market_trading_records) | **GET** /v2/public/trading-records | Get recent trades


# **market_account_ratio**
> object market_account_ratio(symbol, period, limit=limit)

Query Account Long Short Ratio

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type.
period = 'period_example' # str | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
limit = 56 # int | Limit for data size, max size is 500. Default size is 50 (optional)

try:
    # Query Account Long Short Ratio
    api_response = api_instance.market_account_ratio(symbol, period, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_account_ratio: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **period** | **str**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **int**| Limit for data size, max size is 500. Default size is 50 | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_big_deal**
> object market_big_deal(symbol, limit=limit)

Query Big Deal

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type.
limit = 56 # int | Limit for data size, max size is 1000. Default size is 500 (optional)

try:
    # Query Big Deal
    api_response = api_instance.market_big_deal(symbol, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_big_deal: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **limit** | **int**| Limit for data size, max size is 1000. Default size is 500 | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_liq_records**
> object market_liq_records(symbol, _from=_from, limit=limit, start_time=start_time, end_time=end_time)

Query liq records.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type.
_from = 56 # int | From ID. Default: return latest data (optional)
limit = 56 # int | Limit for data size, max size is 1000. Default size is 500 (optional)
start_time = 56 # int | Start timestamp point for result, in millisecond (optional)
end_time = 56 # int | End timestamp point for result, in millisecond (optional)

try:
    # Query liq records.
    api_response = api_instance.market_liq_records(symbol, _from=_from, limit=limit, start_time=start_time, end_time=end_time)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_liq_records: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **_from** | **int**| From ID. Default: return latest data | [optional] 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_open_interest**
> object market_open_interest(symbol, period, limit=limit)

Query Open Interest

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type.
period = 'period_example' # str | Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
limit = 56 # int | Limit for data size, max size is 200. Default size is 50 (optional)

try:
    # Query Open Interest
    api_response = api_instance.market_open_interest(symbol, period, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_open_interest: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **period** | **str**| Data recording period. 5min, 15min, 30min, 1h, 4h, 1d | 
 **limit** | **int**| Limit for data size, max size is 200. Default size is 50 | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_orderbook**
> object market_orderbook(symbol)

Get the orderbook.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type.

try:
    # Get the orderbook.
    api_response = api_instance.market_orderbook(symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_orderbook: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_symbol_info**
> object market_symbol_info(symbol=symbol)

Get the latest information for symbol.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type. (optional)

try:
    # Get the latest information for symbol.
    api_response = api_instance.market_symbol_info(symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_symbol_info: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_trading_records**
> object market_trading_records(symbol, _from=_from, limit=limit)

Get recent trades

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MarketApi()
symbol = 'symbol_example' # str | Contract type.
_from = 56 # int | From ID. Default: return latest data (optional)
limit = 56 # int | Number of results. Default 500; max 1000 (optional)

try:
    # Get recent trades
    api_response = api_instance.market_trading_records(symbol, _from=_from, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MarketApi->market_trading_records: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Contract type. | 
 **_from** | **int**| From ID. Default: return latest data | [optional] 
 **limit** | **int**| Number of results. Default 500; max 1000 | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

