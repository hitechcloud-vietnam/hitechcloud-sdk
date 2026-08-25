# Service Status: list and manage service statuses

function Get-HCServiceStatusList {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/statuses" -Params $Params
}

function Get-HCServiceStatusGet {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/statuses/{id}" -Params $Params
}

Export-ModuleMember -Function *
