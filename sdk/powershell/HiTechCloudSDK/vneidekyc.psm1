# VNeIDEKYC: eKYC identity verification and organization verification

function Get-HCVneidekycStartPersonalEkyc {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/vneidekyc/ekyc/session" -Params $Params
}

function Get-HCVneidekycGetEkycSession {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/vneidekyc/ekyc/session/{session_hash}" -Params $Params
}

function Get-HCVneidekycListClientSessions {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/vneidekyc/ekyc/list/{client_id}" -Params $Params
}

function Get-HCVneidekycUploadFile {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/ekyc/{session_hash}/upload" -Params $Params
}

function Get-HCVneidekycSubmitEkyc {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/ekyc/{session_hash}/submit" -Params $Params
}

function Get-HCVneidekycCancelSession {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/ekyc/{session_hash}/cancel" -Params $Params
}

function Get-HCVneidekycAcceptEkyc {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/ekyc/{session_hash}/accept" -Params $Params
}

function Get-HCVneidekycRejectEkyc {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/ekyc/{session_hash}/reject" -Params $Params
}

function Get-HCVneidekycLookupOrganization {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/org/lookup" -Params $Params
}

function Get-HCVneidekycStartOrgVerification {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/org/start" -Params $Params
}

function Get-HCVneidekycGetOrganization {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/vneidekyc/org/{org_hash}" -Params $Params
}

function Get-HCVneidekycAcceptOrganization {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/org/{org_hash}/accept" -Params $Params
}

function Get-HCVneidekycRejectOrganization {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/org/{org_hash}/reject" -Params $Params
}

function Get-HCVneidekycUploadSignedPdf {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/vneidekyc/pdf/upload" -Params $Params
}

function Get-HCVneidekycGetSignedPdf {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/vneidekyc/pdf/{pdf_hash}" -Params $Params
}

function Get-HCVneidekycGetClientStatus {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/vneidekyc/client/{client_id}/status" -Params $Params
}

Export-ModuleMember -Function *
