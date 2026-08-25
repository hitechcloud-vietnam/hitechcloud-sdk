(** PasskeyV2: passkey-based MFA management *)

(** GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status *)
let get_mfa_status client params =
  HttpClient.get client "/api/passkeyv2/status/{user_type}/{user_id}" params

(** GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials *)
let list_credentials client params =
  HttpClient.get client "/api/passkeyv2/credentials/{user_type}/{user_id}" params

(** POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential *)
let delete_credential client params =
  HttpClient.post client "/api/passkeyv2/credentials/{user_type}/{user_id}/delete" params

(** POST /api/passkeyv2/email_otp/send - Send email OTP *)
let send_email_otp client params =
  HttpClient.post client "/api/passkeyv2/email_otp/send" params

(** POST /api/passkeyv2/email_otp/verify - Verify email OTP *)
let verify_email_otp client params =
  HttpClient.post client "/api/passkeyv2/email_otp/verify" params

(** POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA *)
let disable_mfa client params =
  HttpClient.post client "/api/passkeyv2/disable/{user_type}/{user_id}" params

