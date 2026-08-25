package vn.hitechcloud.sdk

/** SSL Certificates: list, order, download certificates */
class SSLResource(private val httpClient: HttpClient) {
    /** GET /api/certificate - List all SSL certificates */
    fun list(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/certificate", params)
    }

    /** GET /api/certificate/{id} - Return certificate details */
    fun get(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/certificate/{id}", params)
    }

    /** GET /api/certificate/{id}/crt - Download X.509 certificate */
    fun download(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/certificate/{id}/crt", params)
    }

    /** GET /api/certificate/order - List available certificates for purchase */
    fun listAvailable(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/certificate/order", params)
    }

    /** POST /api/certificate/order - Order new certificate */
    fun order(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/certificate/order", params)
    }

    /** GET /api/certificate/order/{product_id}/software - List server software */
    fun listServerSoftware(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/certificate/order/{product_id}/software", params)
    }

}
