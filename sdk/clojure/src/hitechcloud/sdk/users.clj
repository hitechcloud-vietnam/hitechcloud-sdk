(ns hitechcloud.sdk.users
  (:require [hitechcloud.sdk.http-client :as http]))

;; User Profile: view/update account details, logs

(defn get_details "GET /api/details - Return registration details for my account" [client & [params]] (http-get client "/api/details" params))

(defn update_details "PUT /api/details - Update registration details" [client & [params]] (http-put client "/api/details" params))

(defn get_logs "GET /api/logs - Returns logs from history" [client & [params]] (http-get client "/api/logs" params))

