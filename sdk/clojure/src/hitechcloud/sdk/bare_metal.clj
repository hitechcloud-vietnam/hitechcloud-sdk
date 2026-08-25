(ns hitechcloud.sdk.bare_metal
  (:require [hitechcloud.sdk.http-client :as http]))

;; Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power

(defn list_reinstall_templates "GET /api/service/{id}/reinstall/templates - List OS templates and recipes" [client & [params]] (http-get client "/api/service/{id}/reinstall/templates" params))

(defn cancel_diagnostics "POST /api/service/{id}/diag/cancel - Cancel diagnostics operation" [client & [params]] (http-post client "/api/service/{id}/diag/cancel" params))

(defn list_diagnostics_templates "GET /api/service/{id}/diag/templates - List diagnostics templates" [client & [params]] (http-get client "/api/service/{id}/diag/templates" params))

(defn get_diagnostics_status "GET /api/service/{id}/diag - Show diagnostic operation status" [client & [params]] (http-get client "/api/service/{id}/diag" params))

(defn run_diagnostics "POST /api/service/{id}/diag - Start new diagnostic operation" [client & [params]] (http-post client "/api/service/{id}/diag" params))

(defn list_rescue_templates "GET /api/service/{id}/rescue/templates - List rescue templates" [client & [params]] (http-get client "/api/service/{id}/rescue/templates" params))

(defn get_rescue_status "GET /api/service/{id}/rescue - Show rescue operation status" [client & [params]] (http-get client "/api/service/{id}/rescue" params))

(defn rescue "POST /api/service/{id}/rescue - Start rescue operation" [client & [params]] (http-post client "/api/service/{id}/rescue" params))

(defn cancel_rescue "POST /api/service/{id}/rescue/cancel - Cancel rescue operation" [client & [params]] (http-post client "/api/service/{id}/rescue/cancel" params))

(defn get_server_info "GET /api/service/{id}/info - Get server hardware and OS details" [client & [params]] (http-get client "/api/service/{id}/info" params))

(defn update_hostname "POST /api/service/{id}/hostname - Update server hostname" [client & [params]] (http-post client "/api/service/{id}/hostname" params))

(defn list_ips "GET /api/service/{id}/ips - List server IPs" [client & [params]] (http-get client "/api/service/{id}/ips" params))

(defn add_ip "POST /api/service/{id}/ips - Add new IP to server" [client & [params]] (http-post client "/api/service/{id}/ips" params))

(defn list_vlans "GET /api/service/{id}/vlans - List available VLANs" [client & [params]] (http-get client "/api/service/{id}/vlans" params))

(defn get_ip_details "GET /api/service/{id}/ips/{ip} - Get IP details" [client & [params]] (http-get client "/api/service/{id}/ips/{ip}" params))

(defn edit_ip "PUT /api/service/{id}/ips/{ip} - Edit IP" [client & [params]] (http-put client "/api/service/{id}/ips/{ip}" params))

(defn get_reinstall_details "GET /api/service/{id}/reinstall - Return installation options" [client & [params]] (http-get client "/api/service/{id}/reinstall" params))

(defn reinstall "POST /api/service/{id}/reinstall - Reinstall server" [client & [params]] (http-post client "/api/service/{id}/reinstall" params))

(defn get_status "GET /api/service/{id}/status - Return server power status" [client & [params]] (http-get client "/api/service/{id}/status" params))

(defn power_action "POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)" [client & [params]] (http-post client "/api/service/{id}/power/{action}" params))

(defn list_servers_in_stock "GET /api/serverstock - List servers in stock" [client & [params]] (http-get client "/api/serverstock" params))

