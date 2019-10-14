(ns bybit-api.api.wallet
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn wallet-get-records-with-http-info
  "Get wallet fund records"
  ([] (wallet-get-records-with-http-info nil))
  ([{:keys [start-date end-date currency wallet-fund-type page limit ]}]
   (call-api "/open-api/wallet/fund/records" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"start_date" start-date "end_date" end-date "currency" currency "wallet_fund_type" wallet-fund-type "page" page "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature"]})))

(defn wallet-get-records
  "Get wallet fund records"
  ([] (wallet-get-records nil))
  ([optional-params]
   (:data (wallet-get-records-with-http-info optional-params))))

