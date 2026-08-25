(ns hitechcloud.sdk.cloud_service
  (:require [hitechcloud.sdk.http-client :as http]))

;; Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces

(defn shutdown_vm "POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/shutdown" params))

(defn reset_vm "POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/reset" params))

(defn change_hostname "POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/hostname" params))

(defn list_ip_pools "GET /api/service/{id}/vms/{vmid}/ippool - List IP pools" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/ippool" params))

(defn allocate_ip "POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/ippool/{pool}" params))

(defn list_networks "GET /api/service/{id}/networks - List available networks" [client & [params]] (http-get client "/api/service/{id}/networks" params))

(defn add_interface "POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/interfaces" params))

(defn get_interface "GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/interfaces/{iface}" params))

(defn update_interface "PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface" [client & [params]] (http-put client "/api/service/{id}/vms/{vmid}/interfaces/{iface}" params))

(defn remove_interface "DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface" [client & [params]] (http-delete client "/api/service/{id}/vms/{vmid}/interfaces/{iface}" params))

