(ns bybit-api.api.linear-conditional
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-conditional-cancel-with-http-info
  "Cancel Active Order
  This will cancel linear active order"
  ([] (linear-conditional-cancel-with-http-info nil))
  ([{:keys [stop-order-id order-link-id symbol ]}]
   (call-api "/private/linear/stop-order/cancel" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"stop_order_id" stop-order-id "order_link_id" order-link-id "symbol" symbol }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-conditional-cancel
  "Cancel Active Order
  This will cancel linear active order"
  ([] (linear-conditional-cancel nil))
  ([optional-params]
   (:data (linear-conditional-cancel-with-http-info optional-params))))

(defn linear-conditional-cancel-all-with-http-info
  "Cancel all stop orders."
  [symbol ]
  (check-required-params symbol)
  (call-api "/private/linear/stop-order/cancel-all" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"symbol" symbol }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn linear-conditional-cancel-all
  "Cancel all stop orders."
  [symbol ]
  (:data (linear-conditional-cancel-all-with-http-info symbol)))

(defn linear-conditional-get-orders-with-http-info
  "Get linear Stop Orders
  This will get linear active orders"
  ([] (linear-conditional-get-orders-with-http-info nil))
  ([{:keys [stop-order-id order-link-id symbol order page limit stop-order-status ]}]
   (call-api "/private/linear/stop-order/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"stop_order_id" stop-order-id "order_link_id" order-link-id "symbol" symbol "order" order "page" page "limit" limit "stop_order_status" stop-order-status }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-conditional-get-orders
  "Get linear Stop Orders
  This will get linear active orders"
  ([] (linear-conditional-get-orders nil))
  ([optional-params]
   (:data (linear-conditional-get-orders-with-http-info optional-params))))

(defn linear-conditional-new-with-http-info
  "Create linear stop Order
  This will create linear stop order"
  ([] (linear-conditional-new-with-http-info nil))
  ([{:keys [symbol side order-type qty price base-price stop-px time-in-force trigger-by reduce-only close-on-trigger order-link-id take-profit stop-loss tp-trigger-by sl-trigger-by ]}]
   (call-api "/private/linear/stop-order/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "side" side "order_type" order-type "qty" qty "price" price "base_price" base-price "stop_px" stop-px "time_in_force" time-in-force "trigger_by" trigger-by "reduce_only" reduce-only "close_on_trigger" close-on-trigger "order_link_id" order-link-id "take_profit" take-profit "stop_loss" stop-loss "tp_trigger_by" tp-trigger-by "sl_trigger_by" sl-trigger-by }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-conditional-new
  "Create linear stop Order
  This will create linear stop order"
  ([] (linear-conditional-new nil))
  ([optional-params]
   (:data (linear-conditional-new-with-http-info optional-params))))

(defn linear-conditional-query-with-http-info
  "Get Stop Orders(real-time)
  This will get linear stop orders(real-time)"
  ([] (linear-conditional-query-with-http-info nil))
  ([{:keys [symbol stop-order-id order-link-id ]}]
   (call-api "/private/linear/stop-order/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "stop_order_id" stop-order-id "order_link_id" order-link-id }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-conditional-query
  "Get Stop Orders(real-time)
  This will get linear stop orders(real-time)"
  ([] (linear-conditional-query nil))
  ([optional-params]
   (:data (linear-conditional-query-with-http-info optional-params))))

(defn linear-conditional-replace-with-http-info
  "Replace conditional order"
  ([symbol ] (linear-conditional-replace-with-http-info symbol nil))
  ([symbol {:keys [stop-order-id order-link-id p-r-qty p-r-price p-r-trigger-price ]}]
   (check-required-params symbol)
   (call-api "/private/linear/stop-order/replace" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "stop_order_id" stop-order-id "order_link_id" order-link-id "p_r_qty" p-r-qty "p_r_price" p-r-price "p_r_trigger_price" p-r-trigger-price }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-conditional-replace
  "Replace conditional order"
  ([symbol ] (linear-conditional-replace symbol nil))
  ([symbol optional-params]
   (:data (linear-conditional-replace-with-http-info symbol optional-params))))

