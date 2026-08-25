(ns hitechcloud.sdk.contacts
  (:require [hitechcloud.sdk.http-client :as http]))

;; Contacts: manage account contacts

(defn list "GET /api/contact - Return a list of contacts on this account" [client & [params]] (http-get client "/api/contact" params))

(defn create "POST /api/contact - Create new contact account" [client & [params]] (http-post client "/api/contact" params))

(defn get_privileges "GET /api/contact/privileges - List possible contact privileges" [client & [params]] (http-get client "/api/contact/privileges" params))

(defn get "GET /api/contact/{id} - Get contact details" [client & [params]] (http-get client "/api/contact/{id}" params))

(defn update "PUT /api/contact/{id} - Update contact details" [client & [params]] (http-put client "/api/contact/{id}" params))

