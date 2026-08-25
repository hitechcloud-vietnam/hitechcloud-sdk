(** HiTechCloudIPAM: IP addresses, subnets, reverse DNS *)

(** GET /api/service/{id}/htcipam/ips - List IP addresses *)
let list_ips client params =
  HttpClient.get client "/api/service/{id}/htcipam/ips" params

(** GET /api/service/{id}/htcipam/subnets - List subnets *)
let list_subnets client params =
  HttpClient.get client "/api/service/{id}/htcipam/subnets" params

(** GET /api/service/{id}/htcipam/rdns - List reverse DNS records *)
let list_rdns client params =
  HttpClient.get client "/api/service/{id}/htcipam/rdns" params

(** POST /api/service/{id}/htcipam/rdns - Set reverse DNS *)
let set_rdns client params =
  HttpClient.post client "/api/service/{id}/htcipam/rdns" params

