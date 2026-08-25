package vn.hitechcloud.sdk

/** DNS Manage: domain DNS records, DNSSEC, nameserver registration */
class DnsManageResource(private val httpClient: HttpClient) {
    /** GET /api/domain/{id}/dns - List DNS records */
    fun getRecords(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/dns", params)
    }

    /** POST /api/domain/{id}/dns - Create DNS record */
    fun createRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/domain/{id}/dns", params)
    }

    /** PUT /api/domain/{id}/dns/{index} - Update DNS record */
    fun updateRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/domain/{id}/dns/{index}", params)
    }

    /** DELETE /api/domain/{id}/dns/{index} - Remove DNS record */
    fun deleteRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/domain/{id}/dns/{index}", params)
    }

    /** GET /api/domain/{id}/dns/types - List supported record types */
    fun getRecordTypes(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/dns/types", params)
    }

    /** GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags */
    fun getDnssecFlags(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/dnssec/flags", params)
    }

    /** GET /api/domain/{id}/dnssec - Get DNSSEC records */
    fun getDnssecRecords(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/dnssec", params)
    }

    /** POST /api/domain/{id}/dnssec - Create DNSSEC record */
    fun createDnssecRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/domain/{id}/dnssec", params)
    }

    /** DELETE /api/domain/{id}/dnssec - Remove DNSSEC record */
    fun deleteDnssecRecord(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/domain/{id}/dnssec", params)
    }

    /** POST /api/domain/{id}/reg - Register domain nameserver */
    fun registerNameserver(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/domain/{id}/reg", params)
    }

}
