(ns bybit-api.api.funding
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn funding-get-rate-with-http-info
  "Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval's fund fee settlement is based on the previous interval's fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day."
  [symbol ]
  (check-required-params symbol)
  (call-api "/open-api/funding/prev-funding" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"symbol" symbol }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn funding-get-rate
  "Funding settlement occurs every 8 hours at 00:00 UTC, 08:00 UTC and 16:00 UTC. The current interval's fund fee settlement is based on the previous interval's fund rate. For example, at 16:00, the settlement is based on the fund rate generated at 8:00. The fund rate generated at 16:00 will be used at 0:00 on the next day."
  [symbol ]
  (:data (funding-get-rate-with-http-info symbol)))

(defn funding-predicted-with-http-info
  "Get predicted funding rate and funding fee."
  [symbol ]
  (check-required-params symbol)
  (call-api "/open-api/funding/predicted-funding" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"symbol" symbol }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn funding-predicted
  "Get predicted funding rate and funding fee."
  [symbol ]
  (:data (funding-predicted-with-http-info symbol)))

(defn funding-predicted-rate-with-http-info
  "Get predicted funding rate and funding fee."
  [symbol ]
  (check-required-params symbol)
  (call-api "/open-api/funding/prev-funding-rate" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"symbol" symbol }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn funding-predicted-rate
  "Get predicted funding rate and funding fee."
  [symbol ]
  (:data (funding-predicted-rate-with-http-info symbol)))

