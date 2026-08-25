(ns hitechcloud.sdk.dns
  (:require [hitechcloud.sdk.http-client :as http]))

;; DNS: zones and records management for services

(defn list "GET /api/dns - List all DNS zones" [client & [params]] (http-get client "/api/dns" params))

(defn list_for_service "GET /api/service/{service_id}/dns - List DNS zones for service" [client & [params]] (http-get client "/api/service/{service_id}/dns" params))

(defn add_zone "POST /api/service/{service_id}/dns - Create DNS zone" [client & [params]] (http-post client "/api/service/{service_id}/dns" params))

(defn get_zone "GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details" [client & [params]] (http-get client "/api/service/{service_id}/dns/{zone_id}" params))

(defn delete_zone "DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone" [client & [params]] (http-delete client "/api/service/{service_id}/dns/{zone_id}" params))

(defn add_record "POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record" [client & [params]] (http-post client "/api/service/{service_id}/dns/{zone_id}/records" params))

(defn edit_record "PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record" [client & [params]] (http-put client "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" params))

(defn delete_record "DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record" [client & [params]] (http-delete client "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" params))

