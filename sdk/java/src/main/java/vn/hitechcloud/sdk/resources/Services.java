package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Services extends BaseResource {

    public Services(HttpClient http) {
        super(http);
    }

    /** List services */
    public Map<String, Object> services() throws Exception {
        return http.get("/api/service");
    }

    /** Get service */
    public Map<String, Object> service(int id) throws Exception {
        return http.get(String.format("/api/service/%id", id));
    }

    /** Get service methods */
    public Map<String, Object> methods(int id) throws Exception {
        return http.get(String.format("/api/service/%id/methods", id));
    }

    /** Cancel service */
    public Map<String, Object> cancel(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/cancel", id), data);
    }

    /** Get label */
    public Map<String, Object> label(int id) throws Exception {
        return http.get(String.format("/api/service/%id/label", id));
    }

    /** Set label */
    public Map<String, Object> setLabel(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/label", id), data);
    }

    /** Renew service */
    public Map<String, Object> renew(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/renew", id), data);
    }

    /** Get cycle */
    public Map<String, Object> cycle(int id) throws Exception {
        return http.get(String.format("/api/service/%id/cycle", id));
    }

    /** Set cycle */
    public Map<String, Object> setCycle(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/cycle", id), data);
    }

}
