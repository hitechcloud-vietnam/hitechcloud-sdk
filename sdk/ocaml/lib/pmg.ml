(** HiTechCloudPMG: mail filtering configuration and management *)

(** GET /api/service/{id}/htcpmg/config - Get mail filtering configuration *)
let get_config client params =
  HttpClient.get client "/api/service/{id}/htcpmg/config" params

(** POST /api/service/{id}/htcpmg/domains - Add a domain *)
let add_domain client params =
  HttpClient.post client "/api/service/{id}/htcpmg/domains" params

(** POST /api/service/{id}/htcpmg/transport - Set target mail server *)
let set_transport client params =
  HttpClient.post client "/api/service/{id}/htcpmg/transport" params

(** GET /api/service/{id}/htcpmg/stats - Get mail statistics *)
let get_stats client params =
  HttpClient.get client "/api/service/{id}/htcpmg/stats" params

