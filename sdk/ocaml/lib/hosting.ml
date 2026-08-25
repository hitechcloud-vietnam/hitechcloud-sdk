(** Hosting Services: reinstall, status, bandwidth, reset *)

(** GET /api/service/{id}/reinstall - Return installation options *)
let get_reinstall_details client params =
  HttpClient.get client "/api/service/{id}/reinstall" params

(** POST /api/service/{id}/reinstall - Reinstall server *)
let reinstall client params =
  HttpClient.post client "/api/service/{id}/reinstall" params

(** GET /api/service/{id}/status - Return server power status *)
let get_status client params =
  HttpClient.get client "/api/service/{id}/status" params

(** GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs *)
let get_bandwidth_graphs client params =
  HttpClient.get client "/api/service/{id}/bandwidth-graphs" params

(** GET /api/service/{id}/bandwidth - Return bandwidth usage and billing *)
let get_bandwidth_usage client params =
  HttpClient.get client "/api/service/{id}/bandwidth" params

(** POST /api/service/{id}/reset - Reset server *)
let reset client params =
  HttpClient.post client "/api/service/{id}/reset" params

