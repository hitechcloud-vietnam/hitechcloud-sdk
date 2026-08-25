(ns hitechcloud.sdk.services
  (:require [hitechcloud.sdk.http-client :as http]))

;; Services: list, details, cancel, renew, billing cycle

(defn list "GET /api/service - List all services" [client & [params]] (http-get client "/api/service" params))

(defn get "GET /api/service/{id} - Return service details" [client & [params]] (http-get client "/api/service/{id}" params))

(defn list_methods "GET /api/service/{id}/methods - List methods available for service" [client & [params]] (http-get client "/api/service/{id}/methods" params))

(defn cancel "POST /api/service/{id}/cancel - Request service cancellation" [client & [params]] (http-post client "/api/service/{id}/cancel" params))

(defn get_label "GET /api/service/{id}/label - Show current service label" [client & [params]] (http-get client "/api/service/{id}/label" params))

(defn set_label "POST /api/service/{id}/label - Set new custom label" [client & [params]] (http-post client "/api/service/{id}/label" params))

(defn renew "POST /api/service/{id}/renew - Generate renewal invoice" [client & [params]] (http-post client "/api/service/{id}/renew" params))

(defn list_billing_cycles "GET /api/service/{id}/cycle - Get billing cycle options" [client & [params]] (http-get client "/api/service/{id}/cycle" params))

(defn change_billing_cycle "POST /api/service/{id}/cycle - Change billing cycle" [client & [params]] (http-post client "/api/service/{id}/cycle" params))

