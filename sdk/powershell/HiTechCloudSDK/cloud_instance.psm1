# Cloud Instance: full VM lifecycle management

function Get-HCCloudInstanceListVms {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms" -Params $Params
}

function Get-HCCloudInstanceCreateVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms" -Params $Params
}

function Get-HCCloudInstanceGetVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}" -Params $Params
}

function Get-HCCloudInstanceDestroyVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{id}/vms/{vmid}" -Params $Params
}

function Get-HCCloudInstanceResizeVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{id}/vms/{vmid}" -Params $Params
}

function Get-HCCloudInstanceStopVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/stop" -Params $Params
}

function Get-HCCloudInstanceStartVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/start" -Params $Params
}

function Get-HCCloudInstanceRebootVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/reboot" -Params $Params
}

function Get-HCCloudInstanceResetPassword {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/resetpwd" -Params $Params
}

function Get-HCCloudInstanceRebuildVm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/rebuild" -Params $Params
}

function Get-HCCloudInstanceListVmIps {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/ips" -Params $Params
}

function Get-HCCloudInstanceAssignIp {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/ips" -Params $Params
}

function Get-HCCloudInstanceListInterfaces {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/interfaces" -Params $Params
}

function Get-HCCloudInstanceGetCpuUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/usage/cpu" -Params $Params
}

function Get-HCCloudInstanceGetNetworkUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/usage/net" -Params $Params
}

function Get-HCCloudInstanceGetDiskUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/usage/disk" -Params $Params
}

function Get-HCCloudInstanceListDisks {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/storage" -Params $Params
}

function Get-HCCloudInstanceResizeDisk {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{id}/vms/{vmid}/storage/{diskid}" -Params $Params
}

function Get-HCCloudInstanceListIsoImages {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/images" -Params $Params
}

function Get-HCCloudInstanceAddIsoImage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/images" -Params $Params
}

function Get-HCCloudInstanceListAvailableIps {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips" -Params $Params
}

function Get-HCCloudInstanceRemoveIp {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{id}/vms/{vmid}/ips/{ipid}" -Params $Params
}

function Get-HCCloudInstanceGetRdns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/vms/{vmid}/rdns" -Params $Params
}

function Get-HCCloudInstanceUpdateRdns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/rdns" -Params $Params
}

function Get-HCCloudInstanceRebuildNetwork {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/vms/{vmid}/rebuild_network" -Params $Params
}

Export-ModuleMember -Function *
