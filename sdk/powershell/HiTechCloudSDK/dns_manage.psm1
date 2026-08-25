# DNS Manage: domain DNS records, DNSSEC, nameserver registration

function Get-HCDnsManageGetRecords {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/dns" -Params $Params
}

function Get-HCDnsManageCreateRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/domain/{id}/dns" -Params $Params
}

function Get-HCDnsManageUpdateRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/domain/{id}/dns/{index}" -Params $Params
}

function Get-HCDnsManageDeleteRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/domain/{id}/dns/{index}" -Params $Params
}

function Get-HCDnsManageGetRecordTypes {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/dns/types" -Params $Params
}

function Get-HCDnsManageGetDnssecFlags {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/dnssec/flags" -Params $Params
}

function Get-HCDnsManageGetDnssecRecords {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/dnssec" -Params $Params
}

function Get-HCDnsManageCreateDnssecRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/domain/{id}/dnssec" -Params $Params
}

function Get-HCDnsManageDeleteDnssecRecord {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/domain/{id}/dnssec" -Params $Params
}

function Get-HCDnsManageRegisterNameserver {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/domain/{id}/reg" -Params $Params
}

Export-ModuleMember -Function *
