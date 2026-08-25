namespace HiTechCloud.SDK

/// Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation
type CephS3Resource(httpClient: HttpClient) =

    /// GET /api/service/{id}/s3 - Get S3 connection info
    member this.GetConnectionInfo() =
        async {
            return! httpClient.getAsync("/api/service/{id}/s3")
        }

    /// GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key
    member this.GetCredentials() =
        async {
            return! httpClient.getAsync("/api/service/{id}/s3/credentials")
        }

    /// GET /api/service/{id}/s3/usage - Get S3 usage
    member this.GetUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/s3/usage")
        }

    /// GET /api/service/{id}/s3/metrics - Get S3 metrics
    member this.GetMetrics() =
        async {
            return! httpClient.getAsync("/api/service/{id}/s3/metrics")
        }

    /// GET /api/service/{id}/s3/buckets - List buckets
    member this.ListBuckets() =
        async {
            return! httpClient.getAsync("/api/service/{id}/s3/buckets")
        }

    /// POST /api/service/{id}/s3/buckets - Create bucket
    member this.CreateBucket() =
        async {
            return! httpClient.postAsync("/api/service/{id}/s3/buckets")
        }

    /// DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket
    member this.DeleteBucket() =
        async {
            return! httpClient.deleteAsync("/api/service/{id}/s3/buckets/{bucket}")
        }

    /// GET /api/service/{id}/s3/subusers - List sub-users
    member this.ListSubusers() =
        async {
            return! httpClient.getAsync("/api/service/{id}/s3/subusers")
        }

    /// POST /api/service/{id}/s3/subusers - Create sub-user
    member this.CreateSubuser() =
        async {
            return! httpClient.postAsync("/api/service/{id}/s3/subusers")
        }

    /// DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user
    member this.DeleteSubuser() =
        async {
            return! httpClient.deleteAsync("/api/service/{id}/s3/subusers/{subuser}")
        }

    /// POST /api/service/{id}/s3/key - Rotate secret key
    member this.RotateSecretKey() =
        async {
            return! httpClient.postAsync("/api/service/{id}/s3/key")
        }

