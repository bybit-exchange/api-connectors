(ns bybit-api.api.execution
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn execution-get-trades-with-http-info
  "Get the trade records of a order."
  [order-id ]
  (check-required-params order-id)
  (call-api "/v2/private/execution/list" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"order_id" order-id }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn execution-get-trades
  "Get the trade records of a order."
  [order-id ]
  (:data (execution-get-trades-with-http-info order-id)))

