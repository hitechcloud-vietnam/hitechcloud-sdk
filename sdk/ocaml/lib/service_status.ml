(** Service Status: list and manage service statuses *)

(** GET /api/statuses - Returns a list of all statuses *)
let list client params =
  HttpClient.get client "/api/statuses" params

(** PUT /api/statuses/{id} - Returns details of status *)
let get client params =
  HttpClient.put client "/api/statuses/{id}" params

