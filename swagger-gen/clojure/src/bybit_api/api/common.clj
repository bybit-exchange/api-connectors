(ns bybit-api.api.common
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn common-announcements-with-http-info
  "Get Bybit OpenAPI announcements in the last 30 days in reverse order."
  []
  (call-api "/v2/public/announcement" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn common-announcements
  "Get Bybit OpenAPI announcements in the last 30 days in reverse order."
  []
  (:data (common-announcements-with-http-info)))

(defn common-get-lcp-with-http-info
  "Query LCP info."
  [symbol ]
  (check-required-params symbol)
  (call-api "/v2/private/account/lcp" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"symbol" symbol }
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn common-get-lcp
  "Query LCP info."
  [symbol ]
  (:data (common-get-lcp-with-http-info symbol)))

(defn common-get-time-with-http-info
  "Get bybit server time."
  []
  (call-api "/v2/public/time" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn common-get-time
  "Get bybit server time."
  []
  (:data (common-get-time-with-http-info)))

