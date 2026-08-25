# URL Shortener: shorten URLs, manage links, stats

function Get-HCUrlShortenerShorten {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/url-shortener/shorten" -Params $Params
}

function Get-HCUrlShortenerListLinks {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/url-shortener/links" -Params $Params
}

function Get-HCUrlShortenerGetConfig {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/url-shortener/config" -Params $Params
}

function Get-HCUrlShortenerGetStats {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/url-shortener/stats" -Params $Params
}

function Get-HCUrlShortenerGetLink {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/url-shortener/links/{id}" -Params $Params
}

function Get-HCUrlShortenerDeleteLink {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/url-shortener/links/{id}" -Params $Params
}

Export-ModuleMember -Function *
