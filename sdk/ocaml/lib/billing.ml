(** Billing & Contracts: balance, invoices, payment methods *)

(** GET /api/balance - Get account balance and credit *)
let get_balance client params =
  HttpClient.get client "/api/balance" params

(** GET /api/invoice - List all invoices *)
let list_invoices client params =
  HttpClient.get client "/api/invoice" params

(** GET /api/invoice/{id} - Get invoice details *)
let get_invoice client params =
  HttpClient.get client "/api/invoice/{id}" params

(** POST /api/invoice/{id}/credit - Apply account credit to invoice *)
let apply_credit client params =
  HttpClient.post client "/api/invoice/{id}/credit" params

(** GET /api/payment - List available payment methods *)
let get_payment_methods client params =
  HttpClient.get client "/api/payment" params

(** GET /api/payment/fees - List payment methods with fees *)
let get_payment_fees client params =
  HttpClient.get client "/api/payment/fees" params

