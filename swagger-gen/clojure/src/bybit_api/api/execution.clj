(ns bybit-api.api.execution
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn execution-get-trades-with-http-info
  "Get user’s trade records."
  ([] (execution-get-trades-with-http-info nil))
  ([{:keys [order-id symbol start-time page limit ]}]
   (call-api "/v2/private/execution/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"order_id" order-id "symbol" symbol "start_time" start-time "page" page "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn execution-get-trades
  "Get user’s trade records."
  ([] (execution-get-trades nil))
  ([optional-params]
   (:data (execution-get-trades-with-http-info optional-params))))

(defn positions-close-pnl-records-with-http-info
  "Get user's closed profit and loss records"
  ([symbol ] (positions-close-pnl-records-with-http-info symbol nil))
  ([symbol {:keys [start-time end-time exec-type page limit ]}]
   (check-required-params symbol)
   (call-api "/v2/private/trade/closed-pnl/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "start_time" start-time "end_time" end-time "exec_type" exec-type "page" page "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn positions-close-pnl-records
  "Get user's closed profit and loss records"
  ([symbol ] (positions-close-pnl-records symbol nil))
  ([symbol optional-params]
   (:data (positions-close-pnl-records-with-http-info symbol optional-params))))

