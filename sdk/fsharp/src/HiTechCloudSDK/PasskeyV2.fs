namespace HiTechCloud.SDK

/// PasskeyV2: passkey-based MFA management
type PasskeyV2Resource(httpClient: HttpClient) =

    /// GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status
    member this.GetMfaStatus() =
        async {
            return! httpClient.getAsync("/api/passkeyv2/status/{user_type}/{user_id}")
        }

    /// GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials
    member this.ListCredentials() =
        async {
            return! httpClient.getAsync("/api/passkeyv2/credentials/{user_type}/{user_id}")
        }

    /// POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential
    member this.DeleteCredential() =
        async {
            return! httpClient.postAsync("/api/passkeyv2/credentials/{user_type}/{user_id}/delete")
        }

    /// POST /api/passkeyv2/email_otp/send - Send email OTP
    member this.SendEmailOtp() =
        async {
            return! httpClient.postAsync("/api/passkeyv2/email_otp/send")
        }

    /// POST /api/passkeyv2/email_otp/verify - Verify email OTP
    member this.VerifyEmailOtp() =
        async {
            return! httpClient.postAsync("/api/passkeyv2/email_otp/verify")
        }

    /// POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA
    member this.DisableMfa() =
        async {
            return! httpClient.postAsync("/api/passkeyv2/disable/{user_type}/{user_id}")
        }

