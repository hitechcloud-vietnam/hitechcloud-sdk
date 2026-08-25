(** Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token *)

(** GET /api/service/{id}/pbs - Get backup connection info *)
let get_connection_info client params =
  HttpClient.get client "/api/service/{id}/pbs" params

(** GET /api/service/{id}/pbs/credentials - Get backup credentials *)
let get_credentials client params =
  HttpClient.get client "/api/service/{id}/pbs/credentials" params

(** GET /api/service/{id}/pbs/usage - Get backup usage *)
let get_usage client params =
  HttpClient.get client "/api/service/{id}/pbs/usage" params

(** GET /api/service/{id}/pbs/metrics - Get backup metrics *)
let get_metrics client params =
  HttpClient.get client "/api/service/{id}/pbs/metrics" params

(** GET /api/service/{id}/pbs/snapshots - List snapshots *)
let list_snapshots client params =
  HttpClient.get client "/api/service/{id}/pbs/snapshots" params

(** GET /api/service/{id}/pbs/groups - List backup groups *)
let list_groups client params =
  HttpClient.get client "/api/service/{id}/pbs/groups" params

(** POST /api/service/{id}/pbs/password - Change backup password *)
let change_password client params =
  HttpClient.post client "/api/service/{id}/pbs/password" params

(** POST /api/service/{id}/pbs/token - Rotate API token *)
let rotate_token client params =
  HttpClient.post client "/api/service/{id}/pbs/token" params

(** DELETE /api/service/{id}/pbs/token - Revoke API token *)
let revoke_token client params =
  HttpClient.delete client "/api/service/{id}/pbs/token" params

