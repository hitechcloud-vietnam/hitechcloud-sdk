(** DNS: zones and records management for services *)

(** GET /api/dns - List all DNS zones *)
let list client params =
  HttpClient.get client "/api/dns" params

(** GET /api/service/{service_id}/dns - List DNS zones for service *)
let list_for_service client params =
  HttpClient.get client "/api/service/{service_id}/dns" params

(** POST /api/service/{service_id}/dns - Create DNS zone *)
let add_zone client params =
  HttpClient.post client "/api/service/{service_id}/dns" params

(** GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details *)
let get_zone client params =
  HttpClient.get client "/api/service/{service_id}/dns/{zone_id}" params

(** DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone *)
let delete_zone client params =
  HttpClient.delete client "/api/service/{service_id}/dns/{zone_id}" params

(** POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record *)
let add_record client params =
  HttpClient.post client "/api/service/{service_id}/dns/{zone_id}/records" params

(** PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record *)
let edit_record client params =
  HttpClient.put client "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" params

(** DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record *)
let delete_record client params =
  HttpClient.delete client "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" params

