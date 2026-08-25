import Foundation

/// URL Shortener: shorten URLs, manage links, stats
public class UrlShortenerResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// POST /api/url-shortener/shorten - Shorten a URL
    public func shorten(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/url-shortener/shorten", params: params)
    }

    /// GET /api/url-shortener/links - List links
    public func listLinks(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/url-shortener/links", params: params)
    }

    /// GET /api/url-shortener/config - Get shortener config
    public func getConfig(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/url-shortener/config", params: params)
    }

    /// GET /api/url-shortener/stats - Get link stats
    public func getStats(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/url-shortener/stats", params: params)
    }

    /// GET /api/url-shortener/links/{id} - Get link details
    public func getLink(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/url-shortener/links/{id}", params: params)
    }

    /// DELETE /api/url-shortener/links/{id} - Delete link
    public func deleteLink(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/url-shortener/links/{id}", params: params)
    }

}
