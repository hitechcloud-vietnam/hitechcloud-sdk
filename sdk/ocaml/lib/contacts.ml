(** Contacts: manage account contacts *)

(** GET /api/contact - Return a list of contacts on this account *)
let list client params =
  HttpClient.get client "/api/contact" params

(** POST /api/contact - Create new contact account *)
let create client params =
  HttpClient.post client "/api/contact" params

(** GET /api/contact/privileges - List possible contact privileges *)
let get_privileges client params =
  HttpClient.get client "/api/contact/privileges" params

(** GET /api/contact/{id} - Get contact details *)
let get client params =
  HttpClient.get client "/api/contact/{id}" params

(** PUT /api/contact/{id} - Update contact details *)
let update client params =
  HttpClient.put client "/api/contact/{id}" params

