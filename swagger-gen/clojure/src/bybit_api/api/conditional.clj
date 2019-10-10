(ns bybit-api.api.conditional
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn conditional-cancel-with-http-info
  "Cancel conditional order."
  [stop-order-id ]
  (check-required-params stop-order-id)
  (call-api "/open-api/stop-order/cancel" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"stop_order_id" stop-order-id }
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    []}))

(defn conditional-cancel
  "Cancel conditional order."
  [stop-order-id ]
  (:data (conditional-cancel-with-http-info stop-order-id)))

(defn conditional-get-orders-with-http-info
  "Get my conditional order list."
  ([] (conditional-get-orders-with-http-info nil))
  ([{:keys [stop-order-id order-link-id symbol order page limit ]}]
   (call-api "/open-api/stop-order/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"stop_order_id" stop-order-id "order_link_id" order-link-id "symbol" symbol "order" order "page" page "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn conditional-get-orders
  "Get my conditional order list."
  ([] (conditional-get-orders nil))
  ([optional-params]
   (:data (conditional-get-orders-with-http-info optional-params))))

(defn conditional-new-with-http-info
  "Place a new conditional order."
  ([side symbol order-type qty price base-price stop-px time-in-force ] (conditional-new-with-http-info side symbol order-type qty price base-price stop-px time-in-force nil))
  ([side symbol order-type qty price base-price stop-px time-in-force {:keys [close-on-trigger order-link-id ]}]
   (check-required-params side symbol order-type qty price base-price stop-px time-in-force)
   (call-api "/open-api/stop-order/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"side" side "symbol" symbol "order_type" order-type "qty" qty "price" price "base_price" base-price "stop_px" stop-px "time_in_force" time-in-force "close_on_trigger" close-on-trigger "order_link_id" order-link-id }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn conditional-new
  "Place a new conditional order."
  ([side symbol order-type qty price base-price stop-px time-in-force ] (conditional-new side symbol order-type qty price base-price stop-px time-in-force nil))
  ([side symbol order-type qty price base-price stop-px time-in-force optional-params]
   (:data (conditional-new-with-http-info side symbol order-type qty price base-price stop-px time-in-force optional-params))))

