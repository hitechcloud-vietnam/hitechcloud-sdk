(** VNeIDEKYC: eKYC identity verification and organization verification *)

(** GET /api/vneidekyc/ekyc/session - Start personal eKYC session *)
let start_personal_ekyc client params =
  HttpClient.get client "/api/vneidekyc/ekyc/session" params

(** GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session *)
let get_ekyc_session client params =
  HttpClient.get client "/api/vneidekyc/ekyc/session/{session_hash}" params

(** GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions *)
let list_client_sessions client params =
  HttpClient.get client "/api/vneidekyc/ekyc/list/{client_id}" params

(** POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file *)
let upload_file client params =
  HttpClient.post client "/api/vneidekyc/ekyc/{session_hash}/upload" params

(** POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC *)
let submit_ekyc client params =
  HttpClient.post client "/api/vneidekyc/ekyc/{session_hash}/submit" params

(** POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session *)
let cancel_session client params =
  HttpClient.post client "/api/vneidekyc/ekyc/{session_hash}/cancel" params

(** POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC *)
let accept_ekyc client params =
  HttpClient.post client "/api/vneidekyc/ekyc/{session_hash}/accept" params

(** POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC *)
let reject_ekyc client params =
  HttpClient.post client "/api/vneidekyc/ekyc/{session_hash}/reject" params

(** POST /api/vneidekyc/org/lookup - Organization tax code lookup *)
let lookup_organization client params =
  HttpClient.post client "/api/vneidekyc/org/lookup" params

(** POST /api/vneidekyc/org/start - Start organization verification *)
let start_org_verification client params =
  HttpClient.post client "/api/vneidekyc/org/start" params

(** GET /api/vneidekyc/org/{org_hash} - Get organization record *)
let get_organization client params =
  HttpClient.get client "/api/vneidekyc/org/{org_hash}" params

(** POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization *)
let accept_organization client params =
  HttpClient.post client "/api/vneidekyc/org/{org_hash}/accept" params

(** POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization *)
let reject_organization client params =
  HttpClient.post client "/api/vneidekyc/org/{org_hash}/reject" params

(** POST /api/vneidekyc/pdf/upload - Upload signed PDF *)
let upload_signed_pdf client params =
  HttpClient.post client "/api/vneidekyc/pdf/upload" params

(** GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record *)
let get_signed_pdf client params =
  HttpClient.get client "/api/vneidekyc/pdf/{pdf_hash}" params

(** GET /api/vneidekyc/client/{client_id}/status - Client verification status *)
let get_client_status client params =
  HttpClient.get client "/api/vneidekyc/client/{client_id}/status" params

