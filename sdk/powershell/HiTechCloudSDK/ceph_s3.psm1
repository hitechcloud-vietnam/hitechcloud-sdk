# Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation

function Get-HCCephS3GetConnectionInfo {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/s3" -Params $Params
}

function Get-HCCephS3GetCredentials {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/s3/credentials" -Params $Params
}

function Get-HCCephS3GetUsage {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/s3/usage" -Params $Params
}

function Get-HCCephS3GetMetrics {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/s3/metrics" -Params $Params
}

function Get-HCCephS3ListBuckets {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/s3/buckets" -Params $Params
}

function Get-HCCephS3CreateBucket {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/s3/buckets" -Params $Params
}

function Get-HCCephS3DeleteBucket {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{id}/s3/buckets/{bucket}" -Params $Params
}

function Get-HCCephS3ListSubusers {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/service/{id}/s3/subusers" -Params $Params
}

function Get-HCCephS3CreateSubuser {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/s3/subusers" -Params $Params
}

function Get-HCCephS3DeleteSubuser {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "DELETE" -Path "/api/service/{id}/s3/subusers/{subuser}" -Params $Params
}

function Get-HCCephS3RotateSecretKey {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/service/{id}/s3/key" -Params $Params
}

Export-ModuleMember -Function *
