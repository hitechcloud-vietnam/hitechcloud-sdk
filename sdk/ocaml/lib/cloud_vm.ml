(** Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE *)

(** GET /api/service/{id}/upgrade - List resource upgrade options *)
let get_upgrade_options client params =
  HttpClient.get client "/api/service/{id}/upgrade" params

(** POST /api/service/{id}/upgrade - Estimate or request upgrade *)
let request_upgrade client params =
  HttpClient.post client "/api/service/{id}/upgrade" params

(** GET /api/service/{id}/resources - Show available and used resources *)
let get_resources client params =
  HttpClient.get client "/api/service/{id}/resources" params

(** GET /api/service/{id}/templates/{vmid} - List rebuild templates *)
let list_rebuild_templates client params =
  HttpClient.get client "/api/service/{id}/templates/{vmid}" params

(** GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph *)
let get_memory_usage client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/usage/memory" params

(** GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM *)
let list_iso_images client params =
  HttpClient.get client "/api/service/{id}/vms/{vmid}/images" params

(** POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image *)
let mount_iso client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/images" params

(** POST /api/service/{id}/vms/{vmid}/boot - Change boot order *)
let set_boot_order client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/boot" params

(** POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE *)
let enable_pxe client params =
  HttpClient.post client "/api/service/{id}/vms/{vmid}/tuntap" params

