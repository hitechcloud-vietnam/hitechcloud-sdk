package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class Users extends BaseResource {
    public Users(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> getDetails() { return httpClient.get("/api/user", null); }
    public Map<String, Object> updateDetails(Map<String, Object> data) { return httpClient.put("/api/user", data); }
    public Map<String, Object> getLogs() { return httpClient.get("/api/user/logs", null); }
}
