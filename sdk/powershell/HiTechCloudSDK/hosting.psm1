# Hosting Services: reinstall, status, bandwidth, reset

function Get-HCHostingGetReinstallDetails {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/reinstall" -Params $Params
}

function Get-HCHostingReinstall {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/reinstall" -Params $Params
}

function Get-HCHostingGetStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/status" -Params $Params
}

function Get-HCHostingGetBandwidthGraphs {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/bandwidth-graphs" -Params $Params
}

function Get-HCHostingGetBandwidthUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/bandwidth" -Params $Params
}

function Get-HCHostingReset {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/reset" -Params $Params
}

Export-ModuleMember -Function *
