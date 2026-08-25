(** Virtualizor: VPS management via Virtualizor panel *)

(** POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server *)
let suspend client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/suspend" params

(** POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server *)
let unsuspend client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/unsuspend" params

(** GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates *)
let list_rebuild_templates client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/rebuild" params

(** POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key *)
let change_ssh_key client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/addsshkey" params

