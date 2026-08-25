# SSL Certificates: list, order, download certificates

function Get-HCSslList {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/certificate" -Params $Params
}

function Get-HCSslGet {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/certificate/{id}" -Params $Params
}

function Get-HCSslDownload {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/certificate/{id}/crt" -Params $Params
}

function Get-HCSslListAvailable {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/certificate/order" -Params $Params
}

function Get-HCSslOrder {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/certificate/order" -Params $Params
}

function Get-HCSslListServerSoftware {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/certificate/order/{product_id}/software" -Params $Params
}

Export-ModuleMember -Function *
