package vn.hitechcloud.sdk

/** Collocation Services: PDU port management */
class CollocationResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/pdu - List PDU ports assigned to service */
    fun listPduPorts(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pdu", params)
    }

    /** GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state */
    fun getPduPortState(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pdu/{port}", params)
    }

    /** POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state */
    fun setPduPortStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/pdu/{port}", params)
    }

}
