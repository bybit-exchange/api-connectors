(ns bybit-api.api.linear-execution
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-execution-get-trades-with-http-info
  "Get user's trading records.
  This will get user's trading records."
  ([] (linear-execution-get-trades-with-http-info nil))
  ([{:keys [symbol start-time end-time exec-type page limit ]}]
   (call-api "/private/linear/trade/execution/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "start_time" start-time "end_time" end-time "exec_type" exec-type "page" page "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-execution-get-trades
  "Get user's trading records.
  This will get user's trading records."
  ([] (linear-execution-get-trades nil))
  ([optional-params]
   (:data (linear-execution-get-trades-with-http-info optional-params))))

