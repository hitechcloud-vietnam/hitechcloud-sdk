(** Cloud GPU: GPU instance management *)

(** PUT /api/service/{id}/vms/reboot - Reboot virtual server *)
let reboot client params =
  HttpClient.put client "/api/service/{id}/vms/reboot" params

(** PUT /api/service/{id}/vms/stop - Stop virtual server *)
let stop client params =
  HttpClient.put client "/api/service/{id}/vms/stop" params

(** PUT /api/service/{id}/vms/start - Start virtual server *)
let start client params =
  HttpClient.put client "/api/service/{id}/vms/start" params

(** GET /api/service/{id}/vms/firewall - Get firewall rules *)
let get_firewall_rules client params =
  HttpClient.get client "/api/service/{id}/vms/firewall" params

(** POST /api/service/{id}/vms/firewall - Add firewall rules *)
let add_firewall_rules client params =
  HttpClient.post client "/api/service/{id}/vms/firewall" params

(** DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule *)
let remove_firewall_rule client params =
  HttpClient.delete client "/api/service/{id}/vms/firewall/{position}" params

