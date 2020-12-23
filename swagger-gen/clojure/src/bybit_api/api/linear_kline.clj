(ns bybit-api.api.linear-kline
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-kline-get-with-http-info
  "Get kline
  This will get kline"
  ([symbol interval from ] (linear-kline-get-with-http-info symbol interval from nil))
  ([symbol interval from {:keys [limit ]}]
   (check-required-params symbol interval from)
   (call-api "/public/linear/kline" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "interval" interval "from" from "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn linear-kline-get
  "Get kline
  This will get kline"
  ([symbol interval from ] (linear-kline-get symbol interval from nil))
  ([symbol interval from optional-params]
   (:data (linear-kline-get-with-http-info symbol interval from optional-params))))

(defn linear-kline-mark-price-with-http-info
  "Get kline
  This will get mark price kline"
  ([symbol interval from ] (linear-kline-mark-price-with-http-info symbol interval from nil))
  ([symbol interval from {:keys [limit ]}]
   (check-required-params symbol interval from)
   (call-api "/public/linear/mark-price-kline" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "interval" interval "from" from "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-kline-mark-price
  "Get kline
  This will get mark price kline"
  ([symbol interval from ] (linear-kline-mark-price symbol interval from nil))
  ([symbol interval from optional-params]
   (:data (linear-kline-mark-price-with-http-info symbol interval from optional-params))))

