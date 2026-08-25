(ns hitechcloud.sdk.dns_manage
  (:require [hitechcloud.sdk.http-client :as http]))

;; DNS Manage: domain DNS records, DNSSEC, nameserver registration

(defn get_records "GET /api/domain/{id}/dns - List DNS records" [client & [params]] (http-get client "/api/domain/{id}/dns" params))

(defn create_record "POST /api/domain/{id}/dns - Create DNS record" [client & [params]] (http-post client "/api/domain/{id}/dns" params))

(defn update_record "PUT /api/domain/{id}/dns/{index} - Update DNS record" [client & [params]] (http-put client "/api/domain/{id}/dns/{index}" params))

(defn delete_record "DELETE /api/domain/{id}/dns/{index} - Remove DNS record" [client & [params]] (http-delete client "/api/domain/{id}/dns/{index}" params))

(defn get_record_types "GET /api/domain/{id}/dns/types - List supported record types" [client & [params]] (http-get client "/api/domain/{id}/dns/types" params))

(defn get_dnssec_flags "GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags" [client & [params]] (http-get client "/api/domain/{id}/dnssec/flags" params))

(defn get_dnssec_records "GET /api/domain/{id}/dnssec - Get DNSSEC records" [client & [params]] (http-get client "/api/domain/{id}/dnssec" params))

(defn create_dnssec_record "POST /api/domain/{id}/dnssec - Create DNSSEC record" [client & [params]] (http-post client "/api/domain/{id}/dnssec" params))

(defn delete_dnssec_record "DELETE /api/domain/{id}/dnssec - Remove DNSSEC record" [client & [params]] (http-delete client "/api/domain/{id}/dnssec" params))

(defn register_nameserver "POST /api/domain/{id}/reg - Register domain nameserver" [client & [params]] (http-post client "/api/domain/{id}/reg" params))

