# Cloud GPU: GPU instance management

function Get-HCCloudGpuReboot {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{id}/vms/reboot" -Params $Params
}

function Get-HCCloudGpuStop {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{id}/vms/stop" -Params $Params
}

function Get-HCCloudGpuStart {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{id}/vms/start" -Params $Params
}

function Get-HCCloudGpuGetFirewallRules {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/firewall" -Params $Params
}

function Get-HCCloudGpuAddFirewallRules {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/firewall" -Params $Params
}

function Get-HCCloudGpuRemoveFirewallRule {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{id}/vms/firewall/{position}" -Params $Params
}

Export-ModuleMember -Function *
