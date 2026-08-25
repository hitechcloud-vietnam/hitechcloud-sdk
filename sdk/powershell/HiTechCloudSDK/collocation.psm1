# Collocation Services: PDU port management

function Get-HCCollocationListPduPorts {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pdu" -Params $Params
}

function Get-HCCollocationGetPduPortState {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/pdu/{port}" -Params $Params
}

function Get-HCCollocationSetPduPortStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/pdu/{port}" -Params $Params
}

Export-ModuleMember -Function *
