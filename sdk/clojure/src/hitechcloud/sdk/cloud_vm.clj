(ns hitechcloud.sdk.cloud_vm
  (:require [hitechcloud.sdk.http-client :as http]))

;; Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE

(defn get_upgrade_options "GET /api/service/{id}/upgrade - List resource upgrade options" [client & [params]] (http-get client "/api/service/{id}/upgrade" params))

(defn request_upgrade "POST /api/service/{id}/upgrade - Estimate or request upgrade" [client & [params]] (http-post client "/api/service/{id}/upgrade" params))

(defn get_resources "GET /api/service/{id}/resources - Show available and used resources" [client & [params]] (http-get client "/api/service/{id}/resources" params))

(defn list_rebuild_templates "GET /api/service/{id}/templates/{vmid} - List rebuild templates" [client & [params]] (http-get client "/api/service/{id}/templates/{vmid}" params))

(defn get_memory_usage "GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/usage/memory" params))

(defn list_iso_images "GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/images" params))

(defn mount_iso "POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/images" params))

(defn set_boot_order "POST /api/service/{id}/vms/{vmid}/boot - Change boot order" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/boot" params))

(defn enable_pxe "POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/tuntap" params))

