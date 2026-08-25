# AffiliatesAdvanced: advanced affiliate management with client_id

function Get-HCAffiliatesAdvancedGetInfo {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/info" -Params $Params
}

function Get-HCAffiliatesAdvancedGetStats {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/stats" -Params $Params
}

function Get-HCAffiliatesAdvancedGetCommissionPlans {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/commission-plans" -Params $Params
}

function Get-HCAffiliatesAdvancedGetVouchers {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/vouchers" -Params $Params
}

function Get-HCAffiliatesAdvancedGetCommissions {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/commissions" -Params $Params
}

function Get-HCAffiliatesAdvancedGetReferrals {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/referrals" -Params $Params
}

function Get-HCAffiliatesAdvancedGetPayouts {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/payouts" -Params $Params
}

function Get-HCAffiliatesAdvancedGetCampaigns {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/campaigns" -Params $Params
}

function Get-HCAffiliatesAdvancedGetAuditLog {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/affiliates_adv/{client_id}/audit" -Params $Params
}

function Get-HCAffiliatesAdvancedActivate {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/affiliates_adv/{client_id}/activate" -Params $Params
}

function Get-HCAffiliatesAdvancedSetCommissionPlan {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/affiliates_adv/{client_id}/commission-plan/{commission_id}" -Params $Params
}

function Get-HCAffiliatesAdvancedCreateVoucher {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/affiliates_adv/{client_id}/vouchers/{plan_id}" -Params $Params
}

function Get-HCAffiliatesAdvancedDeleteVoucher {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/affiliates_adv/{client_id}/vouchers/{voucher_id}" -Params $Params
}

function Get-HCAffiliatesAdvancedSetLandingPage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/affiliates_adv/{client_id}/landing-page" -Params $Params
}

Export-ModuleMember -Function *
