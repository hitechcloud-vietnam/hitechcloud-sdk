# Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces

function Get-HCCloudServiceShutdownVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/shutdown" -Params $Params
}

function Get-HCCloudServiceResetVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/reset" -Params $Params
}

function Get-HCCloudServiceChangeHostname {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/hostname" -Params $Params
}

function Get-HCCloudServiceListIpPools {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/ippool" -Params $Params
}

function Get-HCCloudServiceAllocateIp {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/ippool/{pool}" -Params $Params
}

function Get-HCCloudServiceListNetworks {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/networks" -Params $Params
}

function Get-HCCloudServiceAddInterface {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/interfaces" -Params $Params
}

function Get-HCCloudServiceGetInterface {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/interfaces/{iface}" -Params $Params
}

function Get-HCCloudServiceUpdateInterface {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{id}/vms/{vmid}/interfaces/{iface}" -Params $Params
}

function Get-HCCloudServiceRemoveInterface {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{id}/vms/{vmid}/interfaces/{iface}" -Params $Params
}

Export-ModuleMember -Function *
