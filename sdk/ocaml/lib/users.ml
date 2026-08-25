(** User Profile: view/update account details, logs *)

(** GET /api/details - Return registration details for my account *)
let get_details client params =
  HttpClient.get client "/api/details" params

(** PUT /api/details - Update registration details *)
let update_details client params =
  HttpClient.put client "/api/details" params

(** GET /api/logs - Returns logs from history *)
let get_logs client params =
  HttpClient.get client "/api/logs" params

