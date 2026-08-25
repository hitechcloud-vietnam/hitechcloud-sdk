namespace HiTechCloud.SDK

/// URL Shortener: shorten URLs, manage links, stats
type UrlShortenerResource(httpClient: HttpClient) =

    /// POST /api/url-shortener/shorten - Shorten a URL
    member this.Shorten() =
        async {
            return! httpClient.postAsync("/api/url-shortener/shorten")
        }

    /// GET /api/url-shortener/links - List links
    member this.ListLinks() =
        async {
            return! httpClient.getAsync("/api/url-shortener/links")
        }

    /// GET /api/url-shortener/config - Get shortener config
    member this.GetConfig() =
        async {
            return! httpClient.getAsync("/api/url-shortener/config")
        }

    /// GET /api/url-shortener/stats - Get link stats
    member this.GetStats() =
        async {
            return! httpClient.getAsync("/api/url-shortener/stats")
        }

    /// GET /api/url-shortener/links/{id} - Get link details
    member this.GetLink() =
        async {
            return! httpClient.getAsync("/api/url-shortener/links/{id}")
        }

    /// DELETE /api/url-shortener/links/{id} - Delete link
    member this.DeleteLink() =
        async {
            return! httpClient.deleteAsync("/api/url-shortener/links/{id}")
        }

