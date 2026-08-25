# Affiliate: affiliate program management

function Get-HCAffiliateGetSummary {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates/summary" -Params $Params
}

function Get-HCAffiliateListCampaigns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates/campaigns" -Params $Params
}

function Get-HCAffiliateListCommissions {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates/commissions" -Params $Params
}

function Get-HCAffiliateListPayouts {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates/payouts" -Params $Params
}

function Get-HCAffiliateListVouchers {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates/vouchers" -Params $Params
}

function Get-HCAffiliateListCommissionPlans {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates/commissionplans" -Params $Params
}

Export-ModuleMember -Function *
