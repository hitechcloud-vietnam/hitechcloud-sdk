(ns hitechcloud.sdk.cloud_gpu
  (:require [hitechcloud.sdk.http-client :as http]))

;; Cloud GPU: GPU instance management

(defn reboot "PUT /api/service/{id}/vms/reboot - Reboot virtual server" [client & [params]] (http-put client "/api/service/{id}/vms/reboot" params))

(defn stop "PUT /api/service/{id}/vms/stop - Stop virtual server" [client & [params]] (http-put client "/api/service/{id}/vms/stop" params))

(defn start "PUT /api/service/{id}/vms/start - Start virtual server" [client & [params]] (http-put client "/api/service/{id}/vms/start" params))

(defn get_firewall_rules "GET /api/service/{id}/vms/firewall - Get firewall rules" [client & [params]] (http-get client "/api/service/{id}/vms/firewall" params))

(defn add_firewall_rules "POST /api/service/{id}/vms/firewall - Add firewall rules" [client & [params]] (http-post client "/api/service/{id}/vms/firewall" params))

(defn remove_firewall_rule "DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule" [client & [params]] (http-delete client "/api/service/{id}/vms/firewall/{position}" params))

