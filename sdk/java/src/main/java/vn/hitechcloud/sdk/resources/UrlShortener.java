package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class UrlShortener extends BaseResource {

    public UrlShortener(HttpClient http) {
        super(http);
    }

    /** Shorten URL */
    public Map<String, Object> shorten(Map<String, Object> data) throws Exception {
        return http.post("/api/url-shortener/shorten", data);
    }

    /** List links */
    public Map<String, Object> links() throws Exception {
        return http.get("/api/url-shortener/links");
    }

    /** Get config */
    public Map<String, Object> config() throws Exception {
        return http.get("/api/url-shortener/config");
    }

    /** Get stats */
    public Map<String, Object> stats() throws Exception {
        return http.get("/api/url-shortener/stats");
    }

    /** Get link */
    public Map<String, Object> link(int id) throws Exception {
        return http.get(String.format("/api/url-shortener/links/%id", id));
    }

    /** Delete link */
    public Map<String, Object> deleteLink(int id) throws Exception {
        return http.delete(String.format("/api/url-shortener/links/%id", id));
    }

}
