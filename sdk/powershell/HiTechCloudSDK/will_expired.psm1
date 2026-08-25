# WillExpired: expiring services and domains management

function Get-HCWillExpiredListExpiring {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired" -Params $Params
}

function Get-HCWillExpiredGetSummary {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired/summary" -Params $Params
}

function Get-HCWillExpiredGetConfig {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired/config" -Params $Params
}

function Get-HCWillExpiredListOpenInvoices {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired/invoices" -Params $Params
}

function Get-HCWillExpiredListRequests {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired/requests" -Params $Params
}

function Get-HCWillExpiredExportAll {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired/export" -Params $Params
}

function Get-HCWillExpiredGetItem {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired/{type}/{id}" -Params $Params
}

function Get-HCWillExpiredRenew {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/willexpired/{type}/{id}/renew" -Params $Params
}

function Get-HCWillExpiredGetAutorenew {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/willexpired/{type}/{id}/autorenew" -Params $Params
}

function Get-HCWillExpiredSetAutorenew {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/willexpired/{type}/{id}/autorenew" -Params $Params
}

Export-ModuleMember -Function *
