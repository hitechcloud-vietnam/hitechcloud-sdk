# Virtualizor: VPS management via Virtualizor panel

function Get-HCVirtualizorSuspend {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/suspend" -Params $Params
}

function Get-HCVirtualizorUnsuspend {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/unsuspend" -Params $Params
}

function Get-HCVirtualizorListRebuildTemplates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/rebuild" -Params $Params
}

function Get-HCVirtualizorChangeSshKey {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/addsshkey" -Params $Params
}

Export-ModuleMember -Function *
