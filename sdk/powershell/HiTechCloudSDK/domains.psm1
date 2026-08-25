# Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding

function Get-HCDomainsList {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain" -Params $Params
}

function Get-HCDomainsGet {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}" -Params $Params
}

function Get-HCDomainsGetByName {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/name/{name}" -Params $Params
}

function Get-HCDomainsWhois {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/whois/{domain}" -Params $Params
}

function Get-HCDomainsWhoisLookup {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/whoislookup/{domain}" -Params $Params
}

function Get-HCDomainsCheckAvailability {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/availability/{domain}" -Params $Params
}

function Get-HCDomainsGetNameservers {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/ns" -Params $Params
}

function Get-HCDomainsUpdateNameservers {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/domain/{id}/ns" -Params $Params
}

function Get-HCDomainsGetEppCode {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/epp" -Params $Params
}

function Get-HCDomainsSync {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/sync" -Params $Params
}

function Get-HCDomainsGetLock {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/reglock" -Params $Params
}

function Get-HCDomainsUpdateLock {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/domain/{id}/reglock" -Params $Params
}

function Get-HCDomainsUpdateIdProtection {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/domain/{id}/idprotection" -Params $Params
}

function Get-HCDomainsGetContact {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/contact" -Params $Params
}

function Get-HCDomainsUpdateContact {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/domain/{id}/contact" -Params $Params
}

function Get-HCDomainsGetEmailForwarding {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/email/forwarding" -Params $Params
}

function Get-HCDomainsUpdateEmailForwarding {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/domain/{id}/email/forwarding" -Params $Params
}

function Get-HCDomainsGetAvailableTlds {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/order" -Params $Params
}

function Get-HCDomainsOrder {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/domain/order" -Params $Params
}

function Get-HCDomainsRenew {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/domain/{id}/renew" -Params $Params
}

function Get-HCDomainsGetTldForm {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/order/{id}/form" -Params $Params
}

function Get-HCDomainsGetDocuments {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/domain/{id}/documents" -Params $Params
}

Export-ModuleMember -Function *
