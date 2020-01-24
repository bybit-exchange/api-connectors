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
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn wallet-get-records
  "Get wallet fund records"
  ([] (wallet-get-records nil))
  ([optional-params]
   (:data (wallet-get-records-with-http-info optional-params))))

(defn wallet-get-risk-limit-with-http-info
  "Get risk limit."
  []
  (call-api "/open-api/wallet/risk-limit/list" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn wallet-get-risk-limit
  "Get risk limit."
  []
  (:data (wallet-get-risk-limit-with-http-info)))

(defn wallet-set-risk-limit-with-http-info
  "Set risk limit"
  [symbol risk-id ]
  (check-required-params symbol risk-id)
  (call-api "/open-api/wallet/risk-limit" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"symbol" symbol "risk_id" risk-id }
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn wallet-set-risk-limit
  "Set risk limit"
  [symbol risk-id ]
  (:data (wallet-set-risk-limit-with-http-info symbol risk-id)))

(defn wallet-withdraw-with-http-info
  "Get wallet fund records"
  ([] (wallet-withdraw-with-http-info nil))
  ([{:keys [start-date end-date coin status page limit ]}]
   (call-api "/open-api/wallet/withdraw/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"start_date" start-date "end_date" end-date "coin" coin "status" status "page" page "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn wallet-withdraw
  "Get wallet fund records"
  ([] (wallet-withdraw nil))
  ([optional-params]
   (:data (wallet-withdraw-with-http-info optional-params))))

