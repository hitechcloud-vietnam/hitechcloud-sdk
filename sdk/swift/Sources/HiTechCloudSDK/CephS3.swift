import Foundation

/// Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation
public class CephS3Resource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/s3 - Get S3 connection info
    public func getConnectionInfo(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/s3", params: params)
    }

    /// GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key
    public func getCredentials(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/s3/credentials", params: params)
    }

    /// GET /api/service/{id}/s3/usage - Get S3 usage
    public func getUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/s3/usage", params: params)
    }

    /// GET /api/service/{id}/s3/metrics - Get S3 metrics
    public func getMetrics(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/s3/metrics", params: params)
    }

    /// GET /api/service/{id}/s3/buckets - List buckets
    public func listBuckets(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/s3/buckets", params: params)
    }

    /// POST /api/service/{id}/s3/buckets - Create bucket
    public func createBucket(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/s3/buckets", params: params)
    }

    /// DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket
    public func deleteBucket(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{id}/s3/buckets/{bucket}", params: params)
    }

    /// GET /api/service/{id}/s3/subusers - List sub-users
    public func listSubusers(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/s3/subusers", params: params)
    }

    /// POST /api/service/{id}/s3/subusers - Create sub-user
    public func createSubuser(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/s3/subusers", params: params)
    }

    /// DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user
    public func deleteSubuser(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{id}/s3/subusers/{subuser}", params: params)
    }

    /// POST /api/service/{id}/s3/key - Rotate secret key
    public func rotateSecretKey(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/s3/key", params: params)
    }

}
