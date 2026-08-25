# HiTechCloud hitechcloud-sdk SDK

$Script:BaseUrl = "https://api.hitechcloud.vn"
$Script:Token = $null
$Script:Timeout = 30

function New-HiTechCloudClient {
    [CmdletBinding()]
    param(
        [string]$BaseUrl = "https://api.hitechcloud.vn",
        [string]$Token,
        [int]$Timeout = 30
    )
    $Script:BaseUrl = $BaseUrl
    $Script:Token = $Token
    $Script:Timeout = $Timeout
}

function Invoke-HCRequest {
    [CmdletBinding()]
    param([string]$Method, [string]$Path, [hashtable]$Body, [hashtable]$Params)
    $url = "$($Script:BaseUrl)$Path"
    if ($Params) {
        $qs = ($Params.GetEnumerator() | Where-Object { $_.Value -ne $null } | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join "&"
        if ($qs) { $url = "$url?$qs" }
    }
    $headers = @{ "Content-Type" = "application/json"; "Accept" = "application/json" }
    if ($Script:Token) { $headers['Authorization'] = "Bearer $($Script:Token)" }
    $splat = @{ Uri = $url; Method = $Method; Headers = $headers; TimeoutSec = $Script:Timeout }
    if ($Body) { $splat.Body = ($Body | ConvertTo-Json -Depth 10) }
    Invoke-RestMethod @splat
}

Import-Module "$PSScriptRoot\\affiliate.psm1"
Import-Module "$PSScriptRoot\\affiliates_advanced.psm1"
Import-Module "$PSScriptRoot\\ai_factory.psm1"
Import-Module "$PSScriptRoot\\auth.psm1"
Import-Module "$PSScriptRoot\\bare_metal.psm1"
Import-Module "$PSScriptRoot\\billing.psm1"
Import-Module "$PSScriptRoot\\cart.psm1"
Import-Module "$PSScriptRoot\\ceph_s3.psm1"
Import-Module "$PSScriptRoot\\cloud_gpu.psm1"
Import-Module "$PSScriptRoot\\cloud_instance.psm1"
Import-Module "$PSScriptRoot\\cloud_service.psm1"
Import-Module "$PSScriptRoot\\cloud_vm.psm1"
Import-Module "$PSScriptRoot\\collocation.psm1"
Import-Module "$PSScriptRoot\\contacts.psm1"
Import-Module "$PSScriptRoot\\dns.psm1"
Import-Module "$PSScriptRoot\\dns_manage.psm1"
Import-Module "$PSScriptRoot\\domains.psm1"
Import-Module "$PSScriptRoot\\email_mfa_v2.psm1"
Import-Module "$PSScriptRoot\\hosting.psm1"
Import-Module "$PSScriptRoot\\ipam.psm1"
Import-Module "$PSScriptRoot\\location_v2.psm1"
Import-Module "$PSScriptRoot\\network_services.psm1"
Import-Module "$PSScriptRoot\\notifications.psm1"
Import-Module "$PSScriptRoot\\partner.psm1"
Import-Module "$PSScriptRoot\\passkey_v2.psm1"
Import-Module "$PSScriptRoot\\pmg.psm1"
Import-Module "$PSScriptRoot\\proxmox.psm1"
Import-Module "$PSScriptRoot\\proxmox_backup.psm1"
Import-Module "$PSScriptRoot\\service_status.psm1"
Import-Module "$PSScriptRoot\\services.psm1"
Import-Module "$PSScriptRoot\\ssl.psm1"
Import-Module "$PSScriptRoot\\support.psm1"
Import-Module "$PSScriptRoot\\url_shortener.psm1"
Import-Module "$PSScriptRoot\\users.psm1"
Import-Module "$PSScriptRoot\\vcloudstack.psm1"
Import-Module "$PSScriptRoot\\virtualizor.psm1"
Import-Module "$PSScriptRoot\\vneidekyc.psm1"
Import-Module "$PSScriptRoot\\will_expired.psm1"
