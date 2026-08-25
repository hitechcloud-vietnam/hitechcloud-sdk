(** Services: list, details, cancel, renew, billing cycle *)

(** GET /api/service - List all services *)
let list client params =
  HttpClient.get client "/api/service" params

(** GET /api/service/{id} - Return service details *)
let get client params =
  HttpClient.get client "/api/service/{id}" params

(** GET /api/service/{id}/methods - List methods available for service *)
let list_methods client params =
  HttpClient.get client "/api/service/{id}/methods" params

(** POST /api/service/{id}/cancel - Request service cancellation *)
let cancel client params =
  HttpClient.post client "/api/service/{id}/cancel" params

(** GET /api/service/{id}/label - Show current service label *)
let get_label client params =
  HttpClient.get client "/api/service/{id}/label" params

(** POST /api/service/{id}/label - Set new custom label *)
let set_label client params =
  HttpClient.post client "/api/service/{id}/label" params

(** POST /api/service/{id}/renew - Generate renewal invoice *)
let renew client params =
  HttpClient.post client "/api/service/{id}/renew" params

(** GET /api/service/{id}/cycle - Get billing cycle options *)
let list_billing_cycles client params =
  HttpClient.get client "/api/service/{id}/cycle" params

(** POST /api/service/{id}/cycle - Change billing cycle *)
let change_billing_cycle client params =
  HttpClient.post client "/api/service/{id}/cycle" params

