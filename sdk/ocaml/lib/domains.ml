(** Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding *)

(** GET /api/domain - List domains under your account *)
let list client params =
  HttpClient.get client "/api/domain" params

(** GET /api/domain/{id} - Get domain details *)
let get client params =
  HttpClient.get client "/api/domain/{id}" params

(** GET /api/domain/name/{name} - Get domain details by name *)
let get_by_name client params =
  HttpClient.get client "/api/domain/name/{name}" params

(** GET /api/whois/{domain} - WHOIS lookup *)
let whois client params =
  HttpClient.get client "/api/whois/{domain}" params

(** GET /api/whoislookup/{domain} - Perform WHOIS lookup *)
let whois_lookup client params =
  HttpClient.get client "/api/whoislookup/{domain}" params

(** GET /api/domain/availability/{domain} - Check domain availability *)
let check_availability client params =
  HttpClient.get client "/api/domain/availability/{domain}" params

(** GET /api/domain/{id}/ns - Get domain nameservers *)
let get_nameservers client params =
  HttpClient.get client "/api/domain/{id}/ns" params

(** PUT /api/domain/{id}/ns - Update domain nameservers *)
let update_nameservers client params =
  HttpClient.put client "/api/domain/{id}/ns" params

(** GET /api/domain/{id}/epp - Get domain EPP code *)
let get_epp_code client params =
  HttpClient.get client "/api/domain/{id}/epp" params

(** GET /api/domain/{id}/sync - Synchronize domain *)
let sync client params =
  HttpClient.get client "/api/domain/{id}/sync" params

(** GET /api/domain/{id}/reglock - Get domain lock status *)
let get_lock client params =
  HttpClient.get client "/api/domain/{id}/reglock" params

(** PUT /api/domain/{id}/reglock - Update domain lock *)
let update_lock client params =
  HttpClient.put client "/api/domain/{id}/reglock" params

(** PUT /api/domain/{id}/idprotection - Update ID protection *)
let update_id_protection client params =
  HttpClient.put client "/api/domain/{id}/idprotection" params

(** GET /api/domain/{id}/contact - Get domain contact info *)
let get_contact client params =
  HttpClient.get client "/api/domain/{id}/contact" params

(** PUT /api/domain/{id}/contact - Update domain contact info *)
let update_contact client params =
  HttpClient.put client "/api/domain/{id}/contact" params

(** GET /api/domain/{id}/email/forwarding - Get email forwarding *)
let get_email_forwarding client params =
  HttpClient.get client "/api/domain/{id}/email/forwarding" params

(** PUT /api/domain/{id}/email/forwarding - Update email forwarding *)
let update_email_forwarding client params =
  HttpClient.put client "/api/domain/{id}/email/forwarding" params

(** GET /api/domain/order - List available TLDs *)
let get_available_tlds client params =
  HttpClient.get client "/api/domain/order" params

(** POST /api/domain/order - Order new domain *)
let order client params =
  HttpClient.post client "/api/domain/order" params

(** POST /api/domain/{id}/renew - Renew domain *)
let renew client params =
  HttpClient.post client "/api/domain/{id}/renew" params

(** GET /api/domain/order/{id}/form - Get additional data for TLD *)
let get_tld_form client params =
  HttpClient.get client "/api/domain/order/{id}/form" params

(** GET /api/domain/{id}/documents - Get domain documents *)
let get_documents client params =
  HttpClient.get client "/api/domain/{id}/documents" params

