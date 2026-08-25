//! HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct AiFactoryResource {
    http: Arc<HttpClient>,
}

impl AiFactoryResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/templates - List templates
    pub async fn list_templates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/templates", None).await
    }

    /// POST /api/service/{id}/templates - Save a template
    pub async fn save_template(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/templates", None).await
    }

    /// GET /api/service/{id}/hitechcloud/mode - Get provisioning mode
    pub async fn get_provisioning_mode(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/hitechcloud/mode", None).await
    }

    /// GET /api/service/{id}/hitechcloud/examples - Get JSON examples
    pub async fn get_json_examples(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/hitechcloud/examples", None).await
    }

    /// GET /api/service/{id}/hitechcloud/schema - Get API schema
    pub async fn get_api_schema(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/hitechcloud/schema", None).await
    }

    /// GET /api/service/{id}/instances - List all GPU instances
    pub async fn list_instances(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/instances", None).await
    }

    /// POST /api/service/{id}/instances - Create a GPU instance
    pub async fn create_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/instances", None).await
    }

    /// GET /api/service/{id}/instances/types - List available GPU instance types
    pub async fn list_instance_types(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/instances/types", None).await
    }

    /// GET /api/service/{id}/instances/{instance_id} - Get instance details
    pub async fn get_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/instances/{instance_id}", None).await
    }

    /// POST /api/service/{id}/instances/{instance_id}/update - Update instance
    pub async fn update_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/instances/{instance_id}/update", None).await
    }

    /// POST /api/service/{id}/instances/{instance_id}/restart - Restart instance
    pub async fn restart_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/instances/{instance_id}/restart", None).await
    }

    /// POST /api/service/{id}/instances/{instance_id}/delete - Delete instance
    pub async fn delete_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/instances/{instance_id}/delete", None).await
    }

    /// GET /api/service/{id}/instance - Get service instance
    pub async fn get_service_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/instance", None).await
    }

    /// POST /api/service/{id}/instance/sync - Synchronize service resource
    pub async fn sync_service_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/instance/sync", None).await
    }

    /// POST /api/service/{id}/instance/restart - Restart service instance
    pub async fn restart_service_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/instance/restart", None).await
    }

    /// POST /api/service/{id}/instance/update - Update service instance
    pub async fn update_service_instance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/instance/update", None).await
    }

    /// GET /api/service/{id}/sshkeys - List SSH keys
    pub async fn list_ssh_keys(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/sshkeys", None).await
    }

    /// POST /api/service/{id}/sshkeys - Add SSH key
    pub async fn add_ssh_key(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/sshkeys", None).await
    }

    /// GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details
    pub async fn get_ssh_key(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/sshkeys/{key_id}", None).await
    }

    /// POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key
    pub async fn delete_ssh_key(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/sshkeys/{key_id}/delete", None).await
    }

    /// POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key
    pub async fn set_default_ssh_key(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/sshkeys/{key_id}/setdefault", None).await
    }

    /// GET /api/service/{id}/volumes - List volumes
    pub async fn list_volumes(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/volumes", None).await
    }

    /// POST /api/service/{id}/volumes - Create a storage volume
    pub async fn create_volume(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/volumes", None).await
    }

    /// GET /api/service/{id}/volumes/types - List volume types
    pub async fn list_volume_types(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/volumes/types", None).await
    }

    /// GET /api/service/{id}/volumes/{volume_id} - Get volume details
    pub async fn get_volume(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/volumes/{volume_id}", None).await
    }

    /// POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume
    pub async fn delete_volume(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/volumes/{volume_id}/delete", None).await
    }

    /// GET /api/service/{id}/templates/featured - List featured templates
    pub async fn list_featured_templates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/templates/featured", None).await
    }

    /// GET /api/service/{id}/templates/{template_id} - Get template details
    pub async fn get_template(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/templates/{template_id}", None).await
    }

    /// POST /api/service/{id}/templates/{template_id}/update - Update template
    pub async fn update_template(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/templates/{template_id}/update", None).await
    }

    /// POST /api/service/{id}/templates/{template_id}/delete - Delete template
    pub async fn delete_template(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/templates/{template_id}/delete", None).await
    }

    /// GET /api/service/{id}/clusters - List GPU clusters
    pub async fn list_clusters(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/clusters", None).await
    }

    /// POST /api/service/{id}/clusters - Create a GPU cluster
    pub async fn create_cluster(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/clusters", None).await
    }

    /// GET /api/service/{id}/clusters/types - List available GPU cluster types
    pub async fn list_cluster_types(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/clusters/types", None).await
    }

    /// GET /api/service/{id}/cluster - Get service cluster
    pub async fn get_service_cluster(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/cluster", None).await
    }

    /// GET /api/service/{id}/clusters/{cluster_id} - Get cluster details
    pub async fn get_cluster(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/clusters/{cluster_id}", None).await
    }

    /// POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster
    pub async fn delete_cluster(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/clusters/{cluster_id}/delete", None).await
    }

}
