package vn.hitechcloud.sdk

/** VNeIDEKYC: eKYC identity verification and organization verification */
class VNeIdeKycResource(private val httpClient: HttpClient) {
    /** GET /api/vneidekyc/ekyc/session - Start personal eKYC session */
    fun startPersonalEkyc(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/vneidekyc/ekyc/session", params)
    }

    /** GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session */
    fun getEkycSession(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/vneidekyc/ekyc/session/{session_hash}", params)
    }

    /** GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions */
    fun listClientSessions(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/vneidekyc/ekyc/list/{client_id}", params)
    }

    /** POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file */
    fun uploadFile(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/ekyc/{session_hash}/upload", params)
    }

    /** POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC */
    fun submitEkyc(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/ekyc/{session_hash}/submit", params)
    }

    /** POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session */
    fun cancelSession(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/ekyc/{session_hash}/cancel", params)
    }

    /** POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC */
    fun acceptEkyc(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/ekyc/{session_hash}/accept", params)
    }

    /** POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC */
    fun rejectEkyc(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/ekyc/{session_hash}/reject", params)
    }

    /** POST /api/vneidekyc/org/lookup - Organization tax code lookup */
    fun lookupOrganization(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/org/lookup", params)
    }

    /** POST /api/vneidekyc/org/start - Start organization verification */
    fun startOrgVerification(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/org/start", params)
    }

    /** GET /api/vneidekyc/org/{org_hash} - Get organization record */
    fun getOrganization(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/vneidekyc/org/{org_hash}", params)
    }

    /** POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization */
    fun acceptOrganization(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/org/{org_hash}/accept", params)
    }

    /** POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization */
    fun rejectOrganization(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/org/{org_hash}/reject", params)
    }

    /** POST /api/vneidekyc/pdf/upload - Upload signed PDF */
    fun uploadSignedPdf(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/vneidekyc/pdf/upload", params)
    }

    /** GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record */
    fun getSignedPdf(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/vneidekyc/pdf/{pdf_hash}", params)
    }

    /** GET /api/vneidekyc/client/{client_id}/status - Client verification status */
    fun getClientStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/vneidekyc/client/{client_id}/status", params)
    }

}
