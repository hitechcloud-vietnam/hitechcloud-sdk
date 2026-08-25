(ns hitechcloud.sdk.affiliate
  (:require [hitechcloud.sdk.http-client :as http]))

;; Affiliate: affiliate program management

(defn get_summary "GET /api/affiliates/summary - Get Affiliate summary" [client & [params]] (http-get client "/api/affiliates/summary" params))

(defn list_campaigns "GET /api/affiliates/campaigns - Get Affiliate campaigns" [client & [params]] (http-get client "/api/affiliates/campaigns" params))

(defn list_commissions "GET /api/affiliates/commissions - Get Affiliate commissions" [client & [params]] (http-get client "/api/affiliates/commissions" params))

(defn list_payouts "GET /api/affiliates/payouts - Get Affiliate payouts" [client & [params]] (http-get client "/api/affiliates/payouts" params))

(defn list_vouchers "GET /api/affiliates/vouchers - Get Affiliate vouchers" [client & [params]] (http-get client "/api/affiliates/vouchers" params))

(defn list_commission_plans "GET /api/affiliates/commissionplans - Get Affiliate commission plans" [client & [params]] (http-get client "/api/affiliates/commissionplans" params))

