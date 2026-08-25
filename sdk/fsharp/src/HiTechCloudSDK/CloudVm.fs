namespace HiTechCloud.SDK

/// Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE
type CloudVmResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/upgrade - List resource upgrade options
    member this.GetUpgradeOptions() =
        async {
            return! httpClient.getAsync("/api/service/{id}/upgrade")
        }

    /// POST /api/service/{id}/upgrade - Estimate or request upgrade
    member this.RequestUpgrade() =
        async {
            return! httpClient.postAsync("/api/service/{id}/upgrade")
        }

    /// GET /api/service/{id}/resources - Show available and used resources
    member this.GetResources() =
        async {
            return! httpClient.getAsync("/api/service/{id}/resources")
        }

    /// GET /api/service/{id}/templates/{vmid} - List rebuild templates
    member this.ListRebuildTemplates() =
        async {
            return! httpClient.getAsync("/api/service/{id}/templates/{vmid}")
        }

    /// GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph
    member this.GetMemoryUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/usage/memory")
        }

    /// GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM
    member this.ListIsoImages() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/images")
        }

    /// POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image
    member this.MountIso() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/images")
        }

    /// POST /api/service/{id}/vms/{vmid}/boot - Change boot order
    member this.SetBootOrder() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/boot")
        }

    /// POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE
    member this.EnablePxe() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/tuntap")
        }

