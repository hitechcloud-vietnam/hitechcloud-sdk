package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class Notifications extends BaseResource {
    public Notifications(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/notifications", params); }
    public Map<String, Object> getPreferences() { return httpClient.get("/api/notifications/preferences", null); }
    public Map<String, Object> updatePreferences(Map<String, Object> data) { return httpClient.put("/api/notifications/preferences", data); }
}
