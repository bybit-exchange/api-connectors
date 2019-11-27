(ns bybit-api.api.order
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn order-cancel-with-http-info
  "Get my active order list."
  ([order-id ] (order-cancel-with-http-info order-id nil))
  ([order-id {:keys [symbol ]}]
   (check-required-params order-id)
   (call-api "/open-api/order/cancel" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"order_id" order-id "symbol" symbol }
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-cancel
  "Get my active order list."
  ([order-id ] (order-cancel order-id nil))
  ([order-id optional-params]
   (:data (order-cancel-with-http-info order-id optional-params))))

(defn order-get-orders-with-http-info
  "Get my active order list."
  ([] (order-get-orders-with-http-info nil))
  ([{:keys [order-id order-link-id symbol order page limit order-status ]}]
   (call-api "/open-api/order/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"order_id" order-id "order_link_id" order-link-id "symbol" symbol "order" order "page" page "limit" limit "order_status" order-status }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-get-orders
  "Get my active order list."
  ([] (order-get-orders nil))
  ([optional-params]
   (:data (order-get-orders-with-http-info optional-params))))

(defn order-new-with-http-info
  "Place active order"
  ([side symbol order-type qty price time-in-force ] (order-new-with-http-info side symbol order-type qty price time-in-force nil))
  ([side symbol order-type qty price time-in-force {:keys [take-profit stop-loss reduce-only close-on-trigger order-link-id ]}]
   (check-required-params side symbol order-type qty price time-in-force)
   (call-api "/open-api/order/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"price" price "take_profit" take-profit }
              :form-params   {"side" side "symbol" symbol "order_type" order-type "qty" qty "time_in_force" time-in-force "stop_loss" stop-loss "reduce_only" reduce-only "close_on_trigger" close-on-trigger "order_link_id" order-link-id }
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-new
  "Place active order"
  ([side symbol order-type qty price time-in-force ] (order-new side symbol order-type qty price time-in-force nil))
  ([side symbol order-type qty price time-in-force optional-params]
   (:data (order-new-with-http-info side symbol order-type qty price time-in-force optional-params))))

(defn order-query-with-http-info
  "Get my active order list."
  ([] (order-query-with-http-info nil))
  ([{:keys [order-id symbol ]}]
   (call-api "/v2/private/order" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"order_id" order-id "symbol" symbol }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-query
  "Get my active order list."
  ([] (order-query nil))
  ([optional-params]
   (:data (order-query-with-http-info optional-params))))

(defn order-replace-with-http-info
  "Replace active order. Only incomplete orders can be modified."
  ([order-id symbol ] (order-replace-with-http-info order-id symbol nil))
  ([order-id symbol {:keys [p-r-qty p-r-price ]}]
   (check-required-params order-id symbol)
   (call-api "/open-api/order/replace" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"order_id" order-id "symbol" symbol "p_r_qty" p-r-qty "p_r_price" p-r-price }
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-replace
  "Replace active order. Only incomplete orders can be modified."
  ([order-id symbol ] (order-replace order-id symbol nil))
  ([order-id symbol optional-params]
   (:data (order-replace-with-http-info order-id symbol optional-params))))

