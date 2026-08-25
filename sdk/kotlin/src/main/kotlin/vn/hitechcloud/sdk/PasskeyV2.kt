package vn.hitechcloud.sdk

/** PasskeyV2: passkey-based MFA management */
class PasskeyV2Resource(private val httpClient: HttpClient) {
    /** GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status */
    fun getMfaStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/passkeyv2/status/{user_type}/{user_id}", params)
    }

    /** GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials */
    fun listCredentials(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/passkeyv2/credentials/{user_type}/{user_id}", params)
    }

    /** POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential */
    fun deleteCredential(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/passkeyv2/credentials/{user_type}/{user_id}/delete", params)
    }

    /** POST /api/passkeyv2/email_otp/send - Send email OTP */
    fun sendEmailOtp(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/passkeyv2/email_otp/send", params)
    }

    /** POST /api/passkeyv2/email_otp/verify - Verify email OTP */
    fun verifyEmailOtp(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/passkeyv2/email_otp/verify", params)
    }

    /** POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA */
    fun disableMfa(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/passkeyv2/disable/{user_type}/{user_id}", params)
    }

}
