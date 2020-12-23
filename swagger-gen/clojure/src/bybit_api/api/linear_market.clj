(ns bybit-api.api.linear-market
  (:require [bybit-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn linear-market-trading-with-http-info
  "Get recent trades
  This will get recent trades"
  ([symbol ] (linear-market-trading-with-http-info symbol nil))
  ([symbol {:keys [limit ]}]
   (check-required-params symbol)
   (call-api "/public/linear/recent-trading-records" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"symbol" symbol "limit" limit }
              :form-params   {}
              :content-types ["application/json" "application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "apiSignature" "timestamp"]})))

(defn linear-market-trading
  "Get recent trades
  This will get recent trades"
  ([symbol ] (linear-market-trading symbol nil))
  ([symbol optional-params]
   (:data (linear-market-trading-with-http-info symbol optional-params))))

