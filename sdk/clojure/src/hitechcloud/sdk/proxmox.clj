(ns hitechcloud.sdk.proxmox
  (:require [hitechcloud.sdk.http-client :as http]))

;; HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth

(defn get_status "GET /api/service/{id}/htcpve/status - Get machine status" [client & [params]] (http-get client "/api/service/{id}/htcpve/status" params))

(defn power_action "POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)" [client & [params]] (http-post client "/api/service/{id}/htcpve/power" params))

(defn list_vms "GET /api/service/{id}/htcpve/vms - List machines" [client & [params]] (http-get client "/api/service/{id}/htcpve/vms" params))

(defn list_ips "GET /api/service/{id}/htcpve/ips - List addresses" [client & [params]] (http-get client "/api/service/{id}/htcpve/ips" params))

(defn set_rdns "POST /api/service/{id}/htcpve/rdns - Set reverse DNS" [client & [params]] (http-post client "/api/service/{id}/htcpve/rdns" params))

(defn list_backups "GET /api/service/{id}/htcpve/backups - List backups" [client & [params]] (http-get client "/api/service/{id}/htcpve/backups" params))

(defn create_backup "POST /api/service/{id}/htcpve/backups - Create backup" [client & [params]] (http-post client "/api/service/{id}/htcpve/backups" params))

(defn list_snapshots "GET /api/service/{id}/htcpve/snapshots - List snapshots" [client & [params]] (http-get client "/api/service/{id}/htcpve/snapshots" params))

(defn create_snapshot "POST /api/service/{id}/htcpve/snapshots - Create snapshot" [client & [params]] (http-post client "/api/service/{id}/htcpve/snapshots" params))

(defn get_bandwidth_usage "GET /api/service/{id}/htcpve/usage - Get bandwidth usage" [client & [params]] (http-get client "/api/service/{id}/htcpve/usage" params))

