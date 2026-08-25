# Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power

function Get-HCBareMetalListReinstallTemplates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/reinstall/templates" -Params $Params
}

function Get-HCBareMetalCancelDiagnostics {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/diag/cancel" -Params $Params
}

function Get-HCBareMetalListDiagnosticsTemplates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/diag/templates" -Params $Params
}

function Get-HCBareMetalGetDiagnosticsStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/diag" -Params $Params
}

function Get-HCBareMetalRunDiagnostics {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/diag" -Params $Params
}

function Get-HCBareMetalListRescueTemplates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/rescue/templates" -Params $Params
}

function Get-HCBareMetalGetRescueStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/rescue" -Params $Params
}

function Get-HCBareMetalRescue {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/rescue" -Params $Params
}

function Get-HCBareMetalCancelRescue {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/rescue/cancel" -Params $Params
}

function Get-HCBareMetalGetServerInfo {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/info" -Params $Params
}

function Get-HCBareMetalUpdateHostname {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/hostname" -Params $Params
}

function Get-HCBareMetalListIps {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/ips" -Params $Params
}

function Get-HCBareMetalAddIp {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/ips" -Params $Params
}

function Get-HCBareMetalListVlans {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vlans" -Params $Params
}

function Get-HCBareMetalGetIpDetails {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/ips/{ip}" -Params $Params
}

function Get-HCBareMetalEditIp {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{id}/ips/{ip}" -Params $Params
}

function Get-HCBareMetalGetReinstallDetails {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/reinstall" -Params $Params
}

function Get-HCBareMetalReinstall {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/reinstall" -Params $Params
}

function Get-HCBareMetalGetStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/status" -Params $Params
}

function Get-HCBareMetalPowerAction {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/power/{action}" -Params $Params
}

function Get-HCBareMetalListServersInStock {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/serverstock" -Params $Params
}

Export-ModuleMember -Function *
