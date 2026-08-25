# HiTechCloudIPAM: IP addresses, subnets, reverse DNS

function Get-HCIpamListIps {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcipam/ips" -Params $Params
}

function Get-HCIpamListSubnets {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcipam/subnets" -Params $Params
}

function Get-HCIpamListRdns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcipam/rdns" -Params $Params
}

function Get-HCIpamSetRdns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/htcipam/rdns" -Params $Params
}

Export-ModuleMember -Function *
