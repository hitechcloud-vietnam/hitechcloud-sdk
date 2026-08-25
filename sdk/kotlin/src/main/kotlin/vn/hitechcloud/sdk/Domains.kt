package vn.hitechcloud.sdk

/** Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding */
class DomainsResource(private val httpClient: HttpClient) {
    /** GET /api/domain - List domains under your account */
    fun list(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain", params)
    }

    /** GET /api/domain/{id} - Get domain details */
    fun get(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}", params)
    }

    /** GET /api/domain/name/{name} - Get domain details by name */
    fun getByName(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/name/{name}", params)
    }

    /** GET /api/whois/{domain} - WHOIS lookup */
    fun whois(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/whois/{domain}", params)
    }

    /** GET /api/whoislookup/{domain} - Perform WHOIS lookup */
    fun whoisLookup(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/whoislookup/{domain}", params)
    }

    /** GET /api/domain/availability/{domain} - Check domain availability */
    fun checkAvailability(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/availability/{domain}", params)
    }

    /** GET /api/domain/{id}/ns - Get domain nameservers */
    fun getNameservers(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/ns", params)
    }

    /** PUT /api/domain/{id}/ns - Update domain nameservers */
    fun updateNameservers(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/domain/{id}/ns", params)
    }

    /** GET /api/domain/{id}/epp - Get domain EPP code */
    fun getEppCode(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/epp", params)
    }

    /** GET /api/domain/{id}/sync - Synchronize domain */
    fun sync(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/sync", params)
    }

    /** GET /api/domain/{id}/reglock - Get domain lock status */
    fun getLock(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/reglock", params)
    }

    /** PUT /api/domain/{id}/reglock - Update domain lock */
    fun updateLock(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/domain/{id}/reglock", params)
    }

    /** PUT /api/domain/{id}/idprotection - Update ID protection */
    fun updateIdProtection(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/domain/{id}/idprotection", params)
    }

    /** GET /api/domain/{id}/contact - Get domain contact info */
    fun getContact(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/contact", params)
    }

    /** PUT /api/domain/{id}/contact - Update domain contact info */
    fun updateContact(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/domain/{id}/contact", params)
    }

    /** GET /api/domain/{id}/email/forwarding - Get email forwarding */
    fun getEmailForwarding(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/email/forwarding", params)
    }

    /** PUT /api/domain/{id}/email/forwarding - Update email forwarding */
    fun updateEmailForwarding(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/domain/{id}/email/forwarding", params)
    }

    /** GET /api/domain/order - List available TLDs */
    fun getAvailableTlds(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/order", params)
    }

    /** POST /api/domain/order - Order new domain */
    fun order(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/domain/order", params)
    }

    /** POST /api/domain/{id}/renew - Renew domain */
    fun renew(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/domain/{id}/renew", params)
    }

    /** GET /api/domain/order/{id}/form - Get additional data for TLD */
    fun getTldForm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/order/{id}/form", params)
    }

    /** GET /api/domain/{id}/documents - Get domain documents */
    fun getDocuments(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/domain/{id}/documents", params)
    }

}
