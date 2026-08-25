(ns hitechcloud.sdk.notifications
  (:require [hitechcloud.sdk.http-client :as http]))

;; Notifications: manage notification preferences

(defn list "GET /api/notifications - List all notifications" [client & [params]] (http-get client "/api/notifications" params))

(defn list_new "GET /api/notifications/new - Return only new portal notifications" [client & [params]] (http-get client "/api/notifications/new" params))

(defn acknowledge "PUT /api/notifications/{id}/ack - Mark notification as read" [client & [params]] (http-put client "/api/notifications/{id}/ack" params))

