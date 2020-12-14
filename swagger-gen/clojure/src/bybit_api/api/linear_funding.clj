(ns bybit-api.api.linear-funding
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-funding-my-last-fee-with-http-info
  "Get prev funding
  This will get prev funding"
  ([] (linear-funding-my-last-fee-with-http-info nil))
  ([{:keys [symbol ]}]
   (call-api "/private/linear/funding/prev-funding" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-funding-my-last-fee
  "Get prev funding
  This will get prev funding"
  ([] (linear-funding-my-last-fee nil))
  ([optional-params]
   (:data (linear-funding-my-last-fee-with-http-info optional-params))))

(defn linear-funding-predicted-with-http-info
  "Get predicted funding rate and funding fee."
  [symbol ]
  (check-required-params symbol)
  (call-api "/private/linear/funding/predicted-funding" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"symbol" symbol }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn linear-funding-predicted
  "Get predicted funding rate and funding fee."
  [symbol ]
  (:data (linear-funding-predicted-with-http-info symbol)))

(defn linear-funding-prev-rate-with-http-info
  "Get prev funding
  This will get prev funding rate"
  [symbol ]
  (check-required-params symbol)
  (call-api "/public/linear/funding/prev-funding-rate" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"symbol" symbol }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn linear-funding-prev-rate
  "Get prev funding
  This will get prev funding rate"
  [symbol ]
  (:data (linear-funding-prev-rate-with-http-info symbol)))

