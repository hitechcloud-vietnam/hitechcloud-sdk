package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Users extends BaseResource {

    public Users(HttpClient http) {
        super(http);
    }

    /** Get user details */
    public Map<String, Object> details() throws Exception {
        return http.get("/api/details");
    }

    /** Update user details */
    public Map<String, Object> updateDetails(Map<String, Object> data) throws Exception {
        return http.put("/api/details", data);
    }

    /** Get user logs */
    public Map<String, Object> logs() throws Exception {
        return http.get("/api/logs");
    }

}
