namespace HiTechCloud.SDK

/// Account Authentication: login, logout, token refresh, signup, password reset
type AuthResource(httpClient: HttpClient) =

    /// POST /api/login - Authenticate and obtain access token
    member this.Login() =
        async {
            return! httpClient.postAsync("/api/login")
        }

    /// POST /api/logout - Invalidate current access token
    member this.Logout() =
        async {
            return! httpClient.postAsync("/api/logout")
        }

    /// POST /api/token - Generate new token using refresh token
    member this.RefreshToken() =
        async {
            return! httpClient.postAsync("/api/token")
        }

    /// POST /api/revoke - Invalidate authorization and refresh token
    member this.RevokeToken() =
        async {
            return! httpClient.postAsync("/api/revoke")
        }

    /// POST /api/passwordreset - Request password reset email
    member this.PasswordReset() =
        async {
            return! httpClient.postAsync("/api/passwordreset")
        }

    /// POST /api/signup - Create new account
    member this.Signup() =
        async {
            return! httpClient.postAsync("/api/signup")
        }

