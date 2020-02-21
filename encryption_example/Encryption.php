<?php

function get_signed_params($public_key, $secret_key, $params) {
    $params = array_merge(['api_key' => $public_key], $params);
    ksort($params);
    //decode return value of http_build_query to make sure signing by plain parameter string
    $signature = hash_hmac('sha256', urldecode(http_build_query($params)), $secret_key);
    return http_build_query($params) . "&sign=$signature";
}

$params = ['symbol' => 'BTCUSD', 'timestamp' => time() * 1000];

$url = 'https://api.bybit.com/v2/private/execution/list';

$public_key = 'B2Rou0PLPpGqcU0Vu2';
$secret_key = 't7T0YlFnYXk0Fx3JswQsDrViLg1Gh3DUU5Mr';
echo file_get_contents($url . "?" . get_signed_params($public_key, $secret_key, $params));
