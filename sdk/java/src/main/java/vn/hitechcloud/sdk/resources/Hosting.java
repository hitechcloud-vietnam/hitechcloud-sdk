package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Hosting extends BaseResource {

    public Hosting(HttpClient http) {
        super(http);
    }

    /** Get reinstall info */
    public Map<String, Object> reinstall(int id) throws Exception {
        return http.get(String.format("/api/service/%id/reinstall", id));
    }

    /** Reinstall */
    public Map<String, Object> doReinstall(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/reinstall", id), data);
    }

    /** Get status */
    public Map<String, Object> status(int id) throws Exception {
        return http.get(String.format("/api/service/%id/status", id));
    }

    /** Get bandwidth graphs */
    public Map<String, Object> bandwidthGraphs(int id) throws Exception {
        return http.get(String.format("/api/service/%id/bandwidth-graphs", id));
    }

    /** Get bandwidth */
    public Map<String, Object> bandwidth(int id) throws Exception {
        return http.get(String.format("/api/service/%id/bandwidth", id));
    }

    /** Reset password */
    public Map<String, Object> resetPassword(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/reset", id), data);
    }

}
