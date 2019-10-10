(ns bybit-api.api.symbol
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn symbol-get-with-http-info
  "Query Symbols."
  []
  (call-api "/v2/public/symbols" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    []}))

(defn symbol-get
  "Query Symbols."
  []
  (:data (symbol-get-with-http-info)))

