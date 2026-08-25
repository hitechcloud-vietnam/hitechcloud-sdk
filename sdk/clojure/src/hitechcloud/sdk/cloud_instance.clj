(ns hitechcloud.sdk.cloud_instance
  (:require [hitechcloud.sdk.http-client :as http]))

;; Cloud Instance: full VM lifecycle management

(defn list_vms "GET /api/service/{id}/vms - List virtual servers" [client & [params]] (http-get client "/api/service/{id}/vms" params))

(defn create_vm "POST /api/service/{id}/vms - Create new virtual server" [client & [params]] (http-post client "/api/service/{id}/vms" params))

(defn get_vm "GET /api/service/{id}/vms/{vmid} - Get VM details" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}" params))

(defn destroy_vm "DELETE /api/service/{id}/vms/{vmid} - Remove virtual server" [client & [params]] (http-delete client "/api/service/{id}/vms/{vmid}" params))

(defn resize_vm "PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server" [client & [params]] (http-put client "/api/service/{id}/vms/{vmid}" params))

(defn stop_vm "POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/stop" params))

(defn start_vm "POST /api/service/{id}/vms/{vmid}/start - Start virtual server" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/start" params))

(defn reboot_vm "POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/reboot" params))

(defn reset_password "POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/resetpwd" params))

(defn rebuild_vm "POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/rebuild" params))

(defn list_vm_ips "GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/ips" params))

(defn assign_ip "POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/ips" params))

(defn list_interfaces "GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/interfaces" params))

(defn get_cpu_usage "GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/usage/cpu" params))

(defn get_network_usage "GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/usage/net" params))

(defn get_disk_usage "GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/usage/disk" params))

(defn list_disks "GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/storage" params))

(defn resize_disk "PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk" [client & [params]] (http-put client "/api/service/{id}/vms/{vmid}/storage/{diskid}" params))

(defn list_iso_images "GET /api/service/{id}/images - List ISO images" [client & [params]] (http-get client "/api/service/{id}/images" params))

(defn add_iso_image "POST /api/service/{id}/images - Add ISO image" [client & [params]] (http-post client "/api/service/{id}/images" params))

(defn list_available_ips "GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips" params))

(defn remove_ip "DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM" [client & [params]] (http-delete client "/api/service/{id}/vms/{vmid}/ips/{ipid}" params))

(defn get_rdns "GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/rdns" params))

(defn update_rdns "POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/rdns" params))

(defn rebuild_network "POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/rebuild_network" params))

