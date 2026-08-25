(** Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces *)

(** POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown *)
let shutdown_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/shutdown" params

(** POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power *)
let reset_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/reset" params

(** POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname *)
let change_hostname client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/hostname" params

(** GET /api/service/{id}/vms/{vmid}/ippool - List IP pools *)
let list_ip_pools client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/ippool" params

(** POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP *)
let allocate_ip client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/ippool/{pool}" params

(** GET /api/service/{id}/networks - List available networks *)
let list_networks client params =
  HttpClient.get client "/api/service/{id}/networks" params

(** POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface *)
let add_interface client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/interfaces" params

(** GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details *)
let get_interface client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/interfaces/{iface}" params

(** PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface *)
let update_interface client params =
  HttpClient.put client "/api/service/{id}/vms/{vmid}/interfaces/{iface}" params

(** DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface *)
let remove_interface client params =
  HttpClient.delete client "/api/service/{id}/vms/{vmid}/interfaces/{iface}" params

