(ns hitechcloud.sdk.service_status
  (:require [hitechcloud.sdk.http-client :as http]))

;; Service Status: list and manage service statuses

(defn list "GET /api/statuses - Returns a list of all statuses" [client & [params]] (http-get client "/api/statuses" params))

(defn get "PUT /api/statuses/{id} - Returns details of status" [client & [params]] (http-put client "/api/statuses/{id}" params))

