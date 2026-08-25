(** HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters *)

(** GET /api/service/{id}/templates - List templates *)
let list_templates client params =
  HttpClient.get client "/api/service/{id}/templates" params

(** POST /api/service/{id}/templates - Save a template *)
let save_template client params =
  HttpClient.post client "/api/service/{id}/templates" params

(** GET /api/service/{id}/hitechcloud/mode - Get provisioning mode *)
let get_provisioning_mode client params =
  HttpClient.get client "/api/service/{id}/hitechcloud/mode" params

(** GET /api/service/{id}/hitechcloud/examples - Get JSON examples *)
let get_json_examples client params =
  HttpClient.get client "/api/service/{id}/hitechcloud/examples" params

(** GET /api/service/{id}/hitechcloud/schema - Get API schema *)
let get_api_schema client params =
  HttpClient.get client "/api/service/{id}/hitechcloud/schema" params

(** GET /api/service/{id}/instances - List all GPU instances *)
let list_instances client params =
  HttpClient.get client "/api/service/{id}/instances" params

(** POST /api/service/{id}/instances - Create a GPU instance *)
let create_instance client params =
  HttpClient.post client "/api/service/{id}/instances" params

(** GET /api/service/{id}/instances/types - List available GPU instance types *)
let list_instance_types client params =
  HttpClient.get client "/api/service/{id}/instances/types" params

(** GET /api/service/{id}/instances/{instance_id} - Get instance details *)
let get_instance client params =
  HttpClient.get client "/api/service/{id}/instances/{instance_id}" params

(** POST /api/service/{id}/instances/{instance_id}/update - Update instance *)
let update_instance client params =
  HttpClient.post client "/api/service/{id}/instances/{instance_id}/update" params

(** POST /api/service/{id}/instances/{instance_id}/restart - Restart instance *)
let restart_instance client params =
  HttpClient.post client "/api/service/{id}/instances/{instance_id}/restart" params

(** POST /api/service/{id}/instances/{instance_id}/delete - Delete instance *)
let delete_instance client params =
  HttpClient.post client "/api/service/{id}/instances/{instance_id}/delete" params

(** GET /api/service/{id}/instance - Get service instance *)
let get_service_instance client params =
  HttpClient.get client "/api/service/{id}/instance" params

(** POST /api/service/{id}/instance/sync - Synchronize service resource *)
let sync_service_instance client params =
  HttpClient.post client "/api/service/{id}/instance/sync" params

(** POST /api/service/{id}/instance/restart - Restart service instance *)
let restart_service_instance client params =
  HttpClient.post client "/api/service/{id}/instance/restart" params

(** POST /api/service/{id}/instance/update - Update service instance *)
let update_service_instance client params =
  HttpClient.post client "/api/service/{id}/instance/update" params

(** GET /api/service/{id}/sshkeys - List SSH keys *)
let list_ssh_keys client params =
  HttpClient.get client "/api/service/{id}/sshkeys" params

(** POST /api/service/{id}/sshkeys - Add SSH key *)
let add_ssh_key client params =
  HttpClient.post client "/api/service/{id}/sshkeys" params

(** GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details *)
let get_ssh_key client params =
  HttpClient.get client "/api/service/{id}/sshkeys/{key_id}" params

(** POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key *)
let delete_ssh_key client params =
  HttpClient.post client "/api/service/{id}/sshkeys/{key_id}/delete" params

(** POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key *)
let set_default_ssh_key client params =
  HttpClient.post client "/api/service/{id}/sshkeys/{key_id}/setdefault" params

(** GET /api/service/{id}/volumes - List volumes *)
let list_volumes client params =
  HttpClient.get client "/api/service/{id}/volumes" params

(** POST /api/service/{id}/volumes - Create a storage volume *)
let create_volume client params =
  HttpClient.post client "/api/service/{id}/volumes" params

(** GET /api/service/{id}/volumes/types - List volume types *)
let list_volume_types client params =
  HttpClient.get client "/api/service/{id}/volumes/types" params

(** GET /api/service/{id}/volumes/{volume_id} - Get volume details *)
let get_volume client params =
  HttpClient.get client "/api/service/{id}/volumes/{volume_id}" params

(** POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume *)
let delete_volume client params =
  HttpClient.post client "/api/service/{id}/volumes/{volume_id}/delete" params

(** GET /api/service/{id}/templates/featured - List featured templates *)
let list_featured_templates client params =
  HttpClient.get client "/api/service/{id}/templates/featured" params

(** GET /api/service/{id}/templates/{template_id} - Get template details *)
let get_template client params =
  HttpClient.get client "/api/service/{id}/templates/{template_id}" params

(** POST /api/service/{id}/templates/{template_id}/update - Update template *)
let update_template client params =
  HttpClient.post client "/api/service/{id}/templates/{template_id}/update" params

(** POST /api/service/{id}/templates/{template_id}/delete - Delete template *)
let delete_template client params =
  HttpClient.post client "/api/service/{id}/templates/{template_id}/delete" params

(** GET /api/service/{id}/clusters - List GPU clusters *)
let list_clusters client params =
  HttpClient.get client "/api/service/{id}/clusters" params

(** POST /api/service/{id}/clusters - Create a GPU cluster *)
let create_cluster client params =
  HttpClient.post client "/api/service/{id}/clusters" params

(** GET /api/service/{id}/clusters/types - List available GPU cluster types *)
let list_cluster_types client params =
  HttpClient.get client "/api/service/{id}/clusters/types" params

(** GET /api/service/{id}/cluster - Get service cluster *)
let get_service_cluster client params =
  HttpClient.get client "/api/service/{id}/cluster" params

(** GET /api/service/{id}/clusters/{cluster_id} - Get cluster details *)
let get_cluster client params =
  HttpClient.get client "/api/service/{id}/clusters/{cluster_id}" params

(** POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster *)
let delete_cluster client params =
  HttpClient.post client "/api/service/{id}/clusters/{cluster_id}/delete" params

