# URL Shortener: shorten URLs, manage links, stats
struct UrlShortenerResource
    http::HttpClient
end

# POST /api/url-shortener/shorten - Shorten a URL
function shorten(r::UrlShortenerResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/url-shortener/shorten"; params = params)
end

# GET /api/url-shortener/links - List links
function list_links(r::UrlShortenerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/url-shortener/links"; params = params)
end

# GET /api/url-shortener/config - Get shortener config
function get_config(r::UrlShortenerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/url-shortener/config"; params = params)
end

# GET /api/url-shortener/stats - Get link stats
function get_stats(r::UrlShortenerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/url-shortener/stats"; params = params)
end

# GET /api/url-shortener/links/{id} - Get link details
function get_link(r::UrlShortenerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/url-shortener/links/{id}"; params = params)
end

# DELETE /api/url-shortener/links/{id} - Delete link
function delete_link(r::UrlShortenerResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/url-shortener/links/{id}"; params = params)
end
