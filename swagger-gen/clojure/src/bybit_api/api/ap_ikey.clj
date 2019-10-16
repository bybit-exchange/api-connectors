(ns bybit-api.api.ap-ikey
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn a-p-ikey-info-with-http-info
  "Get account api-key information."
  []
  (call-api "/open-api/api-key" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "apiSignature" "timestamp"]}))

(defn a-p-ikey-info
  "Get account api-key information."
  []
  (:data (a-p-ikey-info-with-http-info)))

