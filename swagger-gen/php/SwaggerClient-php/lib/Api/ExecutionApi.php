<?php
/**
 * ExecutionApi
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * Bybit API
 *
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 * Swagger Codegen version: 2.4.8
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Api;

use GuzzleHttp\Client;
use GuzzleHttp\ClientInterface;
use GuzzleHttp\Exception\RequestException;
use GuzzleHttp\Psr7\MultipartStream;
use GuzzleHttp\Psr7\Request;
use GuzzleHttp\RequestOptions;
use Swagger\Client\ApiException;
use Swagger\Client\Configuration;
use Swagger\Client\HeaderSelector;
use Swagger\Client\ObjectSerializer;

/**
 * ExecutionApi Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class ExecutionApi
{
    /**
     * @var ClientInterface
     */
    protected $client;

    /**
     * @var Configuration
     */
    protected $config;

    /**
     * @var HeaderSelector
     */
    protected $headerSelector;

    /**
     * @param ClientInterface $client
     * @param Configuration   $config
     * @param HeaderSelector  $selector
     */
    public function __construct(
        ClientInterface $client = null,
        Configuration $config = null,
        HeaderSelector $selector = null
    ) {
        $this->client = $client ?: new Client();
        $this->config = $config ?: new Configuration();
        $this->headerSelector = $selector ?: new HeaderSelector();
    }

    /**
     * @return Configuration
     */
    public function getConfig()
    {
        return $this->config;
    }

    /**
     * Operation executionGetTrades
     *
     * Get user’s trade records.
     *
     * @param  string $order_id OrderID. If not provided, will return user’s trading records. (optional)
     * @param  string $symbol Contract type. If order_id not provided, symbol is required. (optional)
     * @param  string $start_time Start timestamp point for result. (optional)
     * @param  string $page Page. Default getting first page data. (optional)
     * @param  string $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return object
     */
    public function executionGetTrades($order_id = null, $symbol = null, $start_time = null, $page = null, $limit = null)
    {
        list($response) = $this->executionGetTradesWithHttpInfo($order_id, $symbol, $start_time, $page, $limit);
        return $response;
    }

    /**
     * Operation executionGetTradesWithHttpInfo
     *
     * Get user’s trade records.
     *
     * @param  string $order_id OrderID. If not provided, will return user’s trading records. (optional)
     * @param  string $symbol Contract type. If order_id not provided, symbol is required. (optional)
     * @param  string $start_time Start timestamp point for result. (optional)
     * @param  string $page Page. Default getting first page data. (optional)
     * @param  string $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of object, HTTP status code, HTTP response headers (array of strings)
     */
    public function executionGetTradesWithHttpInfo($order_id = null, $symbol = null, $start_time = null, $page = null, $limit = null)
    {
        $returnType = 'object';
        $request = $this->executionGetTradesRequest($order_id, $symbol, $start_time, $page, $limit);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? $e->getResponse()->getBody()->getContents() : null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    $response->getBody()
                );
            }

            $responseBody = $response->getBody();
            if ($returnType === '\SplFileObject') {
                $content = $responseBody; //stream goes to serializer
            } else {
                $content = $responseBody->getContents();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        'object',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation executionGetTradesAsync
     *
     * Get user’s trade records.
     *
     * @param  string $order_id OrderID. If not provided, will return user’s trading records. (optional)
     * @param  string $symbol Contract type. If order_id not provided, symbol is required. (optional)
     * @param  string $start_time Start timestamp point for result. (optional)
     * @param  string $page Page. Default getting first page data. (optional)
     * @param  string $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function executionGetTradesAsync($order_id = null, $symbol = null, $start_time = null, $page = null, $limit = null)
    {
        return $this->executionGetTradesAsyncWithHttpInfo($order_id, $symbol, $start_time, $page, $limit)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation executionGetTradesAsyncWithHttpInfo
     *
     * Get user’s trade records.
     *
     * @param  string $order_id OrderID. If not provided, will return user’s trading records. (optional)
     * @param  string $symbol Contract type. If order_id not provided, symbol is required. (optional)
     * @param  string $start_time Start timestamp point for result. (optional)
     * @param  string $page Page. Default getting first page data. (optional)
     * @param  string $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function executionGetTradesAsyncWithHttpInfo($order_id = null, $symbol = null, $start_time = null, $page = null, $limit = null)
    {
        $returnType = 'object';
        $request = $this->executionGetTradesRequest($order_id, $symbol, $start_time, $page, $limit);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    $responseBody = $response->getBody();
                    if ($returnType === '\SplFileObject') {
                        $content = $responseBody; //stream goes to serializer
                    } else {
                        $content = $responseBody->getContents();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'executionGetTrades'
     *
     * @param  string $order_id OrderID. If not provided, will return user’s trading records. (optional)
     * @param  string $symbol Contract type. If order_id not provided, symbol is required. (optional)
     * @param  string $start_time Start timestamp point for result. (optional)
     * @param  string $page Page. Default getting first page data. (optional)
     * @param  string $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    protected function executionGetTradesRequest($order_id = null, $symbol = null, $start_time = null, $page = null, $limit = null)
    {

        $resourcePath = '/v2/private/execution/list';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        if ($order_id !== null) {
            $queryParams['order_id'] = ObjectSerializer::toQueryValue($order_id);
        }
        // query params
        if ($symbol !== null) {
            $queryParams['symbol'] = ObjectSerializer::toQueryValue($symbol);
        }
        // query params
        if ($start_time !== null) {
            $queryParams['start_time'] = ObjectSerializer::toQueryValue($start_time);
        }
        // query params
        if ($page !== null) {
            $queryParams['page'] = ObjectSerializer::toQueryValue($page);
        }
        // query params
        if ($limit !== null) {
            $queryParams['limit'] = ObjectSerializer::toQueryValue($limit);
        }


        // body params
        $_tempBody = null;

        if ($multipart) {
            $headers = $this->headerSelector->selectHeadersForMultipart(
                ['application/json']
            );
        } else {
            $headers = $this->headerSelector->selectHeaders(
                ['application/json'],
                ['application/json', 'application/x-www-form-urlencoded']
            );
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            // $_tempBody is the method argument, if present
            $httpBody = $_tempBody;
            // \stdClass has no __toString(), so we should encode it manually
            if ($httpBody instanceof \stdClass && $headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($httpBody);
            }
        } elseif (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $multipartContents[] = [
                        'name' => $formParamName,
                        'contents' => $formParamValue
                    ];
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($formParams);

            } else {
                // for HTTP post (form)
                $httpBody = \GuzzleHttp\Psr7\build_query($formParams);
            }
        }

        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('api_key');
        if ($apiKey !== null) {
            $queryParams['api_key'] = $apiKey;
        }
        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('sign');
        if ($apiKey !== null) {
            $queryParams['sign'] = $apiKey;
        }
        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('timestamp');
        if ($apiKey !== null) {
            $queryParams['timestamp'] = $apiKey;
        }

        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $query = \GuzzleHttp\Psr7\build_query($queryParams);
        return new Request(
            'GET',
            $this->config->getHost() . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation positionsClosePnlRecords
     *
     * Get user's closed profit and loss records
     *
     * @param  string $symbol Contract type (required)
     * @param  int $start_time Start timestamp point for result, in second (optional)
     * @param  int $end_time End timestamp point for result, in second (optional)
     * @param  string $exec_type Execution type (optional)
     * @param  int $page Page. By default, gets first page of data. Maximum of 50 pages (optional)
     * @param  int $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return object
     */
    public function positionsClosePnlRecords($symbol, $start_time = null, $end_time = null, $exec_type = null, $page = null, $limit = null)
    {
        list($response) = $this->positionsClosePnlRecordsWithHttpInfo($symbol, $start_time, $end_time, $exec_type, $page, $limit);
        return $response;
    }

    /**
     * Operation positionsClosePnlRecordsWithHttpInfo
     *
     * Get user's closed profit and loss records
     *
     * @param  string $symbol Contract type (required)
     * @param  int $start_time Start timestamp point for result, in second (optional)
     * @param  int $end_time End timestamp point for result, in second (optional)
     * @param  string $exec_type Execution type (optional)
     * @param  int $page Page. By default, gets first page of data. Maximum of 50 pages (optional)
     * @param  int $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of object, HTTP status code, HTTP response headers (array of strings)
     */
    public function positionsClosePnlRecordsWithHttpInfo($symbol, $start_time = null, $end_time = null, $exec_type = null, $page = null, $limit = null)
    {
        $returnType = 'object';
        $request = $this->positionsClosePnlRecordsRequest($symbol, $start_time, $end_time, $exec_type, $page, $limit);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? $e->getResponse()->getBody()->getContents() : null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    $response->getBody()
                );
            }

            $responseBody = $response->getBody();
            if ($returnType === '\SplFileObject') {
                $content = $responseBody; //stream goes to serializer
            } else {
                $content = $responseBody->getContents();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        'object',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation positionsClosePnlRecordsAsync
     *
     * Get user's closed profit and loss records
     *
     * @param  string $symbol Contract type (required)
     * @param  int $start_time Start timestamp point for result, in second (optional)
     * @param  int $end_time End timestamp point for result, in second (optional)
     * @param  string $exec_type Execution type (optional)
     * @param  int $page Page. By default, gets first page of data. Maximum of 50 pages (optional)
     * @param  int $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function positionsClosePnlRecordsAsync($symbol, $start_time = null, $end_time = null, $exec_type = null, $page = null, $limit = null)
    {
        return $this->positionsClosePnlRecordsAsyncWithHttpInfo($symbol, $start_time, $end_time, $exec_type, $page, $limit)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation positionsClosePnlRecordsAsyncWithHttpInfo
     *
     * Get user's closed profit and loss records
     *
     * @param  string $symbol Contract type (required)
     * @param  int $start_time Start timestamp point for result, in second (optional)
     * @param  int $end_time End timestamp point for result, in second (optional)
     * @param  string $exec_type Execution type (optional)
     * @param  int $page Page. By default, gets first page of data. Maximum of 50 pages (optional)
     * @param  int $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function positionsClosePnlRecordsAsyncWithHttpInfo($symbol, $start_time = null, $end_time = null, $exec_type = null, $page = null, $limit = null)
    {
        $returnType = 'object';
        $request = $this->positionsClosePnlRecordsRequest($symbol, $start_time, $end_time, $exec_type, $page, $limit);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    $responseBody = $response->getBody();
                    if ($returnType === '\SplFileObject') {
                        $content = $responseBody; //stream goes to serializer
                    } else {
                        $content = $responseBody->getContents();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'positionsClosePnlRecords'
     *
     * @param  string $symbol Contract type (required)
     * @param  int $start_time Start timestamp point for result, in second (optional)
     * @param  int $end_time End timestamp point for result, in second (optional)
     * @param  string $exec_type Execution type (optional)
     * @param  int $page Page. By default, gets first page of data. Maximum of 50 pages (optional)
     * @param  int $limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    protected function positionsClosePnlRecordsRequest($symbol, $start_time = null, $end_time = null, $exec_type = null, $page = null, $limit = null)
    {
        // verify the required parameter 'symbol' is set
        if ($symbol === null || (is_array($symbol) && count($symbol) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $symbol when calling positionsClosePnlRecords'
            );
        }

        $resourcePath = '/v2/private/trade/closed-pnl/list';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        if ($symbol !== null) {
            $queryParams['symbol'] = ObjectSerializer::toQueryValue($symbol);
        }
        // query params
        if ($start_time !== null) {
            $queryParams['start_time'] = ObjectSerializer::toQueryValue($start_time);
        }
        // query params
        if ($end_time !== null) {
            $queryParams['end_time'] = ObjectSerializer::toQueryValue($end_time);
        }
        // query params
        if ($exec_type !== null) {
            $queryParams['exec_type'] = ObjectSerializer::toQueryValue($exec_type);
        }
        // query params
        if ($page !== null) {
            $queryParams['page'] = ObjectSerializer::toQueryValue($page);
        }
        // query params
        if ($limit !== null) {
            $queryParams['limit'] = ObjectSerializer::toQueryValue($limit);
        }


        // body params
        $_tempBody = null;

        if ($multipart) {
            $headers = $this->headerSelector->selectHeadersForMultipart(
                ['application/json']
            );
        } else {
            $headers = $this->headerSelector->selectHeaders(
                ['application/json'],
                ['application/json', 'application/x-www-form-urlencoded']
            );
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            // $_tempBody is the method argument, if present
            $httpBody = $_tempBody;
            // \stdClass has no __toString(), so we should encode it manually
            if ($httpBody instanceof \stdClass && $headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($httpBody);
            }
        } elseif (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $multipartContents[] = [
                        'name' => $formParamName,
                        'contents' => $formParamValue
                    ];
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($formParams);

            } else {
                // for HTTP post (form)
                $httpBody = \GuzzleHttp\Psr7\build_query($formParams);
            }
        }

        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('api_key');
        if ($apiKey !== null) {
            $queryParams['api_key'] = $apiKey;
        }
        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('sign');
        if ($apiKey !== null) {
            $queryParams['sign'] = $apiKey;
        }
        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('timestamp');
        if ($apiKey !== null) {
            $queryParams['timestamp'] = $apiKey;
        }

        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $query = \GuzzleHttp\Psr7\build_query($queryParams);
        return new Request(
            'GET',
            $this->config->getHost() . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Create http client option
     *
     * @throws \RuntimeException on file opening failure
     * @return array of http client options
     */
    protected function createHttpClientOption()
    {
        $options = [];
        if ($this->config->getDebug()) {
            $options[RequestOptions::DEBUG] = fopen($this->config->getDebugFile(), 'a');
            if (!$options[RequestOptions::DEBUG]) {
                throw new \RuntimeException('Failed to open the debug file: ' . $this->config->getDebugFile());
            }
        }

        return $options;
    }
}
