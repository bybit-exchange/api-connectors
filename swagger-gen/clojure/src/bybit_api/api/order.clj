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
              :query-params  {"order_id" order-id "symbol" symbol }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

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
              :content-types []
              :accepts       []
              :auth-names    []})))

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
              :query-params  {"side" side "symbol" symbol "order_type" order-type "qty" qty "price" price "time_in_force" time-in-force "take_profit" take-profit "stop_loss" stop-loss "reduce_only" reduce-only "close_on_trigger" close-on-trigger "order_link_id" order-link-id }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn order-new
  "Place active order"
  ([side symbol order-type qty price time-in-force ] (order-new side symbol order-type qty price time-in-force nil))
  ([side symbol order-type qty price time-in-force optional-params]
   (:data (order-new-with-http-info side symbol order-type qty price time-in-force optional-params))))

