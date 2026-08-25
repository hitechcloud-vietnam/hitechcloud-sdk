(** Account Authentication: login, logout, token refresh, signup, password reset *)

(** POST /api/login - Authenticate and obtain access token *)
let login client params =
  HttpClient.post client "/api/login" params

(** POST /api/logout - Invalidate current access token *)
let logout client params =
  HttpClient.post client "/api/logout" params

(** POST /api/token - Generate new token using refresh token *)
let refresh_token client params =
  HttpClient.post client "/api/token" params

(** POST /api/revoke - Invalidate authorization and refresh token *)
let revoke_token client params =
  HttpClient.post client "/api/revoke" params

(** POST /api/passwordreset - Request password reset email *)
let password_reset client params =
  HttpClient.post client "/api/passwordreset" params

(** POST /api/signup - Create new account *)
let signup client params =
  HttpClient.post client "/api/signup" params

