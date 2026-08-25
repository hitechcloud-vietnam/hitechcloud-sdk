(** Affiliate: affiliate program management *)

(** GET /api/affiliates/summary - Get Affiliate summary *)
let get_summary client params =
  HttpClient.get client "/api/affiliates/summary" params

(** GET /api/affiliates/campaigns - Get Affiliate campaigns *)
let list_campaigns client params =
  HttpClient.get client "/api/affiliates/campaigns" params

(** GET /api/affiliates/commissions - Get Affiliate commissions *)
let list_commissions client params =
  HttpClient.get client "/api/affiliates/commissions" params

(** GET /api/affiliates/payouts - Get Affiliate payouts *)
let list_payouts client params =
  HttpClient.get client "/api/affiliates/payouts" params

(** GET /api/affiliates/vouchers - Get Affiliate vouchers *)
let list_vouchers client params =
  HttpClient.get client "/api/affiliates/vouchers" params

(** GET /api/affiliates/commissionplans - Get Affiliate commission plans *)
let list_commission_plans client params =
  HttpClient.get client "/api/affiliates/commissionplans" params

