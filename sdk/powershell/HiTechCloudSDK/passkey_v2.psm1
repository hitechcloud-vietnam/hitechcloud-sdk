# PasskeyV2: passkey-based MFA management

function Get-HCPasskeyV2GetMfaStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/passkeyv2/status/{user_type}/{user_id}" -Params $Params
}

function Get-HCPasskeyV2ListCredentials {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/passkeyv2/credentials/{user_type}/{user_id}" -Params $Params
}

function Get-HCPasskeyV2DeleteCredential {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/passkeyv2/credentials/{user_type}/{user_id}/delete" -Params $Params
}

function Get-HCPasskeyV2SendEmailOtp {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/passkeyv2/email_otp/send" -Params $Params
}

function Get-HCPasskeyV2VerifyEmailOtp {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/passkeyv2/email_otp/verify" -Params $Params
}

function Get-HCPasskeyV2DisableMfa {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/passkeyv2/disable/{user_type}/{user_id}" -Params $Params
}

Export-ModuleMember -Function *
