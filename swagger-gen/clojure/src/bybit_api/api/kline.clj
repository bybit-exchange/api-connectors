(ns bybit-api.api.kline
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn kline-get-with-http-info
  "Query historical kline."
  ([symbol interval from ] (kline-get-with-http-info symbol interval from nil))
  ([symbol interval from {:keys [limit ]}]
   (check-required-params symbol interval from)
   (call-api "/v2/public/kline/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "interval" interval "from" from "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn kline-get
  "Query historical kline."
  ([symbol interval from ] (kline-get symbol interval from nil))
  ([symbol interval from optional-params]
   (:data (kline-get-with-http-info symbol interval from optional-params))))

