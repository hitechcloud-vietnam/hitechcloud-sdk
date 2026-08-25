# DNS: zones and records management for services

function Get-HCDnsList {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/dns" -Params $Params
}

function Get-HCDnsListForService {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{service_id}/dns" -Params $Params
}

function Get-HCDnsAddZone {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{service_id}/dns" -Params $Params
}

function Get-HCDnsGetZone {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{service_id}/dns/{zone_id}" -Params $Params
}

function Get-HCDnsDeleteZone {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{service_id}/dns/{zone_id}" -Params $Params
}

function Get-HCDnsAddRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{service_id}/dns/{zone_id}/records" -Params $Params
}

function Get-HCDnsEditRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" -Params $Params
}

function Get-HCDnsDeleteRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" -Params $Params
}

Export-ModuleMember -Function *
