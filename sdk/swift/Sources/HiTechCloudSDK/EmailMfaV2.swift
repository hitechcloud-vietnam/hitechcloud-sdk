import Foundation

/// EmailMfaV2: email-based MFA management
public class EmailMfaV2Resource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status
    public func getMfaStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/email_mfa_v2/status/{user_type}/{user_id}", params: params)
    }

    /// POST /api/email_mfa_v2/send - Send one-time code
    public func sendCode(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/email_mfa_v2/send", params: params)
    }

    /// POST /api/email_mfa_v2/verify - Verify one-time code
    public func verifyCode(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/email_mfa_v2/verify", params: params)
    }

    /// GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes
    public func listActiveCodes(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/email_mfa_v2/list/{user_type}/{user_id}", params: params)
    }

    /// POST /api/email_mfa_v2/revokeall - Revoke all active codes
    public func revokeAllCodes(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/email_mfa_v2/revokeall", params: params)
    }

    /// POST /api/email_mfa_v2/disable - Disable MFA entirely
    public func disableMfa(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/email_mfa_v2/disable", params: params)
    }

}
