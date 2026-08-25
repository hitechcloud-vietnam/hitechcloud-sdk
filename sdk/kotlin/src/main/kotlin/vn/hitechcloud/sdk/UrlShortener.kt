package vn.hitechcloud.sdk

/** URL Shortener: shorten URLs, manage links, stats */
class UrlShortenerResource(private val httpClient: HttpClient) {
    /** POST /api/url-shortener/shorten - Shorten a URL */
    fun shorten(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/url-shortener/shorten", params)
    }

    /** GET /api/url-shortener/links - List links */
    fun listLinks(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/url-shortener/links", params)
    }

    /** GET /api/url-shortener/config - Get shortener config */
    fun getConfig(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/url-shortener/config", params)
    }

    /** GET /api/url-shortener/stats - Get link stats */
    fun getStats(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/url-shortener/stats", params)
    }

    /** GET /api/url-shortener/links/{id} - Get link details */
    fun getLink(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/url-shortener/links/{id}", params)
    }

    /** DELETE /api/url-shortener/links/{id} - Delete link */
    fun deleteLink(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/url-shortener/links/{id}", params)
    }

}
