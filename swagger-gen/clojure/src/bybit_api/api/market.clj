(ns bybit-api.api.market
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn market-account-ratio-with-http-info
  "Query Account Long Short Ratio"
  ([symbol period ] (market-account-ratio-with-http-info symbol period nil))
  ([symbol period {:keys [limit ]}]
   (check-required-params symbol period)
   (call-api "/v2/public/account-ratio" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "limit" limit "period" period }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn market-account-ratio
  "Query Account Long Short Ratio"
  ([symbol period ] (market-account-ratio symbol period nil))
  ([symbol period optional-params]
   (:data (market-account-ratio-with-http-info symbol period optional-params))))

(defn market-big-deal-with-http-info
  "Query Big Deal"
  ([symbol ] (market-big-deal-with-http-info symbol nil))
  ([symbol {:keys [limit ]}]
   (check-required-params symbol)
   (call-api "/v2/public/big-deal" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn market-big-deal
  "Query Big Deal"
  ([symbol ] (market-big-deal symbol nil))
  ([symbol optional-params]
   (:data (market-big-deal-with-http-info symbol optional-params))))

(defn market-liq-records-with-http-info
  "Query liq records."
  ([symbol ] (market-liq-records-with-http-info symbol nil))
  ([symbol {:keys [from limit start-time end-time ]}]
   (check-required-params symbol)
   (call-api "/v2/public/liq-records" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "from" from "limit" limit "start_time" start-time "end_time" end-time }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn market-liq-records
  "Query liq records."
  ([symbol ] (market-liq-records symbol nil))
  ([symbol optional-params]
   (:data (market-liq-records-with-http-info symbol optional-params))))

(defn market-open-interest-with-http-info
  "Query Open Interest"
  ([symbol period ] (market-open-interest-with-http-info symbol period nil))
  ([symbol period {:keys [limit ]}]
   (check-required-params symbol period)
   (call-api "/v2/public/open-interest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "limit" limit "period" period }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn market-open-interest
  "Query Open Interest"
  ([symbol period ] (market-open-interest symbol period nil))
  ([symbol period optional-params]
   (:data (market-open-interest-with-http-info symbol period optional-params))))

(defn market-orderbook-with-http-info
  "Get the orderbook."
  [symbol ]
  (check-required-params symbol)
  (call-api "/v2/public/orderBook/L2" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"symbol" symbol }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn market-orderbook
  "Get the orderbook."
  [symbol ]
  (:data (market-orderbook-with-http-info symbol)))

(defn market-symbol-info-with-http-info
  "Get the latest information for symbol."
  ([] (market-symbol-info-with-http-info nil))
  ([{:keys [symbol ]}]
   (call-api "/v2/public/tickers" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn market-symbol-info
  "Get the latest information for symbol."
  ([] (market-symbol-info nil))
  ([optional-params]
   (:data (market-symbol-info-with-http-info optional-params))))

(defn market-trading-records-with-http-info
  "Get recent trades"
  ([symbol ] (market-trading-records-with-http-info symbol nil))
  ([symbol {:keys [from limit ]}]
   (check-required-params symbol)
   (call-api "/v2/public/trading-records" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "from" from "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn market-trading-records
  "Get recent trades"
  ([symbol ] (market-trading-records symbol nil))
  ([symbol optional-params]
   (:data (market-trading-records-with-http-info symbol optional-params))))

