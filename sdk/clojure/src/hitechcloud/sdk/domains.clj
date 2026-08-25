(ns hitechcloud.sdk.domains
  (:require [hitechcloud.sdk.http-client :as http]))

;; Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding

(defn list "GET /api/domain - List domains under your account" [client & [params]] (http-get client "/api/domain" params))

(defn get "GET /api/domain/{id} - Get domain details" [client & [params]] (http-get client "/api/domain/{id}" params))

(defn get_by_name "GET /api/domain/name/{name} - Get domain details by name" [client & [params]] (http-get client "/api/domain/name/{name}" params))

(defn whois "GET /api/whois/{domain} - WHOIS lookup" [client & [params]] (http-get client "/api/whois/{domain}" params))

(defn whois_lookup "GET /api/whoislookup/{domain} - Perform WHOIS lookup" [client & [params]] (http-get client "/api/whoislookup/{domain}" params))

(defn check_availability "GET /api/domain/availability/{domain} - Check domain availability" [client & [params]] (http-get client "/api/domain/availability/{domain}" params))

(defn get_nameservers "GET /api/domain/{id}/ns - Get domain nameservers" [client & [params]] (http-get client "/api/domain/{id}/ns" params))

(defn update_nameservers "PUT /api/domain/{id}/ns - Update domain nameservers" [client & [params]] (http-put client "/api/domain/{id}/ns" params))

(defn get_epp_code "GET /api/domain/{id}/epp - Get domain EPP code" [client & [params]] (http-get client "/api/domain/{id}/epp" params))

(defn sync "GET /api/domain/{id}/sync - Synchronize domain" [client & [params]] (http-get client "/api/domain/{id}/sync" params))

(defn get_lock "GET /api/domain/{id}/reglock - Get domain lock status" [client & [params]] (http-get client "/api/domain/{id}/reglock" params))

(defn update_lock "PUT /api/domain/{id}/reglock - Update domain lock" [client & [params]] (http-put client "/api/domain/{id}/reglock" params))

(defn update_id_protection "PUT /api/domain/{id}/idprotection - Update ID protection" [client & [params]] (http-put client "/api/domain/{id}/idprotection" params))

(defn get_contact "GET /api/domain/{id}/contact - Get domain contact info" [client & [params]] (http-get client "/api/domain/{id}/contact" params))

(defn update_contact "PUT /api/domain/{id}/contact - Update domain contact info" [client & [params]] (http-put client "/api/domain/{id}/contact" params))

(defn get_email_forwarding "GET /api/domain/{id}/email/forwarding - Get email forwarding" [client & [params]] (http-get client "/api/domain/{id}/email/forwarding" params))

(defn update_email_forwarding "PUT /api/domain/{id}/email/forwarding - Update email forwarding" [client & [params]] (http-put client "/api/domain/{id}/email/forwarding" params))

(defn get_available_tlds "GET /api/domain/order - List available TLDs" [client & [params]] (http-get client "/api/domain/order" params))

(defn order "POST /api/domain/order - Order new domain" [client & [params]] (http-post client "/api/domain/order" params))

(defn renew "POST /api/domain/{id}/renew - Renew domain" [client & [params]] (http-post client "/api/domain/{id}/renew" params))

(defn get_tld_form "GET /api/domain/order/{id}/form - Get additional data for TLD" [client & [params]] (http-get client "/api/domain/order/{id}/form" params))

(defn get_documents "GET /api/domain/{id}/documents - Get domain documents" [client & [params]] (http-get client "/api/domain/{id}/documents" params))

