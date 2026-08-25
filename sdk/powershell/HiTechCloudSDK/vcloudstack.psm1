# vCloudStack Public Cloud: rescue, unrescue, console, usage

function Get-HCVcloudstackRescueVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/rescue" -Params $Params
}

function Get-HCVcloudstackUnrescueVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/unrescue" -Params $Params
}

function Get-HCVcloudstackGetConsole {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/console" -Params $Params
}

function Get-HCVcloudstackGetUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/usage" -Params $Params
}

Export-ModuleMember -Function *
