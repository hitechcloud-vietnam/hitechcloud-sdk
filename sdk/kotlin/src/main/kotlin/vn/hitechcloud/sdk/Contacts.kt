package vn.hitechcloud.sdk

/** Contacts: manage account contacts */
class ContactsResource(private val httpClient: HttpClient) {
    /** GET /api/contact - Return a list of contacts on this account */
    fun list(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/contact", params)
    }

    /** POST /api/contact - Create new contact account */
    fun create(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/contact", params)
    }

    /** GET /api/contact/privileges - List possible contact privileges */
    fun getPrivileges(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/contact/privileges", params)
    }

    /** GET /api/contact/{id} - Get contact details */
    fun get(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/contact/{id}", params)
    }

    /** PUT /api/contact/{id} - Update contact details */
    fun update(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/contact/{id}", params)
    }

}
