# Cart: shopping cart management

function Get-HCCartListCategories {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/category" -Params $Params
}

function Get-HCCartListProducts {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/category/{category_id}/product" -Params $Params
}

function Get-HCCartGetProductConfig {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/order/{product_id}" -Params $Params
}

function Get-HCCartOrderProduct {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/order/{product_id}" -Params $Params
}

function Get-HCCartOrderMultiple {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/order" -Params $Params
}

function Get-HCCartGetQuote {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/quote" -Params $Params
}

Export-ModuleMember -Function *
