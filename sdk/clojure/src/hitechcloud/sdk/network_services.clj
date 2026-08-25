(ns hitechcloud.sdk.network_services
  (:require [hitechcloud.sdk.http-client :as http]))

;; Network Services: IP addresses and reverse DNS for services

(defn list_ips "GET /api/service/{id}/ip - List Service IP Addresses" [client & [params]] (http-get client "/api/service/{id}/ip" params))

(defn get_rdns "GET /api/service/{id}/rdns - Get reverse DNS entries" [client & [params]] (http-get client "/api/service/{id}/rdns" params))

(defn update_rdns "POST /api/service/{id}/rdns - Update reverse DNS entries" [client & [params]] (http-post client "/api/service/{id}/rdns" params))

