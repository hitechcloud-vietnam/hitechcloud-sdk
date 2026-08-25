package vn.hitechcloud.sdk

/** Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation */
class CephS3Resource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/s3 - Get S3 connection info */
    fun getConnectionInfo(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/s3", params)
    }

    /** GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key */
    fun getCredentials(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/s3/credentials", params)
    }

    /** GET /api/service/{id}/s3/usage - Get S3 usage */
    fun getUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/s3/usage", params)
    }

    /** GET /api/service/{id}/s3/metrics - Get S3 metrics */
    fun getMetrics(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/s3/metrics", params)
    }

    /** GET /api/service/{id}/s3/buckets - List buckets */
    fun listBuckets(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/s3/buckets", params)
    }

    /** POST /api/service/{id}/s3/buckets - Create bucket */
    fun createBucket(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/s3/buckets", params)
    }

    /** DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket */
    fun deleteBucket(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{id}/s3/buckets/{bucket}", params)
    }

    /** GET /api/service/{id}/s3/subusers - List sub-users */
    fun listSubusers(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/s3/subusers", params)
    }

    /** POST /api/service/{id}/s3/subusers - Create sub-user */
    fun createSubuser(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/s3/subusers", params)
    }

    /** DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user */
    fun deleteSubuser(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{id}/s3/subusers/{subuser}", params)
    }

    /** POST /api/service/{id}/s3/key - Rotate secret key */
    fun rotateSecretKey(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/s3/key", params)
    }

}
