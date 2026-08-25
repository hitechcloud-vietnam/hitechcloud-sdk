# Billing & Contracts: balance, invoices, payment methods

function Get-HCBillingGetBalance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/balance" -Params $Params
}

function Get-HCBillingListInvoices {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/invoice" -Params $Params
}

function Get-HCBillingGetInvoice {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/invoice/{id}" -Params $Params
}

function Get-HCBillingApplyCredit {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/invoice/{id}/credit" -Params $Params
}

function Get-HCBillingGetPaymentMethods {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/payment" -Params $Params
}

function Get-HCBillingGetPaymentFees {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/payment/fees" -Params $Params
}

Export-ModuleMember -Function *
