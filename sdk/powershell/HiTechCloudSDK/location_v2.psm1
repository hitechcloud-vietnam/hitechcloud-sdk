# LocationV2: countries, states, cities lookup

function Get-HCLocationV2ListCountries {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/location_v2/countries" -Params $Params
}

function Get-HCLocationV2GetStates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/location_v2/{code}/state" -Params $Params
}

function Get-HCLocationV2GetCities {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/location_v2/state/{id}/city" -Params $Params
}

function Get-HCLocationV2GetCitiesByStateName {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/location_v2/state/city/{name}" -Params $Params
}

Export-ModuleMember -Function *
