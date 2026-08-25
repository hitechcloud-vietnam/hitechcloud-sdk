(** Collocation Services: PDU port management *)

(** GET /api/service/{id}/pdu - List PDU ports assigned to service *)
let list_pdu_ports client params =
  HttpClient.get client "/api/service/{id}/pdu" params

(** GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state *)
let get_pdu_port_state client params =
  HttpClient.get client "/api/service/{id}/pdu/{port}" params

(** POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state *)
let set_pdu_port_status client params =
  HttpClient.post client "/api/service/{id}/pdu/{port}" params

