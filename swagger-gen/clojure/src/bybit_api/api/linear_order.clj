(ns bybit-api.api.linear-order
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-order-cancel-with-http-info
  "Cancel Active Order
  This will cancel linear active order"
  ([] (linear-order-cancel-with-http-info nil))
  ([{:keys [order-id order-link-id symbol ]}]
   (call-api "/private/linear/order/cancel" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"order_id" order-id "order_link_id" order-link-id "symbol" symbol }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-order-cancel
  "Cancel Active Order
  This will cancel linear active order"
  ([] (linear-order-cancel nil))
  ([optional-params]
   (:data (linear-order-cancel-with-http-info optional-params))))

(defn linear-order-cancel-all-with-http-info
  "Cancel all active orders."
  [symbol ]
  (check-required-params symbol)
  (call-api "/private/linear/order/cancel-all" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"symbol" symbol }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn linear-order-cancel-all
  "Cancel all active orders."
  [symbol ]
  (:data (linear-order-cancel-all-with-http-info symbol)))

(defn linear-order-get-orders-with-http-info
  "Get linear Active Orders
  This will get linear active orders"
  ([] (linear-order-get-orders-with-http-info nil))
  ([{:keys [order-id order-link-id symbol order page limit order-status ]}]
   (call-api "/private/linear/order/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"order_id" order-id "order_link_id" order-link-id "symbol" symbol "order" order "page" page "limit" limit "order_status" order-status }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-order-get-orders
  "Get linear Active Orders
  This will get linear active orders"
  ([] (linear-order-get-orders nil))
  ([optional-params]
   (:data (linear-order-get-orders-with-http-info optional-params))))

(defn linear-order-new-with-http-info
  "Create Active Order
  This will create linear order"
  ([] (linear-order-new-with-http-info nil))
  ([{:keys [symbol side order-type time-in-force qty price take-profit stop-loss reduce-only tp-trigger-by sl-trigger-by close-on-trigger order-link-id ]}]
   (call-api "/private/linear/order/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "side" side "order_type" order-type "time_in_force" time-in-force "qty" qty "price" price "take_profit" take-profit "stop_loss" stop-loss "reduce_only" reduce-only "tp_trigger_by" tp-trigger-by "sl_trigger_by" sl-trigger-by "close_on_trigger" close-on-trigger "order_link_id" order-link-id }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-order-new
  "Create Active Order
  This will create linear order"
  ([] (linear-order-new nil))
  ([optional-params]
   (:data (linear-order-new-with-http-info optional-params))))

(defn linear-order-query-with-http-info
  "Get Active Orders(real-time)
  This will get linear active orders(real-time)"
  ([] (linear-order-query-with-http-info nil))
  ([{:keys [symbol order-id order-link-id ]}]
   (call-api "/private/linear/order/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "order_id" order-id "order_link_id" order-link-id }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-order-query
  "Get Active Orders(real-time)
  This will get linear active orders(real-time)"
  ([] (linear-order-query nil))
  ([optional-params]
   (:data (linear-order-query-with-http-info optional-params))))

(defn linear-order-replace-with-http-info
  "Replace Active Order"
  ([symbol ] (linear-order-replace-with-http-info symbol nil))
  ([symbol {:keys [order-id order-link-id p-r-qty p-r-price ]}]
   (check-required-params symbol)
   (call-api "/private/linear/order/replace" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"symbol" symbol "order_id" order-id "order_link_id" order-link-id "p_r_qty" p-r-qty "p_r_price" p-r-price }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-order-replace
  "Replace Active Order"
  ([symbol ] (linear-order-replace symbol nil))
  ([symbol optional-params]
   (:data (linear-order-replace-with-http-info symbol optional-params))))

