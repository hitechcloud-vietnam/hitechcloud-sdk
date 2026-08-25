(** Notifications: manage notification preferences *)

(** GET /api/notifications - List all notifications *)
let list client params =
  HttpClient.get client "/api/notifications" params

(** GET /api/notifications/new - Return only new portal notifications *)
let list_new client params =
  HttpClient.get client "/api/notifications/new" params

(** PUT /api/notifications/{id}/ack - Mark notification as read *)
let acknowledge client params =
  HttpClient.put client "/api/notifications/{id}/ack" params

