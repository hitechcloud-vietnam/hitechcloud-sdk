(** Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power *)

(** GET /api/service/{id}/reinstall/templates - List OS templates and recipes *)
let list_reinstall_templates client params =
  HttpClient.get client "/api/service/{id}/reinstall/templates" params

(** POST /api/service/{id}/diag/cancel - Cancel diagnostics operation *)
let cancel_diagnostics client params =
  HttpClient.post client "/api/service/{id}/diag/cancel" params

(** GET /api/service/{id}/diag/templates - List diagnostics templates *)
let list_diagnostics_templates client params =
  HttpClient.get client "/api/service/{id}/diag/templates" params

(** GET /api/service/{id}/diag - Show diagnostic operation status *)
let get_diagnostics_status client params =
  HttpClient.get client "/api/service/{id}/diag" params

(** POST /api/service/{id}/diag - Start new diagnostic operation *)
let run_diagnostics client params =
  HttpClient.post client "/api/service/{id}/diag" params

(** GET /api/service/{id}/rescue/templates - List rescue templates *)
let list_rescue_templates client params =
  HttpClient.get client "/api/service/{id}/rescue/templates" params

(** GET /api/service/{id}/rescue - Show rescue operation status *)
let get_rescue_status client params =
  HttpClient.get client "/api/service/{id}/rescue" params

(** POST /api/service/{id}/rescue - Start rescue operation *)
let rescue client params =
  HttpClient.post client "/api/service/{id}/rescue" params

(** POST /api/service/{id}/rescue/cancel - Cancel rescue operation *)
let cancel_rescue client params =
  HttpClient.post client "/api/service/{id}/rescue/cancel" params

(** GET /api/service/{id}/info - Get server hardware and OS details *)
let get_server_info client params =
  HttpClient.get client "/api/service/{id}/info" params

(** POST /api/service/{id}/hostname - Update server hostname *)
let update_hostname client params =
  HttpClient.post client "/api/service/{id}/hostname" params

(** GET /api/service/{id}/ips - List server IPs *)
let list_ips client params =
  HttpClient.get client "/api/service/{id}/ips" params

(** POST /api/service/{id}/ips - Add new IP to server *)
let add_ip client params =
  HttpClient.post client "/api/service/{id}/ips" params

(** GET /api/service/{id}/vlans - List available VLANs *)
let list_vlans client params =
  HttpClient.get client "/api/service/{id}/vlans" params

(** GET /api/service/{id}/ips/{ip} - Get IP details *)
let get_ip_details client params =
  HttpClient.get client "/api/service/{id}/ips/{ip}" params

(** PUT /api/service/{id}/ips/{ip} - Edit IP *)
let edit_ip client params =
  HttpClient.put client "/api/service/{id}/ips/{ip}" params

(** GET /api/service/{id}/reinstall - Return installation options *)
let get_reinstall_details client params =
  HttpClient.get client "/api/service/{id}/reinstall" params

(** POST /api/service/{id}/reinstall - Reinstall server *)
let reinstall client params =
  HttpClient.post client "/api/service/{id}/reinstall" params

(** GET /api/service/{id}/status - Return server power status *)
let get_status client params =
  HttpClient.get client "/api/service/{id}/status" params

(** POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown) *)
let power_action client params =
  HttpClient.post client "/api/service/{id}/power/{action}" params

(** GET /api/serverstock - List servers in stock *)
let list_servers_in_stock client params =
  HttpClient.get client "/api/serverstock" params

