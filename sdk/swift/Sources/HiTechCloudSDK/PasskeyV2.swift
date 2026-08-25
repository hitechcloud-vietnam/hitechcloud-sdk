import Foundation

/// PasskeyV2: passkey-based MFA management
public class PasskeyV2Resource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status
    public func getMfaStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/passkeyv2/status/{user_type}/{user_id}", params: params)
    }

    /// GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials
    public func listCredentials(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/passkeyv2/credentials/{user_type}/{user_id}", params: params)
    }

    /// POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential
    public func deleteCredential(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/passkeyv2/credentials/{user_type}/{user_id}/delete", params: params)
    }

    /// POST /api/passkeyv2/email_otp/send - Send email OTP
    public func sendEmailOtp(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/passkeyv2/email_otp/send", params: params)
    }

    /// POST /api/passkeyv2/email_otp/verify - Verify email OTP
    public func verifyEmailOtp(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/passkeyv2/email_otp/verify", params: params)
    }

    /// POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA
    public func disableMfa(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/passkeyv2/disable/{user_type}/{user_id}", params: params)
    }

}
