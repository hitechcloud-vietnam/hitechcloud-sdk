# Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token

function Get-HCProxmoxBackupGetConnectionInfo {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pbs" -Params $Params
}

function Get-HCProxmoxBackupGetCredentials {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pbs/credentials" -Params $Params
}

function Get-HCProxmoxBackupGetUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pbs/usage" -Params $Params
}

function Get-HCProxmoxBackupGetMetrics {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pbs/metrics" -Params $Params
}

function Get-HCProxmoxBackupListSnapshots {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pbs/snapshots" -Params $Params
}

function Get-HCProxmoxBackupListGroups {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pbs/groups" -Params $Params
}

function Get-HCProxmoxBackupChangePassword {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/pbs/password" -Params $Params
}

function Get-HCProxmoxBackupRotateToken {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/pbs/token" -Params $Params
}

function Get-HCProxmoxBackupRevokeToken {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{id}/pbs/token" -Params $Params
}

Export-ModuleMember -Function *
