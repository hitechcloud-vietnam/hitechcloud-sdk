# HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters

function Get-HCAiFactoryListTemplates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/templates" -Params $Params
}

function Get-HCAiFactorySaveTemplate {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/templates" -Params $Params
}

function Get-HCAiFactoryGetProvisioningMode {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/hitechcloud/mode" -Params $Params
}

function Get-HCAiFactoryGetJsonExamples {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/hitechcloud/examples" -Params $Params
}

function Get-HCAiFactoryGetApiSchema {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/hitechcloud/schema" -Params $Params
}

function Get-HCAiFactoryListInstances {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/instances" -Params $Params
}

function Get-HCAiFactoryCreateInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/instances" -Params $Params
}

function Get-HCAiFactoryListInstanceTypes {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/instances/types" -Params $Params
}

function Get-HCAiFactoryGetInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/instances/{instance_id}" -Params $Params
}

function Get-HCAiFactoryUpdateInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/instances/{instance_id}/update" -Params $Params
}

function Get-HCAiFactoryRestartInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/instances/{instance_id}/restart" -Params $Params
}

function Get-HCAiFactoryDeleteInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/instances/{instance_id}/delete" -Params $Params
}

function Get-HCAiFactoryGetServiceInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/instance" -Params $Params
}

function Get-HCAiFactorySyncServiceInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/instance/sync" -Params $Params
}

function Get-HCAiFactoryRestartServiceInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/instance/restart" -Params $Params
}

function Get-HCAiFactoryUpdateServiceInstance {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/instance/update" -Params $Params
}

function Get-HCAiFactoryListSshKeys {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/sshkeys" -Params $Params
}

function Get-HCAiFactoryAddSshKey {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/sshkeys" -Params $Params
}

function Get-HCAiFactoryGetSshKey {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/sshkeys/{key_id}" -Params $Params
}

function Get-HCAiFactoryDeleteSshKey {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/sshkeys/{key_id}/delete" -Params $Params
}

function Get-HCAiFactorySetDefaultSshKey {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/sshkeys/{key_id}/setdefault" -Params $Params
}

function Get-HCAiFactoryListVolumes {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/volumes" -Params $Params
}

function Get-HCAiFactoryCreateVolume {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/volumes" -Params $Params
}

function Get-HCAiFactoryListVolumeTypes {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/volumes/types" -Params $Params
}

function Get-HCAiFactoryGetVolume {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/volumes/{volume_id}" -Params $Params
}

function Get-HCAiFactoryDeleteVolume {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/volumes/{volume_id}/delete" -Params $Params
}

function Get-HCAiFactoryListFeaturedTemplates {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/templates/featured" -Params $Params
}

function Get-HCAiFactoryGetTemplate {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/templates/{template_id}" -Params $Params
}

function Get-HCAiFactoryUpdateTemplate {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/templates/{template_id}/update" -Params $Params
}

function Get-HCAiFactoryDeleteTemplate {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/templates/{template_id}/delete" -Params $Params
}

function Get-HCAiFactoryListClusters {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/clusters" -Params $Params
}

function Get-HCAiFactoryCreateCluster {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/clusters" -Params $Params
}

function Get-HCAiFactoryListClusterTypes {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/clusters/types" -Params $Params
}

function Get-HCAiFactoryGetServiceCluster {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/cluster" -Params $Params
}

function Get-HCAiFactoryGetCluster {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/clusters/{cluster_id}" -Params $Params
}

function Get-HCAiFactoryDeleteCluster {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/clusters/{cluster_id}/delete" -Params $Params
}

Export-ModuleMember -Function *
