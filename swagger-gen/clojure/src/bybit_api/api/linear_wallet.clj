(ns bybit-api.api.linear-wallet
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-wallet-get-risk-limit-with-http-info
  "Get risk limit.
  This will get risk limit."
  []
  (call-api "/public/linear/risk-limit" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn linear-wallet-get-risk-limit
  "Get risk limit.
  This will get risk limit."
  []
  (:data (linear-wallet-get-risk-limit-with-http-info)))

