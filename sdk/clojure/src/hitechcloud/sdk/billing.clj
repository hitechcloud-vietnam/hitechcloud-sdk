(ns hitechcloud.sdk.billing
  (:require [hitechcloud.sdk.http-client :as http]))

;; Billing & Contracts: balance, invoices, payment methods

(defn get_balance "GET /api/balance - Get account balance and credit" [client & [params]] (http-get client "/api/balance" params))

(defn list_invoices "GET /api/invoice - List all invoices" [client & [params]] (http-get client "/api/invoice" params))

(defn get_invoice "GET /api/invoice/{id} - Get invoice details" [client & [params]] (http-get client "/api/invoice/{id}" params))

(defn apply_credit "POST /api/invoice/{id}/credit - Apply account credit to invoice" [client & [params]] (http-post client "/api/invoice/{id}/credit" params))

(defn get_payment_methods "GET /api/payment - List available payment methods" [client & [params]] (http-get client "/api/payment" params))

(defn get_payment_fees "GET /api/payment/fees - List payment methods with fees" [client & [params]] (http-get client "/api/payment/fees" params))

