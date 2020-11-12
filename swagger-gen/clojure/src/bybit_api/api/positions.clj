(ns bybit-api.api.positions
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn positions-change-margin-with-http-info
  "Update margin."
  [symbol margin ]
  (check-required-params symbol margin)
  (call-api "/position/change-position-margin" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"symbol" symbol "margin" margin }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn positions-change-margin
  "Update margin."
  [symbol margin ]
  (:data (positions-change-margin-with-http-info symbol margin)))

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

(defn positions-my-position-with-http-info
  "Get my position list."
  ([] (positions-my-position-with-http-info nil))
  ([{:keys [symbol ]}]
   (call-api "/v2/private/position/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn positions-my-position
  "Get my position list."
  ([] (positions-my-position nil))
  ([optional-params]
   (:data (positions-my-position-with-http-info optional-params))))

(defn positions-save-leverage-with-http-info
  "Change user leverage."
  [symbol leverage ]
  (check-required-params symbol leverage)
  (call-api "/user/leverage/save" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"symbol" symbol "leverage" leverage }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn positions-save-leverage
  "Change user leverage."
  [symbol leverage ]
  (:data (positions-save-leverage-with-http-info symbol leverage)))

(defn positions-trading-stop-with-http-info
  "Set Trading-Stop Condition."
  ([symbol ] (positions-trading-stop-with-http-info symbol nil))
  ([symbol {:keys [take-profit stop-loss trailing-stop new-trailing-active ]}]
   (check-required-params symbol)
   (call-api "/open-api/position/trading-stop" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "take_profit" take-profit "stop_loss" stop-loss "trailing_stop" trailing-stop "new_trailing_active" new-trailing-active }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn positions-trading-stop
  "Set Trading-Stop Condition."
  ([symbol ] (positions-trading-stop symbol nil))
  ([symbol optional-params]
   (:data (positions-trading-stop-with-http-info symbol optional-params))))

