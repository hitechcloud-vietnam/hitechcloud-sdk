# Contacts: manage account contacts

function Get-HCContactsList {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/contact" -Params $Params
}

function Get-HCContactsCreate {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/contact" -Params $Params
}

function Get-HCContactsGetPrivileges {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/contact/privileges" -Params $Params
}

function Get-HCContactsGet {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/contact/{id}" -Params $Params
}

function Get-HCContactsUpdate {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/contact/{id}" -Params $Params
}

Export-ModuleMember -Function *
