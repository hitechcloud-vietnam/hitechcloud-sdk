(** vCloudStack Public Cloud: rescue, unrescue, console, usage *)

(** POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode *)
let rescue_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/rescue" params

(** POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode *)
let unrescue_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/unrescue" params

(** GET /api/service/{id}/vms/{vmid}/console - Get VM console *)
let get_console client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/console" params

(** GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details *)
let get_usage client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/usage" params

