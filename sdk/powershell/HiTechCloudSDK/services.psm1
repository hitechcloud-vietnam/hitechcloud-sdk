# Services: list, details, cancel, renew, billing cycle

function Get-HCServicesList {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service" -Params $Params
}

function Get-HCServicesGet {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}" -Params $Params
}

function Get-HCServicesListMethods {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/methods" -Params $Params
}

function Get-HCServicesCancel {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/cancel" -Params $Params
}

function Get-HCServicesGetLabel {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/label" -Params $Params
}

function Get-HCServicesSetLabel {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/label" -Params $Params
}

function Get-HCServicesRenew {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/renew" -Params $Params
}

function Get-HCServicesListBillingCycles {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/cycle" -Params $Params
}

function Get-HCServicesChangeBillingCycle {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/cycle" -Params $Params
}

Export-ModuleMember -Function *
