namespace HiTechCloud.SDK

/// EmailMfaV2: email-based MFA management
type EmailMfaV2Resource(httpClient: HttpClient) =

    /// GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status
    member this.GetMfaStatus() =
        async {
            return! httpClient.getAsync("/api/email_mfa_v2/status/{user_type}/{user_id}")
        }

    /// POST /api/email_mfa_v2/send - Send one-time code
    member this.SendCode() =
        async {
            return! httpClient.postAsync("/api/email_mfa_v2/send")
        }

    /// POST /api/email_mfa_v2/verify - Verify one-time code
    member this.VerifyCode() =
        async {
            return! httpClient.postAsync("/api/email_mfa_v2/verify")
        }

    /// GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes
    member this.ListActiveCodes() =
        async {
            return! httpClient.getAsync("/api/email_mfa_v2/list/{user_type}/{user_id}")
        }

    /// POST /api/email_mfa_v2/revokeall - Revoke all active codes
    member this.RevokeAllCodes() =
        async {
            return! httpClient.postAsync("/api/email_mfa_v2/revokeall")
        }

    /// POST /api/email_mfa_v2/disable - Disable MFA entirely
    member this.DisableMfa() =
        async {
            return! httpClient.postAsync("/api/email_mfa_v2/disable")
        }

