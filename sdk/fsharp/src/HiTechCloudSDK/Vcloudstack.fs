namespace HiTechCloud.SDK

/// vCloudStack Public Cloud: rescue, unrescue, console, usage
type VCloudStackResource(httpClient: HttpClient) =

    /// POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode
    member this.RescueVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/rescue")
        }

    /// POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode
    member this.UnrescueVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/unrescue")
        }

    /// GET /api/service/{id}/vms/{vmid}/console - Get VM console
    member this.GetConsole() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/console")
        }

    /// GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details
    member this.GetUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/usage")
        }

