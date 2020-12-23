(ns bybit-api.api.order
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn order-cancel-with-http-info
  "Get my active order list."
  ([symbol ] (order-cancel-with-http-info symbol nil))
  ([symbol {:keys [order-id order-link-id ]}]
   (check-required-params symbol)
   (call-api "/v2/private/order/cancel" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"order_id" order-id "symbol" symbol "order_link_id" order-link-id }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-cancel
  "Get my active order list."
  ([symbol ] (order-cancel symbol nil))
  ([symbol optional-params]
   (:data (order-cancel-with-http-info symbol optional-params))))

(defn order-cancel-all-with-http-info
  "Get my active order list."
  [symbol ]
  (check-required-params symbol)
  (call-api "/v2/private/order/cancelAll" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"symbol" symbol }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn order-cancel-all
  "Get my active order list."
  [symbol ]
  (:data (order-cancel-all-with-http-info symbol)))

(defn order-get-orders-with-http-info
  "Get my active order list."
  ([symbol ] (order-get-orders-with-http-info symbol nil))
  ([symbol {:keys [limit order-status direction cursor ]}]
   (check-required-params symbol)
   (call-api "/v2/private/order/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "limit" limit "order_status" order-status "direction" direction "cursor" cursor }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-get-orders
  "Get my active order list."
  ([symbol ] (order-get-orders symbol nil))
  ([symbol optional-params]
   (:data (order-get-orders-with-http-info symbol optional-params))))

(defn order-new-with-http-info
  "Place active order"
  ([side symbol order-type qty time-in-force ] (order-new-with-http-info side symbol order-type qty time-in-force nil))
  ([side symbol order-type qty time-in-force {:keys [price take-profit stop-loss reduce-only close-on-trigger order-link-id ]}]
   (check-required-params side symbol order-type qty time-in-force)
   (call-api "/v2/private/order/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"side" side "symbol" symbol "order_type" order-type "qty" qty "price" price "time_in_force" time-in-force "take_profit" take-profit "stop_loss" stop-loss "reduce_only" reduce-only "close_on_trigger" close-on-trigger "order_link_id" order-link-id }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-new
  "Place active order"
  ([side symbol order-type qty time-in-force ] (order-new side symbol order-type qty time-in-force nil))
  ([side symbol order-type qty time-in-force optional-params]
   (:data (order-new-with-http-info side symbol order-type qty time-in-force optional-params))))

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
  ([symbol ] (order-replace-with-http-info symbol nil))
  ([symbol {:keys [order-id order-link-id p-r-qty p-r-price ]}]
   (check-required-params symbol)
   (call-api "/v2/private/order/replace" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"order_id" order-id "order_link_id" order-link-id "symbol" symbol "p_r_qty" p-r-qty "p_r_price" p-r-price }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn order-replace
  "Replace active order. Only incomplete orders can be modified."
  ([symbol ] (order-replace symbol nil))
  ([symbol optional-params]
   (:data (order-replace-with-http-info symbol optional-params))))

