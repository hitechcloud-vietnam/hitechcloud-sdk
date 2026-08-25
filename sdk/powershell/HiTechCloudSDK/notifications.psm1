# Notifications: manage notification preferences

function Get-HCNotificationsList {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/notifications" -Params $Params
}

function Get-HCNotificationsListNew {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/notifications/new" -Params $Params
}

function Get-HCNotificationsAcknowledge {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/notifications/{id}/ack" -Params $Params
}

Export-ModuleMember -Function *
