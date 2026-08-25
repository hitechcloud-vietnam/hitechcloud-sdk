(ns hitechcloud.sdk.partner
  (:require [hitechcloud.sdk.http-client :as http]))

;; Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates

(defn get_partner_info "GET /api/partner - Get partner info" [client & [params]] (http-get client "/api/partner" params))

(defn apply "POST /api/partner/apply - Apply to partner program" [client & [params]] (http-post client "/api/partner/apply" params))

(defn list_tiers "GET /api/partner/tiers - List partner tiers" [client & [params]] (http-get client "/api/partner/tiers" params))

(defn get_pricing "GET /api/partner/pricing - Get partner pricing" [client & [params]] (http-get client "/api/partner/pricing" params))

(defn list_customers "GET /api/partner/customers - List customers" [client & [params]] (http-get client "/api/partner/customers" params))

(defn get_earnings "GET /api/partner/earnings - Get earnings" [client & [params]] (http-get client "/api/partner/earnings" params))

(defn get_wallet "GET /api/partner/wallet - Get wallet balance" [client & [params]] (http-get client "/api/partner/wallet" params))

(defn list_payouts "GET /api/partner/payouts - List payouts" [client & [params]] (http-get client "/api/partner/payouts" params))

(defn request_payout "POST /api/partner/payouts - Request payout" [client & [params]] (http-post client "/api/partner/payouts" params))

(defn list_leads "GET /api/partner/leads - List leads" [client & [params]] (http-get client "/api/partner/leads" params))

(defn create_lead "POST /api/partner/leads - Create lead" [client & [params]] (http-post client "/api/partner/leads" params))

(defn get_referral "GET /api/partner/referral - Get referral info" [client & [params]] (http-get client "/api/partner/referral" params))

(defn get_rates "GET /api/partner/rates - Get exchange rates" [client & [params]] (http-get client "/api/partner/rates" params))

