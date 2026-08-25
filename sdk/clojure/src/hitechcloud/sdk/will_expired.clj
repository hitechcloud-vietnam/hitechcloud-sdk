(ns hitechcloud.sdk.will_expired
  (:require [hitechcloud.sdk.http-client :as http]))

;; WillExpired: expiring services and domains management

(defn list_expiring "GET /api/willexpired - List expiring services and domains" [client & [params]] (http-get client "/api/willexpired" params))

(defn get_summary "GET /api/willexpired/summary - Expiring summary" [client & [params]] (http-get client "/api/willexpired/summary" params))

(defn get_config "GET /api/willexpired/config - Module configuration" [client & [params]] (http-get client "/api/willexpired/config" params))

(defn list_open_invoices "GET /api/willexpired/invoices - Open renewal invoices" [client & [params]] (http-get client "/api/willexpired/invoices" params))

(defn list_requests "GET /api/willexpired/requests - Renewal request log" [client & [params]] (http-get client "/api/willexpired/requests" params))

(defn export_all "GET /api/willexpired/export - Export all expiring items" [client & [params]] (http-get client "/api/willexpired/export" params))

(defn get_item "GET /api/willexpired/{type}/{id} - Get item detail" [client & [params]] (http-get client "/api/willexpired/{type}/{id}" params))

(defn renew "POST /api/willexpired/{type}/{id}/renew - Renew item" [client & [params]] (http-post client "/api/willexpired/{type}/{id}/renew" params))

(defn get_autorenew "GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status" [client & [params]] (http-get client "/api/willexpired/{type}/{id}/autorenew" params))

(defn set_autorenew "PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew" [client & [params]] (http-put client "/api/willexpired/{type}/{id}/autorenew" params))

