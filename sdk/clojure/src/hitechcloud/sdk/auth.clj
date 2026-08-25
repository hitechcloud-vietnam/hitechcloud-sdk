(ns hitechcloud.sdk.auth
  (:require [hitechcloud.sdk.http-client :as http]))

;; Account Authentication: login, logout, token refresh, signup, password reset

(defn login "POST /api/login - Authenticate and obtain access token" [client & [params]] (http-post client "/api/login" params))

(defn logout "POST /api/logout - Invalidate current access token" [client & [params]] (http-post client "/api/logout" params))

(defn refresh_token "POST /api/token - Generate new token using refresh token" [client & [params]] (http-post client "/api/token" params))

(defn revoke_token "POST /api/revoke - Invalidate authorization and refresh token" [client & [params]] (http-post client "/api/revoke" params))

(defn password_reset "POST /api/passwordreset - Request password reset email" [client & [params]] (http-post client "/api/passwordreset" params))

(defn signup "POST /api/signup - Create new account" [client & [params]] (http-post client "/api/signup" params))

