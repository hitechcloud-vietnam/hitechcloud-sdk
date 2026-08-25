namespace HiTechCloud.SDK

/// Virtualizor: VPS management via Virtualizor panel
type VirtualizorResource(httpClient: HttpClient) =

    /// POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server
    member this.Suspend() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/suspend")
        }

    /// POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server
    member this.Unsuspend() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/unsuspend")
        }

    /// GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates
    member this.ListRebuildTemplates() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/rebuild")
        }

    /// POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key
    member this.ChangeSshKey() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/addsshkey")
        }

