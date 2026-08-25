(** Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates *)

(** GET /api/partner - Get partner info *)
let get_partner_info client params =
  HttpClient.get client "/api/partner" params

(** POST /api/partner/apply - Apply to partner program *)
let apply client params =
  HttpClient.post client "/api/partner/apply" params

(** GET /api/partner/tiers - List partner tiers *)
let list_tiers client params =
  HttpClient.get client "/api/partner/tiers" params

(** GET /api/partner/pricing - Get partner pricing *)
let get_pricing client params =
  HttpClient.get client "/api/partner/pricing" params

(** GET /api/partner/customers - List customers *)
let list_customers client params =
  HttpClient.get client "/api/partner/customers" params

(** GET /api/partner/earnings - Get earnings *)
let get_earnings client params =
  HttpClient.get client "/api/partner/earnings" params

(** GET /api/partner/wallet - Get wallet balance *)
let get_wallet client params =
  HttpClient.get client "/api/partner/wallet" params

(** GET /api/partner/payouts - List payouts *)
let list_payouts client params =
  HttpClient.get client "/api/partner/payouts" params

(** POST /api/partner/payouts - Request payout *)
let request_payout client params =
  HttpClient.post client "/api/partner/payouts" params

(** GET /api/partner/leads - List leads *)
let list_leads client params =
  HttpClient.get client "/api/partner/leads" params

(** POST /api/partner/leads - Create lead *)
let create_lead client params =
  HttpClient.post client "/api/partner/leads" params

(** GET /api/partner/referral - Get referral info *)
let get_referral client params =
  HttpClient.get client "/api/partner/referral" params

(** GET /api/partner/rates - Get exchange rates *)
let get_rates client params =
  HttpClient.get client "/api/partner/rates" params

