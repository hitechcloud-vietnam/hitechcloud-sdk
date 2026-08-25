package vn.hitechcloud.sdk

/** HiTechCloudIPAM: IP addresses, subnets, reverse DNS */
class IpamResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/htcipam/ips - List IP addresses */
    fun listIps(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcipam/ips", params)
    }

    /** GET /api/service/{id}/htcipam/subnets - List subnets */
    fun listSubnets(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcipam/subnets", params)
    }

    /** GET /api/service/{id}/htcipam/rdns - List reverse DNS records */
    fun listRdns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcipam/rdns", params)
    }

    /** POST /api/service/{id}/htcipam/rdns - Set reverse DNS */
    fun setRdns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/htcipam/rdns", params)
    }

}
