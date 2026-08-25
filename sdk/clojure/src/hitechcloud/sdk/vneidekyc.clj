(ns hitechcloud.sdk.vneidekyc
  (:require [hitechcloud.sdk.http-client :as http]))

;; VNeIDEKYC: eKYC identity verification and organization verification

(defn start_personal_ekyc "GET /api/vneidekyc/ekyc/session - Start personal eKYC session" [client & [params]] (http-get client "/api/vneidekyc/ekyc/session" params))

(defn get_ekyc_session "GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session" [client & [params]] (http-get client "/api/vneidekyc/ekyc/session/{session_hash}" params))

(defn list_client_sessions "GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions" [client & [params]] (http-get client "/api/vneidekyc/ekyc/list/{client_id}" params))

(defn upload_file "POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file" [client & [params]] (http-post client "/api/vneidekyc/ekyc/{session_hash}/upload" params))

(defn submit_ekyc "POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC" [client & [params]] (http-post client "/api/vneidekyc/ekyc/{session_hash}/submit" params))

(defn cancel_session "POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session" [client & [params]] (http-post client "/api/vneidekyc/ekyc/{session_hash}/cancel" params))

(defn accept_ekyc "POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC" [client & [params]] (http-post client "/api/vneidekyc/ekyc/{session_hash}/accept" params))

(defn reject_ekyc "POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC" [client & [params]] (http-post client "/api/vneidekyc/ekyc/{session_hash}/reject" params))

(defn lookup_organization "POST /api/vneidekyc/org/lookup - Organization tax code lookup" [client & [params]] (http-post client "/api/vneidekyc/org/lookup" params))

(defn start_org_verification "POST /api/vneidekyc/org/start - Start organization verification" [client & [params]] (http-post client "/api/vneidekyc/org/start" params))

(defn get_organization "GET /api/vneidekyc/org/{org_hash} - Get organization record" [client & [params]] (http-get client "/api/vneidekyc/org/{org_hash}" params))

(defn accept_organization "POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization" [client & [params]] (http-post client "/api/vneidekyc/org/{org_hash}/accept" params))

(defn reject_organization "POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization" [client & [params]] (http-post client "/api/vneidekyc/org/{org_hash}/reject" params))

(defn upload_signed_pdf "POST /api/vneidekyc/pdf/upload - Upload signed PDF" [client & [params]] (http-post client "/api/vneidekyc/pdf/upload" params))

(defn get_signed_pdf "GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record" [client & [params]] (http-get client "/api/vneidekyc/pdf/{pdf_hash}" params))

(defn get_client_status "GET /api/vneidekyc/client/{client_id}/status - Client verification status" [client & [params]] (http-get client "/api/vneidekyc/client/{client_id}/status" params))

