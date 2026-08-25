(** Cloud Instance: full VM lifecycle management *)

(** GET /api/service/{id}/vms - List virtual servers *)
let list_vms client params =
  HttpClient.get client "/api/service/{id}/vms" params

(** POST /api/service/{id}/vms - Create new virtual server *)
let create_vm client params =
  HttpClient.post client "/api/service/{id}/vms" params

(** GET /api/service/{id}/vms/{vmid} - Get VM details *)
let get_vm client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}" params

(** DELETE /api/service/{id}/vms/{vmid} - Remove virtual server *)
let destroy_vm client params =
  HttpClient.delete client "/api/service/{id}/vms/{vmid}" params

(** PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server *)
let resize_vm client params =
  HttpClient.put client "/api/service/{id}/vms/{vmid}" params

(** POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server *)
let stop_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/stop" params

(** POST /api/service/{id}/vms/{vmid}/start - Start virtual server *)
let start_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/start" params

(** POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server *)
let reboot_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/reboot" params

(** POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password *)
let reset_password client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/resetpwd" params

(** POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server *)
let rebuild_vm client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/rebuild" params

(** GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM *)
let list_vm_ips client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/ips" params

(** POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM *)
let assign_ip client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/ips" params

(** GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces *)
let list_interfaces client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/interfaces" params

(** GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph *)
let get_cpu_usage client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/usage/cpu" params

(** GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph *)
let get_network_usage client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/usage/net" params

(** GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph *)
let get_disk_usage client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/usage/disk" params

(** GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM *)
let list_disks client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/storage" params

(** PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk *)
let resize_disk client params =
  HttpClient.put client "/api/service/{id}/vms/{vmid}/storage/{diskid}" params

(** GET /api/service/{id}/images - List ISO images *)
let list_iso_images client params =
  HttpClient.get client "/api/service/{id}/images" params

(** POST /api/service/{id}/images - Add ISO image *)
let add_iso_image client params =
  HttpClient.post client "/api/service/{id}/images" params

(** GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs *)
let list_available_ips client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips" params

(** DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM *)
let remove_ip client params =
  HttpClient.delete client "/api/service/{id}/vms/{vmid}/ips/{ipid}" params

(** GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries *)
let get_rdns client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/rdns" params

(** POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries *)
let update_rdns client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/rdns" params

(** POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network *)
let rebuild_network client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/rebuild_network" params

