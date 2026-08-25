(ns hitechcloud.sdk.vcloudstack
  (:require [hitechcloud.sdk.http-client :as http]))

;; vCloudStack Public Cloud: rescue, unrescue, console, usage

(defn rescue_vm "POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/rescue" params))

(defn unrescue_vm "POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode" [client & [params]] (http-post client "/api/service/{id}/vms/{vmid}/unrescue" params))

(defn get_console "GET /api/service/{id}/vms/{vmid}/console - Get VM console" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/console" params))

(defn get_usage "GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details" [client & [params]] (http-get client "/api/service/{id}/vms/{vmid}/usage" params))

