(ns hitechcloud.sdk.passkey_v2
  (:require [hitechcloud.sdk.http-client :as http]))

;; PasskeyV2: passkey-based MFA management

(defn get_mfa_status "GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status" [client & [params]] (http-get client "/api/passkeyv2/status/{user_type}/{user_id}" params))

(defn list_credentials "GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials" [client & [params]] (http-get client "/api/passkeyv2/credentials/{user_type}/{user_id}" params))

(defn delete_credential "POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential" [client & [params]] (http-post client "/api/passkeyv2/credentials/{user_type}/{user_id}/delete" params))

(defn send_email_otp "POST /api/passkeyv2/email_otp/send - Send email OTP" [client & [params]] (http-post client "/api/passkeyv2/email_otp/send" params))

(defn verify_email_otp "POST /api/passkeyv2/email_otp/verify - Verify email OTP" [client & [params]] (http-post client "/api/passkeyv2/email_otp/verify" params))

(defn disable_mfa "POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA" [client & [params]] (http-post client "/api/passkeyv2/disable/{user_type}/{user_id}" params))

