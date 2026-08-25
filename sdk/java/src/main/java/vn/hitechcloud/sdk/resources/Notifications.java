package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Notifications extends BaseResource {

    public Notifications(HttpClient http) {
        super(http);
    }

    /** List notifications */
    public Map<String, Object> notifications() throws Exception {
        return http.get("/api/notifications");
    }

    /** Get new notifications */
    public Map<String, Object> newNotifications() throws Exception {
        return http.get("/api/notifications/new");
    }

    /** Acknowledge notification */
    public Map<String, Object> acknowledge(int id) throws Exception {
        return http.put(String.format("/api/notifications/%id/ack", id), null);
    }

}
