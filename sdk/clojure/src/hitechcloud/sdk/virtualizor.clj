(ns hitechcloud.sdk.virtualizor
  (:require [hitechcloud.sdk.http-client :as http]))

;; Virtualizor: VPS management via Virtualizor panel

(defn suspend "POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/suspend" params))

(defn unsuspend "POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/unsuspend" params))

(defn list_rebuild_templates "GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/rebuild" params))

(defn change_ssh_key "POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/addsshkey" params))

