# EmailMfaV2: email-based MFA management

function Get-HCEmailMfaV2GetMfaStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/email_mfa_v2/status/{user_type}/{user_id}" -Params $Params
}

function Get-HCEmailMfaV2SendCode {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/email_mfa_v2/send" -Params $Params
}

function Get-HCEmailMfaV2VerifyCode {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/email_mfa_v2/verify" -Params $Params
}

function Get-HCEmailMfaV2ListActiveCodes {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/email_mfa_v2/list/{user_type}/{user_id}" -Params $Params
}

function Get-HCEmailMfaV2RevokeAllCodes {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/email_mfa_v2/revokeall" -Params $Params
}

function Get-HCEmailMfaV2DisableMfa {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/email_mfa_v2/disable" -Params $Params
}

Export-ModuleMember -Function *
