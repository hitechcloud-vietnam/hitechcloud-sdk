import Foundation

/// HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters
public class AiFactoryResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/templates - List templates
    public func listTemplates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/templates", params: params)
    }

    /// POST /api/service/{id}/templates - Save a template
    public func saveTemplate(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/templates", params: params)
    }

    /// GET /api/service/{id}/hitechcloud/mode - Get provisioning mode
    public func getProvisioningMode(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/hitechcloud/mode", params: params)
    }

    /// GET /api/service/{id}/hitechcloud/examples - Get JSON examples
    public func getJsonExamples(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/hitechcloud/examples", params: params)
    }

    /// GET /api/service/{id}/hitechcloud/schema - Get API schema
    public func getApiSchema(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/hitechcloud/schema", params: params)
    }

    /// GET /api/service/{id}/instances - List all GPU instances
    public func listInstances(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/instances", params: params)
    }

    /// POST /api/service/{id}/instances - Create a GPU instance
    public func createInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/instances", params: params)
    }

    /// GET /api/service/{id}/instances/types - List available GPU instance types
    public func listInstanceTypes(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/instances/types", params: params)
    }

    /// GET /api/service/{id}/instances/{instance_id} - Get instance details
    public func getInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/instances/{instance_id}", params: params)
    }

    /// POST /api/service/{id}/instances/{instance_id}/update - Update instance
    public func updateInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/instances/{instance_id}/update", params: params)
    }

    /// POST /api/service/{id}/instances/{instance_id}/restart - Restart instance
    public func restartInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/instances/{instance_id}/restart", params: params)
    }

    /// POST /api/service/{id}/instances/{instance_id}/delete - Delete instance
    public func deleteInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/instances/{instance_id}/delete", params: params)
    }

    /// GET /api/service/{id}/instance - Get service instance
    public func getServiceInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/instance", params: params)
    }

    /// POST /api/service/{id}/instance/sync - Synchronize service resource
    public func syncServiceInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/instance/sync", params: params)
    }

    /// POST /api/service/{id}/instance/restart - Restart service instance
    public func restartServiceInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/instance/restart", params: params)
    }

    /// POST /api/service/{id}/instance/update - Update service instance
    public func updateServiceInstance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/instance/update", params: params)
    }

    /// GET /api/service/{id}/sshkeys - List SSH keys
    public func listSshKeys(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/sshkeys", params: params)
    }

    /// POST /api/service/{id}/sshkeys - Add SSH key
    public func addSshKey(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/sshkeys", params: params)
    }

    /// GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details
    public func getSshKey(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/sshkeys/{key_id}", params: params)
    }

    /// POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key
    public func deleteSshKey(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/sshkeys/{key_id}/delete", params: params)
    }

    /// POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key
    public func setDefaultSshKey(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/sshkeys/{key_id}/setdefault", params: params)
    }

    /// GET /api/service/{id}/volumes - List volumes
    public func listVolumes(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/volumes", params: params)
    }

    /// POST /api/service/{id}/volumes - Create a storage volume
    public func createVolume(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/volumes", params: params)
    }

    /// GET /api/service/{id}/volumes/types - List volume types
    public func listVolumeTypes(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/volumes/types", params: params)
    }

    /// GET /api/service/{id}/volumes/{volume_id} - Get volume details
    public func getVolume(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/volumes/{volume_id}", params: params)
    }

    /// POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume
    public func deleteVolume(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/volumes/{volume_id}/delete", params: params)
    }

    /// GET /api/service/{id}/templates/featured - List featured templates
    public func listFeaturedTemplates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/templates/featured", params: params)
    }

    /// GET /api/service/{id}/templates/{template_id} - Get template details
    public func getTemplate(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/templates/{template_id}", params: params)
    }

    /// POST /api/service/{id}/templates/{template_id}/update - Update template
    public func updateTemplate(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/templates/{template_id}/update", params: params)
    }

    /// POST /api/service/{id}/templates/{template_id}/delete - Delete template
    public func deleteTemplate(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/templates/{template_id}/delete", params: params)
    }

    /// GET /api/service/{id}/clusters - List GPU clusters
    public func listClusters(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/clusters", params: params)
    }

    /// POST /api/service/{id}/clusters - Create a GPU cluster
    public func createCluster(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/clusters", params: params)
    }

    /// GET /api/service/{id}/clusters/types - List available GPU cluster types
    public func listClusterTypes(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/clusters/types", params: params)
    }

    /// GET /api/service/{id}/cluster - Get service cluster
    public func getServiceCluster(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/cluster", params: params)
    }

    /// GET /api/service/{id}/clusters/{cluster_id} - Get cluster details
    public func getCluster(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/clusters/{cluster_id}", params: params)
    }

    /// POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster
    public func deleteCluster(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/clusters/{cluster_id}/delete", params: params)
    }

}
