(ns hitechcloud.sdk.ssl
  (:require [hitechcloud.sdk.http-client :as http]))

;; SSL Certificates: list, order, download certificates

(defn list "GET /api/certificate - List all SSL certificates" [client & [params]] (http-get client "/api/certificate" params))

(defn get "GET /api/certificate/{id} - Return certificate details" [client & [params]] (http-get client "/api/certificate/{id}" params))

(defn download "GET /api/certificate/{id}/crt - Download X.509 certificate" [client & [params]] (http-get client "/api/certificate/{id}/crt" params))

(defn list_available "GET /api/certificate/order - List available certificates for purchase" [client & [params]] (http-get client "/api/certificate/order" params))

(defn order "POST /api/certificate/order - Order new certificate" [client & [params]] (http-post client "/api/certificate/order" params))

(defn list_server_software "GET /api/certificate/order/{product_id}/software - List server software" [client & [params]] (http-get client "/api/certificate/order/{product_id}/software" params))

