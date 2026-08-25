(ns hitechcloud.sdk.pmg
  (:require [hitechcloud.sdk.http-client :as http]))

;; HiTechCloudPMG: mail filtering configuration and management

(defn get_config "GET /api/service/{id}/htcpmg/config - Get mail filtering configuration" [client & [params]] (http-get client "/api/service/{id}/htcpmg/config" params))

(defn add_domain "POST /api/service/{id}/htcpmg/domains - Add a domain" [client & [params]] (http-post client "/api/service/{id}/htcpmg/domains" params))

(defn set_transport "POST /api/service/{id}/htcpmg/transport - Set target mail server" [client & [params]] (http-post client "/api/service/{id}/htcpmg/transport" params))

(defn get_stats "GET /api/service/{id}/htcpmg/stats - Get mail statistics" [client & [params]] (http-get client "/api/service/{id}/htcpmg/stats" params))

