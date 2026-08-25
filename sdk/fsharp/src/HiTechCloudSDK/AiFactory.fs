namespace HiTechCloud.SDK

/// HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters
type AiFactoryResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/templates - List templates
    member this.ListTemplates() =
        async {
            return! httpClient.getAsync("/api/service/{id}/templates")
        }

    /// POST /api/service/{id}/templates - Save a template
    member this.SaveTemplate() =
        async {
            return! httpClient.postAsync("/api/service/{id}/templates")
        }

    /// GET /api/service/{id}/hitechcloud/mode - Get provisioning mode
    member this.GetProvisioningMode() =
        async {
            return! httpClient.getAsync("/api/service/{id}/hitechcloud/mode")
        }

    /// GET /api/service/{id}/hitechcloud/examples - Get JSON examples
    member this.GetJsonExamples() =
        async {
            return! httpClient.getAsync("/api/service/{id}/hitechcloud/examples")
        }

    /// GET /api/service/{id}/hitechcloud/schema - Get API schema
    member this.GetApiSchema() =
        async {
            return! httpClient.getAsync("/api/service/{id}/hitechcloud/schema")
        }

    /// GET /api/service/{id}/instances - List all GPU instances
    member this.ListInstances() =
        async {
            return! httpClient.getAsync("/api/service/{id}/instances")
        }

    /// POST /api/service/{id}/instances - Create a GPU instance
    member this.CreateInstance() =
        async {
            return! httpClient.postAsync("/api/service/{id}/instances")
        }

    /// GET /api/service/{id}/instances/types - List available GPU instance types
    member this.ListInstanceTypes() =
        async {
            return! httpClient.getAsync("/api/service/{id}/instances/types")
        }

    /// GET /api/service/{id}/instances/{instance_id} - Get instance details
    member this.GetInstance() =
        async {
            return! httpClient.getAsync("/api/service/{id}/instances/{instance_id}")
        }

    /// POST /api/service/{id}/instances/{instance_id}/update - Update instance
    member this.UpdateInstance() =
        async {
            return! httpClient.postAsync("/api/service/{id}/instances/{instance_id}/update")
        }

    /// POST /api/service/{id}/instances/{instance_id}/restart - Restart instance
    member this.RestartInstance() =
        async {
            return! httpClient.postAsync("/api/service/{id}/instances/{instance_id}/restart")
        }

    /// POST /api/service/{id}/instances/{instance_id}/delete - Delete instance
    member this.DeleteInstance() =
        async {
            return! httpClient.postAsync("/api/service/{id}/instances/{instance_id}/delete")
        }

    /// GET /api/service/{id}/instance - Get service instance
    member this.GetServiceInstance() =
        async {
            return! httpClient.getAsync("/api/service/{id}/instance")
        }

    /// POST /api/service/{id}/instance/sync - Synchronize service resource
    member this.SyncServiceInstance() =
        async {
            return! httpClient.postAsync("/api/service/{id}/instance/sync")
        }

    /// POST /api/service/{id}/instance/restart - Restart service instance
    member this.RestartServiceInstance() =
        async {
            return! httpClient.postAsync("/api/service/{id}/instance/restart")
        }

    /// POST /api/service/{id}/instance/update - Update service instance
    member this.UpdateServiceInstance() =
        async {
            return! httpClient.postAsync("/api/service/{id}/instance/update")
        }

    /// GET /api/service/{id}/sshkeys - List SSH keys
    member this.ListSshKeys() =
        async {
            return! httpClient.getAsync("/api/service/{id}/sshkeys")
        }

    /// POST /api/service/{id}/sshkeys - Add SSH key
    member this.AddSshKey() =
        async {
            return! httpClient.postAsync("/api/service/{id}/sshkeys")
        }

    /// GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details
    member this.GetSshKey() =
        async {
            return! httpClient.getAsync("/api/service/{id}/sshkeys/{key_id}")
        }

    /// POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key
    member this.DeleteSshKey() =
        async {
            return! httpClient.postAsync("/api/service/{id}/sshkeys/{key_id}/delete")
        }

    /// POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key
    member this.SetDefaultSshKey() =
        async {
            return! httpClient.postAsync("/api/service/{id}/sshkeys/{key_id}/setdefault")
        }

    /// GET /api/service/{id}/volumes - List volumes
    member this.ListVolumes() =
        async {
            return! httpClient.getAsync("/api/service/{id}/volumes")
        }

    /// POST /api/service/{id}/volumes - Create a storage volume
    member this.CreateVolume() =
        async {
            return! httpClient.postAsync("/api/service/{id}/volumes")
        }

    /// GET /api/service/{id}/volumes/types - List volume types
    member this.ListVolumeTypes() =
        async {
            return! httpClient.getAsync("/api/service/{id}/volumes/types")
        }

    /// GET /api/service/{id}/volumes/{volume_id} - Get volume details
    member this.GetVolume() =
        async {
            return! httpClient.getAsync("/api/service/{id}/volumes/{volume_id}")
        }

    /// POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume
    member this.DeleteVolume() =
        async {
            return! httpClient.postAsync("/api/service/{id}/volumes/{volume_id}/delete")
        }

    /// GET /api/service/{id}/templates/featured - List featured templates
    member this.ListFeaturedTemplates() =
        async {
            return! httpClient.getAsync("/api/service/{id}/templates/featured")
        }

    /// GET /api/service/{id}/templates/{template_id} - Get template details
    member this.GetTemplate() =
        async {
            return! httpClient.getAsync("/api/service/{id}/templates/{template_id}")
        }

    /// POST /api/service/{id}/templates/{template_id}/update - Update template
    member this.UpdateTemplate() =
        async {
            return! httpClient.postAsync("/api/service/{id}/templates/{template_id}/update")
        }

    /// POST /api/service/{id}/templates/{template_id}/delete - Delete template
    member this.DeleteTemplate() =
        async {
            return! httpClient.postAsync("/api/service/{id}/templates/{template_id}/delete")
        }

    /// GET /api/service/{id}/clusters - List GPU clusters
    member this.ListClusters() =
        async {
            return! httpClient.getAsync("/api/service/{id}/clusters")
        }

    /// POST /api/service/{id}/clusters - Create a GPU cluster
    member this.CreateCluster() =
        async {
            return! httpClient.postAsync("/api/service/{id}/clusters")
        }

    /// GET /api/service/{id}/clusters/types - List available GPU cluster types
    member this.ListClusterTypes() =
        async {
            return! httpClient.getAsync("/api/service/{id}/clusters/types")
        }

    /// GET /api/service/{id}/cluster - Get service cluster
    member this.GetServiceCluster() =
        async {
            return! httpClient.getAsync("/api/service/{id}/cluster")
        }

    /// GET /api/service/{id}/clusters/{cluster_id} - Get cluster details
    member this.GetCluster() =
        async {
            return! httpClient.getAsync("/api/service/{id}/clusters/{cluster_id}")
        }

    /// POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster
    member this.DeleteCluster() =
        async {
            return! httpClient.postAsync("/api/service/{id}/clusters/{cluster_id}/delete")
        }

