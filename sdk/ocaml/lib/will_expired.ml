(** WillExpired: expiring services and domains management *)

(** GET /api/willexpired - List expiring services and domains *)
let list_expiring client params =
  HttpClient.get client "/api/willexpired" params

(** GET /api/willexpired/summary - Expiring summary *)
let get_summary client params =
  HttpClient.get client "/api/willexpired/summary" params

(** GET /api/willexpired/config - Module configuration *)
let get_config client params =
  HttpClient.get client "/api/willexpired/config" params

(** GET /api/willexpired/invoices - Open renewal invoices *)
let list_open_invoices client params =
  HttpClient.get client "/api/willexpired/invoices" params

(** GET /api/willexpired/requests - Renewal request log *)
let list_requests client params =
  HttpClient.get client "/api/willexpired/requests" params

(** GET /api/willexpired/export - Export all expiring items *)
let export_all client params =
  HttpClient.get client "/api/willexpired/export" params

(** GET /api/willexpired/{type}/{id} - Get item detail *)
let get_item client params =
  HttpClient.get client "/api/willexpired/{type}/{id}" params

(** POST /api/willexpired/{type}/{id}/renew - Renew item *)
let renew client params =
  HttpClient.post client "/api/willexpired/{type}/{id}/renew" params

(** GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status *)
let get_autorenew client params =
  HttpClient.get client "/api/willexpired/{type}/{id}/autorenew" params

(** PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew *)
let set_autorenew client params =
  HttpClient.put client "/api/willexpired/{type}/{id}/autorenew" params

