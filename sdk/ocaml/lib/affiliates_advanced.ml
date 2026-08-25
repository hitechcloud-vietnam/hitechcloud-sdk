(** AffiliatesAdvanced: advanced affiliate management with client_id *)

(** GET /api/affiliates_adv/{client_id}/info - Get affiliate account info *)
let get_info client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/info" params

(** GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats *)
let get_stats client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/stats" params

(** GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans *)
let get_commission_plans client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/commission-plans" params

(** GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers *)
let get_vouchers client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/vouchers" params

(** GET /api/affiliates_adv/{client_id}/commissions - Get commissions *)
let get_commissions client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/commissions" params

(** GET /api/affiliates_adv/{client_id}/referrals - Get referred clients *)
let get_referrals client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/referrals" params

(** GET /api/affiliates_adv/{client_id}/payouts - Get payout history *)
let get_payouts client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/payouts" params

(** GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns *)
let get_campaigns client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/campaigns" params

(** GET /api/affiliates_adv/{client_id}/audit - Get activity log *)
let get_audit_log client params =
  HttpClient.get client "/api/affiliates_adv/{client_id}/audit" params

(** POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account *)
let activate client params =
  HttpClient.post client "/api/affiliates_adv/{client_id}/activate" params

(** POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan *)
let set_commission_plan client params =
  HttpClient.post client "/api/affiliates_adv/{client_id}/commission-plan/{commission_id}" params

(** POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher *)
let create_voucher client params =
  HttpClient.post client "/api/affiliates_adv/{client_id}/vouchers/{plan_id}" params

(** DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher *)
let delete_voucher client params =
  HttpClient.delete client "/api/affiliates_adv/{client_id}/vouchers/{voucher_id}" params

(** POST /api/affiliates_adv/{client_id}/landing-page - Set landing page *)
let set_landing_page client params =
  HttpClient.post client "/api/affiliates_adv/{client_id}/landing-page" params

