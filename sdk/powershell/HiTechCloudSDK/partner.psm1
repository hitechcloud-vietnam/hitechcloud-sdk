# Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates

function Get-HCPartnerGetPartnerInfo {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner" -Params $Params
}

function Get-HCPartnerApply {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/partner/apply" -Params $Params
}

function Get-HCPartnerListTiers {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/tiers" -Params $Params
}

function Get-HCPartnerGetPricing {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/pricing" -Params $Params
}

function Get-HCPartnerListCustomers {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/customers" -Params $Params
}

function Get-HCPartnerGetEarnings {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/earnings" -Params $Params
}

function Get-HCPartnerGetWallet {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/wallet" -Params $Params
}

function Get-HCPartnerListPayouts {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/payouts" -Params $Params
}

function Get-HCPartnerRequestPayout {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/partner/payouts" -Params $Params
}

function Get-HCPartnerListLeads {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/leads" -Params $Params
}

function Get-HCPartnerCreateLead {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/partner/leads" -Params $Params
}

function Get-HCPartnerGetReferral {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/referral" -Params $Params
}

function Get-HCPartnerGetRates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/partner/rates" -Params $Params
}

Export-ModuleMember -Function *
