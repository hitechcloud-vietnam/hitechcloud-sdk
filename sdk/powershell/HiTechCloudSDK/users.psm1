# User Profile: view/update account details, logs

function Get-HCUsersGetDetails {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/details" -Params $Params
}

function Get-HCUsersUpdateDetails {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/details" -Params $Params
}

function Get-HCUsersGetLogs {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/logs" -Params $Params
}

Export-ModuleMember -Function *
