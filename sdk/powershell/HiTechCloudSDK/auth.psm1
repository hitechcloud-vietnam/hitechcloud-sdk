# Account Authentication: login, logout, token refresh, signup, password reset

function Get-HCAuthLogin {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/login" -Params $Params
}

function Get-HCAuthLogout {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/logout" -Params $Params
}

function Get-HCAuthRefreshToken {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/token" -Params $Params
}

function Get-HCAuthRevokeToken {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/revoke" -Params $Params
}

function Get-HCAuthPasswordReset {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/passwordreset" -Params $Params
}

function Get-HCAuthSignup {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/signup" -Params $Params
}

Export-ModuleMember -Function *
