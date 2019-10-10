(ns bybit-api.api.common
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn common-get-with-http-info
  "Get bybit server time."
  []
  (call-api "/v2/public/time" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    []}))

(defn common-get
  "Get bybit server time."
  []
  (:data (common-get-with-http-info)))

