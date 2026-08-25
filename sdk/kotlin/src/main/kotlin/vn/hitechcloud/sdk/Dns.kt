package vn.hitechcloud.sdk

/** DNS: zones and records management for services */
class DnsResource(private val httpClient: HttpClient) {
    /** GET /api/dns - List all DNS zones */
    fun list(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/dns", params)
    }

    /** GET /api/service/{service_id}/dns - List DNS zones for service */
    fun listForService(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{service_id}/dns", params)
    }

    /** POST /api/service/{service_id}/dns - Create DNS zone */
    fun addZone(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{service_id}/dns", params)
    }

    /** GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details */
    fun getZone(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{service_id}/dns/{zone_id}", params)
    }

    /** DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone */
    fun deleteZone(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{service_id}/dns/{zone_id}", params)
    }

    /** POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record */
    fun addRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{service_id}/dns/{zone_id}/records", params)
    }

    /** PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record */
    fun editRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", params)
    }

    /** DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record */
    fun deleteRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", params)
    }

}
