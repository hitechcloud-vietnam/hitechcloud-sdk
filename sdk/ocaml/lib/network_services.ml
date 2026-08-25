(** Network Services: IP addresses and reverse DNS for services *)

(** GET /api/service/{id}/ip - List Service IP Addresses *)
let list_ips client params =
  HttpClient.get client "/api/service/{id}/ip" params

(** GET /api/service/{id}/rdns - Get reverse DNS entries *)
let get_rdns client params =
  HttpClient.get client "/api/service/{id}/rdns" params

(** POST /api/service/{id}/rdns - Update reverse DNS entries *)
let update_rdns client params =
  HttpClient.post client "/api/service/{id}/rdns" params

