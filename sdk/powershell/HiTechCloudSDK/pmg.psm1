# HiTechCloudPMG: mail filtering configuration and management

function Get-HCPmgGetConfig {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpmg/config" -Params $Params
}

function Get-HCPmgAddDomain {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/htcpmg/domains" -Params $Params
}

function Get-HCPmgSetTransport {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/htcpmg/transport" -Params $Params
}

function Get-HCPmgGetStats {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/htcpmg/stats" -Params $Params
}

Export-ModuleMember -Function *
