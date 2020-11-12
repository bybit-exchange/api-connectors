(ns bybit-api.api.conditional
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn conditional-cancel-with-http-info
  "Cancel conditional order."
  ([symbol ] (conditional-cancel-with-http-info symbol nil))
  ([symbol {:keys [stop-order-id order-link-id ]}]
   (check-required-params symbol)
   (call-api "/v2/private/stop-order/cancel" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"stop_order_id" stop-order-id "order_link_id" order-link-id "symbol" symbol }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn conditional-cancel
  "Cancel conditional order."
  ([symbol ] (conditional-cancel symbol nil))
  ([symbol optional-params]
   (:data (conditional-cancel-with-http-info symbol optional-params))))

(defn conditional-cancel-all-with-http-info
  "Cancel conditional order."
  [symbol ]
  (check-required-params symbol)
  (call-api "/v2/private/stop-order/cancelAll" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"symbol" symbol }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn conditional-cancel-all
  "Cancel conditional order."
  [symbol ]
  (:data (conditional-cancel-all-with-http-info symbol)))

(defn conditional-get-orders-with-http-info
  "Get my conditional order list."
  ([symbol ] (conditional-get-orders-with-http-info symbol nil))
  ([symbol {:keys [stop-order-status limit direction cursor ]}]
   (check-required-params symbol)
   (call-api "/v2/private/stop-order/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "stop_order_status" stop-order-status "limit" limit "direction" direction "cursor" cursor }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn conditional-get-orders
  "Get my conditional order list."
  ([symbol ] (conditional-get-orders symbol nil))
  ([symbol optional-params]
   (:data (conditional-get-orders-with-http-info symbol optional-params))))

(defn conditional-new-with-http-info
  "Place a new conditional order."
  ([side symbol order-type qty base-price stop-px time-in-force ] (conditional-new-with-http-info side symbol order-type qty base-price stop-px time-in-force nil))
  ([side symbol order-type qty base-price stop-px time-in-force {:keys [price trigger-by close-on-trigger order-link-id ]}]
   (check-required-params side symbol order-type qty base-price stop-px time-in-force)
   (call-api "/v2/private/stop-order/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"side" side "symbol" symbol "order_type" order-type "qty" qty "price" price "base_price" base-price "stop_px" stop-px "time_in_force" time-in-force "trigger_by" trigger-by "close_on_trigger" close-on-trigger "order_link_id" order-link-id }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn conditional-new
  "Place a new conditional order."
  ([side symbol order-type qty base-price stop-px time-in-force ] (conditional-new side symbol order-type qty base-price stop-px time-in-force nil))
  ([side symbol order-type qty base-price stop-px time-in-force optional-params]
   (:data (conditional-new-with-http-info side symbol order-type qty base-price stop-px time-in-force optional-params))))

(defn conditional-query-with-http-info
  "Query real-time stop order information."
  ([] (conditional-query-with-http-info nil))
  ([{:keys [stop-order-id order-link-id symbol ]}]
   (call-api "/v2/private/stop-order" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"stop_order_id" stop-order-id "order_link_id" order-link-id "symbol" symbol }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn conditional-query
  "Query real-time stop order information."
  ([] (conditional-query nil))
  ([optional-params]
   (:data (conditional-query-with-http-info optional-params))))

(defn conditional-replace-with-http-info
  "Replace conditional order. Only incomplete orders can be modified."
  ([symbol ] (conditional-replace-with-http-info symbol nil))
  ([symbol {:keys [stop-order-id order-link-id p-r-qty p-r-price p-r-trigger-price ]}]
   (check-required-params symbol)
   (call-api "/v2/private/stop-order/replace" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"stop_order_id" stop-order-id "order_link_id" order-link-id "symbol" symbol "p_r_qty" p-r-qty "p_r_price" p-r-price "p_r_trigger_price" p-r-trigger-price }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn conditional-replace
  "Replace conditional order. Only incomplete orders can be modified."
  ([symbol ] (conditional-replace symbol nil))
  ([symbol optional-params]
   (:data (conditional-replace-with-http-info symbol optional-params))))

