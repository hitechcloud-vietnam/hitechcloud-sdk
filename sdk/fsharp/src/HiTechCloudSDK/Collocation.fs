namespace HiTechCloud.SDK

/// Collocation Services: PDU port management
type CollocationResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/pdu - List PDU ports assigned to service
    member this.ListPduPorts() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pdu")
        }

    /// GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state
    member this.GetPduPortState() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pdu/{port}")
        }

    /// POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state
    member this.SetPduPortStatus() =
        async {
            return! httpClient.postAsync("/api/service/{id}/pdu/{port}")
        }

