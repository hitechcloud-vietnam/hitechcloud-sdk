(ns hitechcloud.sdk.hosting
  (:require [hitechcloud.sdk.http-client :as http]))

;; Hosting Services: reinstall, status, bandwidth, reset

(defn get_reinstall_details "GET /api/service/{id}/reinstall - Return installation options" [client & [params]] (http-get client "/api/service/{id}/reinstall" params))

(defn reinstall "POST /api/service/{id}/reinstall - Reinstall server" [client & [params]] (http-post client "/api/service/{id}/reinstall" params))

(defn get_status "GET /api/service/{id}/status - Return server power status" [client & [params]] (http-get client "/api/service/{id}/status" params))

(defn get_bandwidth_graphs "GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs" [client & [params]] (http-get client "/api/service/{id}/bandwidth-graphs" params))

(defn get_bandwidth_usage "GET /api/service/{id}/bandwidth - Return bandwidth usage and billing" [client & [params]] (http-get client "/api/service/{id}/bandwidth" params))

(defn reset "POST /api/service/{id}/reset - Reset server" [client & [params]] (http-post client "/api/service/{id}/reset" params))

