(ns hitechcloud.sdk.url_shortener
  (:require [hitechcloud.sdk.http-client :as http]))

;; URL Shortener: shorten URLs, manage links, stats

(defn shorten "POST /api/url-shortener/shorten - Shorten a URL" [client & [params]] (http-post client "/api/url-shortener/shorten" params))

(defn list_links "GET /api/url-shortener/links - List links" [client & [params]] (http-get client "/api/url-shortener/links" params))

(defn get_config "GET /api/url-shortener/config - Get shortener config" [client & [params]] (http-get client "/api/url-shortener/config" params))

(defn get_stats "GET /api/url-shortener/stats - Get link stats" [client & [params]] (http-get client "/api/url-shortener/stats" params))

(defn get_link "GET /api/url-shortener/links/{id} - Get link details" [client & [params]] (http-get client "/api/url-shortener/links/{id}" params))

(defn delete_link "DELETE /api/url-shortener/links/{id} - Delete link" [client & [params]] (http-delete client "/api/url-shortener/links/{id}" params))

