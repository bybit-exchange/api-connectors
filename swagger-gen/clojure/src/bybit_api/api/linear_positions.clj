(ns bybit-api.api.linear-positions
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-positions-change-margin-with-http-info
  "Add/Reduce Margin
  This will Add/Reduce Margin"
  ([] (linear-positions-change-margin-with-http-info nil))
  ([{:keys [symbol side margin ]}]
   (call-api "/private/linear/position/add-margin" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "side" side "margin" margin }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-change-margin
  "Add/Reduce Margin
  This will Add/Reduce Margin"
  ([] (linear-positions-change-margin nil))
  ([optional-params]
   (:data (linear-positions-change-margin-with-http-info optional-params))))

(defn linear-positions-close-pnl-records-with-http-info
  "Get user's closed profit and loss records.
  This will get user's closed profit and loss records."
  ([] (linear-positions-close-pnl-records-with-http-info nil))
  ([{:keys [symbol start-time end-time exec-type page limit ]}]
   (call-api "/private/linear/trade/closed-pnl/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "start_time" start-time "end_time" end-time "exec_type" exec-type "page" page "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-close-pnl-records
  "Get user's closed profit and loss records.
  This will get user's closed profit and loss records."
  ([] (linear-positions-close-pnl-records nil))
  ([optional-params]
   (:data (linear-positions-close-pnl-records-with-http-info optional-params))))

(defn linear-positions-my-position-with-http-info
  "Get my position list.
  This will get my position list."
  ([] (linear-positions-my-position-with-http-info nil))
  ([{:keys [symbol ]}]
   (call-api "/private/linear/position/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-my-position
  "Get my position list.
  This will get my position list."
  ([] (linear-positions-my-position nil))
  ([optional-params]
   (:data (linear-positions-my-position-with-http-info optional-params))))

(defn linear-positions-save-leverage-with-http-info
  "Set leverage
  This will Set Leverage"
  ([] (linear-positions-save-leverage-with-http-info nil))
  ([{:keys [symbol buy-leverage sell-leverage ]}]
   (call-api "/private/linear/position/set-leverage" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "buy_leverage" buy-leverage "sell_leverage" sell-leverage }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-save-leverage
  "Set leverage
  This will Set Leverage"
  ([] (linear-positions-save-leverage nil))
  ([optional-params]
   (:data (linear-positions-save-leverage-with-http-info optional-params))))

(defn linear-positions-set-auto-add-margin-with-http-info
  "Set auto add margin
  This will Set auto add margin"
  ([] (linear-positions-set-auto-add-margin-with-http-info nil))
  ([{:keys [symbol side auto-add-margin ]}]
   (call-api "/private/linear/position/set-auto-add-margin" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "side" side "auto_add_margin" auto-add-margin }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-set-auto-add-margin
  "Set auto add margin
  This will Set auto add margin"
  ([] (linear-positions-set-auto-add-margin nil))
  ([optional-params]
   (:data (linear-positions-set-auto-add-margin-with-http-info optional-params))))

(defn linear-positions-switch-isolated-with-http-info
  "Switch isolated
  This will switch isolated"
  ([] (linear-positions-switch-isolated-with-http-info nil))
  ([{:keys [symbol is-isolated buy-leverage sell-leverage ]}]
   (call-api "/private/linear/position/switch-isolated" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "is_isolated" is-isolated "buy_leverage" buy-leverage "sell_leverage" sell-leverage }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-switch-isolated
  "Switch isolated
  This will switch isolated"
  ([] (linear-positions-switch-isolated nil))
  ([optional-params]
   (:data (linear-positions-switch-isolated-with-http-info optional-params))))

(defn linear-positions-switch-mode-with-http-info
  "Switch Mode
  This will Switch TP/SL Mode"
  ([] (linear-positions-switch-mode-with-http-info nil))
  ([{:keys [symbol tp-sl-mode ]}]
   (call-api "/private/linear/tpsl/switch-mode" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "tp_sl_mode" tp-sl-mode }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-switch-mode
  "Switch Mode
  This will Switch TP/SL Mode"
  ([] (linear-positions-switch-mode nil))
  ([optional-params]
   (:data (linear-positions-switch-mode-with-http-info optional-params))))

(defn linear-positions-trading-stop-with-http-info
  "Set tradingStop
  This will set tradingStop"
  ([] (linear-positions-trading-stop-with-http-info nil))
  ([{:keys [symbol side take-profit stop-loss trailing-stop tp-trigger-by sl-trigger-by sl-size tp-size ]}]
   (call-api "/private/linear/position/trading-stop" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "side" side "take_profit" take-profit "stop_loss" stop-loss "trailing_stop" trailing-stop "tp_trigger_by" tp-trigger-by "sl_trigger_by" sl-trigger-by "sl_size" sl-size "tp_size" tp-size }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-positions-trading-stop
  "Set tradingStop
  This will set tradingStop"
  ([] (linear-positions-trading-stop nil))
  ([optional-params]
   (:data (linear-positions-trading-stop-with-http-info optional-params))))

