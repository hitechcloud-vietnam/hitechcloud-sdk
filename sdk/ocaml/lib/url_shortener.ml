(** URL Shortener: shorten URLs, manage links, stats *)

(** POST /api/url-shortener/shorten - Shorten a URL *)
let shorten client params =
  HttpClient.post client "/api/url-shortener/shorten" params

(** GET /api/url-shortener/links - List links *)
let list_links client params =
  HttpClient.get client "/api/url-shortener/links" params

(** GET /api/url-shortener/config - Get shortener config *)
let get_config client params =
  HttpClient.get client "/api/url-shortener/config" params

(** GET /api/url-shortener/stats - Get link stats *)
let get_stats client params =
  HttpClient.get client "/api/url-shortener/stats" params

(** GET /api/url-shortener/links/{id} - Get link details *)
let get_link client params =
  HttpClient.get client "/api/url-shortener/links/{id}" params

(** DELETE /api/url-shortener/links/{id} - Delete link *)
let delete_link client params =
  HttpClient.delete client "/api/url-shortener/links/{id}" params

