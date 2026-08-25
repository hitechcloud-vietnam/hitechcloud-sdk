package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class ServiceStatus extends BaseResource {

    public ServiceStatus(HttpClient http) {
        super(http);
    }

    /** List statuses */
    public Map<String, Object> statuses() throws Exception {
        return http.get("/api/statuses");
    }

    /** Update status */
    public Map<String, Object> updateStatus(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/statuses/%id", id), data);
    }

}
