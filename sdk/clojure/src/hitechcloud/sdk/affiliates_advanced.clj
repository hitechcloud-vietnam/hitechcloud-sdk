(ns hitechcloud.sdk.affiliates_advanced
  (:require [hitechcloud.sdk.http-client :as http]))

;; AffiliatesAdvanced: advanced affiliate management with client_id

(defn get_info "GET /api/affiliates_adv/{client_id}/info - Get affiliate account info" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/info" params))

(defn get_stats "GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/stats" params))

(defn get_commission_plans "GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/commission-plans" params))

(defn get_vouchers "GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/vouchers" params))

(defn get_commissions "GET /api/affiliates_adv/{client_id}/commissions - Get commissions" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/commissions" params))

(defn get_referrals "GET /api/affiliates_adv/{client_id}/referrals - Get referred clients" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/referrals" params))

(defn get_payouts "GET /api/affiliates_adv/{client_id}/payouts - Get payout history" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/payouts" params))

(defn get_campaigns "GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/campaigns" params))

(defn get_audit_log "GET /api/affiliates_adv/{client_id}/audit - Get activity log" [client & [params]] (http-get client "/api/affiliates_adv/{client_id}/audit" params))

(defn activate "POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account" [client & [params]] (http-post client "/api/affiliates_adv/{client_id}/activate" params))

(defn set_commission_plan "POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan" [client & [params]] (http-post client "/api/affiliates_adv/{client_id}/commission-plan/{commission_id}" params))

(defn create_voucher "POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher" [client & [params]] (http-post client "/api/affiliates_adv/{client_id}/vouchers/{plan_id}" params))

(defn delete_voucher "DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher" [client & [params]] (http-delete client "/api/affiliates_adv/{client_id}/vouchers/{voucher_id}" params))

(defn set_landing_page "POST /api/affiliates_adv/{client_id}/landing-page - Set landing page" [client & [params]] (http-post client "/api/affiliates_adv/{client_id}/landing-page" params))

