# HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth

function Get-HCProxmoxGetStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpve/status" -Params $Params
}

function Get-HCProxmoxPowerAction {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/htcpve/power" -Params $Params
}

function Get-HCProxmoxListVms {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpve/vms" -Params $Params
}

function Get-HCProxmoxListIps {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpve/ips" -Params $Params
}

function Get-HCProxmoxSetRdns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/htcpve/rdns" -Params $Params
}

function Get-HCProxmoxListBackups {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpve/backups" -Params $Params
}

function Get-HCProxmoxCreateBackup {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/htcpve/backups" -Params $Params
}

function Get-HCProxmoxListSnapshots {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpve/snapshots" -Params $Params
}

function Get-HCProxmoxCreateSnapshot {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/htcpve/snapshots" -Params $Params
}

function Get-HCProxmoxGetBandwidthUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpve/usage" -Params $Params
}

Export-ModuleMember -Function *
