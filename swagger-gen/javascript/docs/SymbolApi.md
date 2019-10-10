# BybitApi.SymbolApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**symbolGet**](SymbolApi.md#symbolGet) | **GET** /v2/public/symbols | Query Symbols.


<a name="symbolGet"></a>
# **symbolGet**
> Object symbolGet()

Query Symbols.

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.SymbolApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.symbolGet(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

