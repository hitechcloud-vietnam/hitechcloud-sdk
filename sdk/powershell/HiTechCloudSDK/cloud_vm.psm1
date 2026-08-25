# Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE

function Get-HCCloudVmGetUpgradeOptions {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/upgrade" -Params $Params
}

function Get-HCCloudVmRequestUpgrade {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/upgrade" -Params $Params
}

function Get-HCCloudVmGetResources {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/resources" -Params $Params
}

function Get-HCCloudVmListRebuildTemplates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/templates/{vmid}" -Params $Params
}

function Get-HCCloudVmGetMemoryUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/usage/memory" -Params $Params
}

function Get-HCCloudVmListIsoImages {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/images" -Params $Params
}

function Get-HCCloudVmMountIso {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/images" -Params $Params
}

function Get-HCCloudVmSetBootOrder {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/boot" -Params $Params
}

function Get-HCCloudVmEnablePxe {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/tuntap" -Params $Params
}

Export-ModuleMember -Function *
