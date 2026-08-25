(** DNS Manage: domain DNS records, DNSSEC, nameserver registration *)

(** GET /api/domain/{id}/dns - List DNS records *)
let get_records client params =
  HttpClient.get client "/api/domain/{id}/dns" params

(** POST /api/domain/{id}/dns - Create DNS record *)
let create_record client params =
  HttpClient.post client "/api/domain/{id}/dns" params

(** PUT /api/domain/{id}/dns/{index} - Update DNS record *)
let update_record client params =
  HttpClient.put client "/api/domain/{id}/dns/{index}" params

(** DELETE /api/domain/{id}/dns/{index} - Remove DNS record *)
let delete_record client params =
  HttpClient.delete client "/api/domain/{id}/dns/{index}" params

(** GET /api/domain/{id}/dns/types - List supported record types *)
let get_record_types client params =
  HttpClient.get client "/api/domain/{id}/dns/types" params

(** GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags *)
let get_dnssec_flags client params =
  HttpClient.get client "/api/domain/{id}/dnssec/flags" params

(** GET /api/domain/{id}/dnssec - Get DNSSEC records *)
let get_dnssec_records client params =
  HttpClient.get client "/api/domain/{id}/dnssec" params

(** POST /api/domain/{id}/dnssec - Create DNSSEC record *)
let create_dnssec_record client params =
  HttpClient.post client "/api/domain/{id}/dnssec" params

(** DELETE /api/domain/{id}/dnssec - Remove DNSSEC record *)
let delete_dnssec_record client params =
  HttpClient.delete client "/api/domain/{id}/dnssec" params

(** POST /api/domain/{id}/reg - Register domain nameserver *)
let register_nameserver client params =
  HttpClient.post client "/api/domain/{id}/reg" params

