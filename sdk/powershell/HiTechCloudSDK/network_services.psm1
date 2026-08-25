# Network Services: IP addresses and reverse DNS for services

function Get-HCNetworkServicesListIps {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/ip" -Params $Params
}

function Get-HCNetworkServicesGetRdns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/rdns" -Params $Params
}

function Get-HCNetworkServicesUpdateRdns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/rdns" -Params $Params
}

Export-ModuleMember -Function *
