(ns bybit-api.api.market
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

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

