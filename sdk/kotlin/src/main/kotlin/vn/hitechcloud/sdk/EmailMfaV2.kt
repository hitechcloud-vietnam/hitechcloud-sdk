package vn.hitechcloud.sdk

/** EmailMfaV2: email-based MFA management */
class EmailMfaV2Resource(private val httpClient: HttpClient) {
    /** GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status */
    fun getMfaStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/email_mfa_v2/status/{user_type}/{user_id}", params)
    }

    /** POST /api/email_mfa_v2/send - Send one-time code */
    fun sendCode(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/email_mfa_v2/send", params)
    }

    /** POST /api/email_mfa_v2/verify - Verify one-time code */
    fun verifyCode(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/email_mfa_v2/verify", params)
    }

    /** GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes */
    fun listActiveCodes(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/email_mfa_v2/list/{user_type}/{user_id}", params)
    }

    /** POST /api/email_mfa_v2/revokeall - Revoke all active codes */
    fun revokeAllCodes(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/email_mfa_v2/revokeall", params)
    }

    /** POST /api/email_mfa_v2/disable - Disable MFA entirely */
    fun disableMfa(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/email_mfa_v2/disable", params)
    }

}
