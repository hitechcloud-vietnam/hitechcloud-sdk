//! Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct CephS3Resource {
    http: Arc<HttpClient>,
}

impl CephS3Resource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/s3 - Get S3 connection info
    pub async fn get_connection_info(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/s3", None).await
    }

    /// GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key
    pub async fn get_credentials(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/s3/credentials", None).await
    }

    /// GET /api/service/{id}/s3/usage - Get S3 usage
    pub async fn get_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/s3/usage", None).await
    }

    /// GET /api/service/{id}/s3/metrics - Get S3 metrics
    pub async fn get_metrics(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/s3/metrics", None).await
    }

    /// GET /api/service/{id}/s3/buckets - List buckets
    pub async fn list_buckets(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/s3/buckets", None).await
    }

    /// POST /api/service/{id}/s3/buckets - Create bucket
    pub async fn create_bucket(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/s3/buckets", None).await
    }

    /// DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket
    pub async fn delete_bucket(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{id}/s3/buckets/{bucket}", None).await
    }

    /// GET /api/service/{id}/s3/subusers - List sub-users
    pub async fn list_subusers(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/s3/subusers", None).await
    }

    /// POST /api/service/{id}/s3/subusers - Create sub-user
    pub async fn create_subuser(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/s3/subusers", None).await
    }

    /// DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user
    pub async fn delete_subuser(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{id}/s3/subusers/{subuser}", None).await
    }

    /// POST /api/service/{id}/s3/key - Rotate secret key
    pub async fn rotate_secret_key(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/s3/key", None).await
    }

}
