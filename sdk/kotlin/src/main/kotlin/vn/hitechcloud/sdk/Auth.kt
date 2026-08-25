package vn.hitechcloud.sdk

/** Account Authentication: login, logout, token refresh, signup, password reset */
class AuthResource(private val httpClient: HttpClient) {
    /** POST /api/login - Authenticate and obtain access token */
    fun login(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/login", params)
    }

    /** POST /api/logout - Invalidate current access token */
    fun logout(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/logout", params)
    }

    /** POST /api/token - Generate new token using refresh token */
    fun refreshToken(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/token", params)
    }

    /** POST /api/revoke - Invalidate authorization and refresh token */
    fun revokeToken(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/revoke", params)
    }

    /** POST /api/passwordreset - Request password reset email */
    fun passwordReset(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/passwordreset", params)
    }

    /** POST /api/signup - Create new account */
    fun signup(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/signup", params)
    }

}
