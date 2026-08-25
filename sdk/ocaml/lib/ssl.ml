(** SSL Certificates: list, order, download certificates *)

(** GET /api/certificate - List all SSL certificates *)
let list client params =
  HttpClient.get client "/api/certificate" params

(** GET /api/certificate/{id} - Return certificate details *)
let get client params =
  HttpClient.get client "/api/certificate/{id}" params

(** GET /api/certificate/{id}/crt - Download X.509 certificate *)
let download client params =
  HttpClient.get client "/api/certificate/{id}/crt" params

(** GET /api/certificate/order - List available certificates for purchase *)
let list_available client params =
  HttpClient.get client "/api/certificate/order" params

(** POST /api/certificate/order - Order new certificate *)
let order client params =
  HttpClient.post client "/api/certificate/order" params

(** GET /api/certificate/order/{product_id}/software - List server software *)
let list_server_software client params =
  HttpClient.get client "/api/certificate/order/{product_id}/software" params

