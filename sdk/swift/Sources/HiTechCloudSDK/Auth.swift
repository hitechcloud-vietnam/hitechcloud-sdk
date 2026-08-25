import Foundation

/// Account Authentication: login, logout, token refresh, signup, password reset
public class AuthResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// POST /api/login - Authenticate and obtain access token
    public func login(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/login", params: params)
    }

    /// POST /api/logout - Invalidate current access token
    public func logout(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/logout", params: params)
    }

    /// POST /api/token - Generate new token using refresh token
    public func refreshToken(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/token", params: params)
    }

    /// POST /api/revoke - Invalidate authorization and refresh token
    public func revokeToken(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/revoke", params: params)
    }

    /// POST /api/passwordreset - Request password reset email
    public func passwordReset(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/passwordreset", params: params)
    }

    /// POST /api/signup - Create new account
    public func signup(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/signup", params: params)
    }

}
