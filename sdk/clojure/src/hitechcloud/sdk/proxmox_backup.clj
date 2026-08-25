(ns hitechcloud.sdk.proxmox_backup
  (:require [hitechcloud.sdk.http-client :as http]))

;; Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token

(defn get_connection_info "GET /api/service/{id}/pbs - Get backup connection info" [client & [params]] (http-get client "/api/service/{id}/pbs" params))

(defn get_credentials "GET /api/service/{id}/pbs/credentials - Get backup credentials" [client & [params]] (http-get client "/api/service/{id}/pbs/credentials" params))

(defn get_usage "GET /api/service/{id}/pbs/usage - Get backup usage" [client & [params]] (http-get client "/api/service/{id}/pbs/usage" params))

(defn get_metrics "GET /api/service/{id}/pbs/metrics - Get backup metrics" [client & [params]] (http-get client "/api/service/{id}/pbs/metrics" params))

(defn list_snapshots "GET /api/service/{id}/pbs/snapshots - List snapshots" [client & [params]] (http-get client "/api/service/{id}/pbs/snapshots" params))

(defn list_groups "GET /api/service/{id}/pbs/groups - List backup groups" [client & [params]] (http-get client "/api/service/{id}/pbs/groups" params))

(defn change_password "POST /api/service/{id}/pbs/password - Change backup password" [client & [params]] (http-post client "/api/service/{id}/pbs/password" params))

(defn rotate_token "POST /api/service/{id}/pbs/token - Rotate API token" [client & [params]] (http-post client "/api/service/{id}/pbs/token" params))

(defn revoke_token "DELETE /api/service/{id}/pbs/token - Revoke API token" [client & [params]] (http-delete client "/api/service/{id}/pbs/token" params))

