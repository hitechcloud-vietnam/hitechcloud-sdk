(ns hitechcloud.sdk.email_mfa_v2
  (:require [hitechcloud.sdk.http-client :as http]))

;; EmailMfaV2: email-based MFA management

(defn get_mfa_status "GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status" [client & [params]] (http-get client "/api/email_mfa_v2/status/{user_type}/{user_id}" params))

(defn send_code "POST /api/email_mfa_v2/send - Send one-time code" [client & [params]] (http-post client "/api/email_mfa_v2/send" params))

(defn verify_code "POST /api/email_mfa_v2/verify - Verify one-time code" [client & [params]] (http-post client "/api/email_mfa_v2/verify" params))

(defn list_active_codes "GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes" [client & [params]] (http-get client "/api/email_mfa_v2/list/{user_type}/{user_id}" params))

(defn revoke_all_codes "POST /api/email_mfa_v2/revokeall - Revoke all active codes" [client & [params]] (http-post client "/api/email_mfa_v2/revokeall" params))

(defn disable_mfa "POST /api/email_mfa_v2/disable - Disable MFA entirely" [client & [params]] (http-post client "/api/email_mfa_v2/disable" params))

