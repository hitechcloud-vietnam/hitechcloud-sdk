package vn.hitechcloud.sdk

/** HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters */
class AiFactoryResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/templates - List templates */
    fun listTemplates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/templates", params)
    }

    /** POST /api/service/{id}/templates - Save a template */
    fun saveTemplate(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/templates", params)
    }

    /** GET /api/service/{id}/hitechcloud/mode - Get provisioning mode */
    fun getProvisioningMode(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/hitechcloud/mode", params)
    }

    /** GET /api/service/{id}/hitechcloud/examples - Get JSON examples */
    fun getJsonExamples(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/hitechcloud/examples", params)
    }

    /** GET /api/service/{id}/hitechcloud/schema - Get API schema */
    fun getApiSchema(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/hitechcloud/schema", params)
    }

    /** GET /api/service/{id}/instances - List all GPU instances */
    fun listInstances(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/instances", params)
    }

    /** POST /api/service/{id}/instances - Create a GPU instance */
    fun createInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/instances", params)
    }

    /** GET /api/service/{id}/instances/types - List available GPU instance types */
    fun listInstanceTypes(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/instances/types", params)
    }

    /** GET /api/service/{id}/instances/{instance_id} - Get instance details */
    fun getInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/instances/{instance_id}", params)
    }

    /** POST /api/service/{id}/instances/{instance_id}/update - Update instance */
    fun updateInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/instances/{instance_id}/update", params)
    }

    /** POST /api/service/{id}/instances/{instance_id}/restart - Restart instance */
    fun restartInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/instances/{instance_id}/restart", params)
    }

    /** POST /api/service/{id}/instances/{instance_id}/delete - Delete instance */
    fun deleteInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/instances/{instance_id}/delete", params)
    }

    /** GET /api/service/{id}/instance - Get service instance */
    fun getServiceInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/instance", params)
    }

    /** POST /api/service/{id}/instance/sync - Synchronize service resource */
    fun syncServiceInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/instance/sync", params)
    }

    /** POST /api/service/{id}/instance/restart - Restart service instance */
    fun restartServiceInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/instance/restart", params)
    }

    /** POST /api/service/{id}/instance/update - Update service instance */
    fun updateServiceInstance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/instance/update", params)
    }

    /** GET /api/service/{id}/sshkeys - List SSH keys */
    fun listSshKeys(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/sshkeys", params)
    }

    /** POST /api/service/{id}/sshkeys - Add SSH key */
    fun addSshKey(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/sshkeys", params)
    }

    /** GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details */
    fun getSshKey(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/sshkeys/{key_id}", params)
    }

    /** POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key */
    fun deleteSshKey(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/sshkeys/{key_id}/delete", params)
    }

    /** POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key */
    fun setDefaultSshKey(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/sshkeys/{key_id}/setdefault", params)
    }

    /** GET /api/service/{id}/volumes - List volumes */
    fun listVolumes(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/volumes", params)
    }

    /** POST /api/service/{id}/volumes - Create a storage volume */
    fun createVolume(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/volumes", params)
    }

    /** GET /api/service/{id}/volumes/types - List volume types */
    fun listVolumeTypes(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/volumes/types", params)
    }

    /** GET /api/service/{id}/volumes/{volume_id} - Get volume details */
    fun getVolume(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/volumes/{volume_id}", params)
    }

    /** POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume */
    fun deleteVolume(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/volumes/{volume_id}/delete", params)
    }

    /** GET /api/service/{id}/templates/featured - List featured templates */
    fun listFeaturedTemplates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/templates/featured", params)
    }

    /** GET /api/service/{id}/templates/{template_id} - Get template details */
    fun getTemplate(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/templates/{template_id}", params)
    }

    /** POST /api/service/{id}/templates/{template_id}/update - Update template */
    fun updateTemplate(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/templates/{template_id}/update", params)
    }

    /** POST /api/service/{id}/templates/{template_id}/delete - Delete template */
    fun deleteTemplate(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/templates/{template_id}/delete", params)
    }

    /** GET /api/service/{id}/clusters - List GPU clusters */
    fun listClusters(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/clusters", params)
    }

    /** POST /api/service/{id}/clusters - Create a GPU cluster */
    fun createCluster(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/clusters", params)
    }

    /** GET /api/service/{id}/clusters/types - List available GPU cluster types */
    fun listClusterTypes(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/clusters/types", params)
    }

    /** GET /api/service/{id}/cluster - Get service cluster */
    fun getServiceCluster(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/cluster", params)
    }

    /** GET /api/service/{id}/clusters/{cluster_id} - Get cluster details */
    fun getCluster(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/clusters/{cluster_id}", params)
    }

    /** POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster */
    fun deleteCluster(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/clusters/{cluster_id}/delete", params)
    }

}
