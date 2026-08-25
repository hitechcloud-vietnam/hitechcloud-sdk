(** EmailMfaV2: email-based MFA management *)

(** GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status *)
let get_mfa_status client params =
  HttpClient.get client "/api/email_mfa_v2/status/{user_type}/{user_id}" params

(** POST /api/email_mfa_v2/send - Send one-time code *)
let send_code client params =
  HttpClient.post client "/api/email_mfa_v2/send" params

(** POST /api/email_mfa_v2/verify - Verify one-time code *)
let verify_code client params =
  HttpClient.post client "/api/email_mfa_v2/verify" params

(** GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes *)
let list_active_codes client params =
  HttpClient.get client "/api/email_mfa_v2/list/{user_type}/{user_id}" params

(** POST /api/email_mfa_v2/revokeall - Revoke all active codes *)
let revoke_all_codes client params =
  HttpClient.post client "/api/email_mfa_v2/revokeall" params

(** POST /api/email_mfa_v2/disable - Disable MFA entirely *)
let disable_mfa client params =
  HttpClient.post client "/api/email_mfa_v2/disable" params

