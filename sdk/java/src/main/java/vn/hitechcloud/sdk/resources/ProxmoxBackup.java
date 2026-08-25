package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class ProxmoxBackup extends BaseResource {

    public ProxmoxBackup(HttpClient http) {
        super(http);
    }

    /** Get PBS info */
    public Map<String, Object> pbs(int id) throws Exception {
        return http.get(String.format("/api/service/%id/pbs", id));
    }

    /** Get credentials */
    public Map<String, Object> credentials(int id) throws Exception {
        return http.get(String.format("/api/service/%id/pbs/credentials", id));
    }

    /** Get usage */
    public Map<String, Object> usage(int id) throws Exception {
        return http.get(String.format("/api/service/%id/pbs/usage", id));
    }

    /** Get metrics */
    public Map<String, Object> metrics(int id) throws Exception {
        return http.get(String.format("/api/service/%id/pbs/metrics", id));
    }

    /** Get snapshots */
    public Map<String, Object> snapshots(int id) throws Exception {
        return http.get(String.format("/api/service/%id/pbs/snapshots", id));
    }

    /** Get groups */
    public Map<String, Object> groups(int id) throws Exception {
        return http.get(String.format("/api/service/%id/pbs/groups", id));
    }

    /** Change password */
    public Map<String, Object> changePassword(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/pbs/password", id), data);
    }

    /** Create token */
    public Map<String, Object> createToken(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/pbs/token", id), data);
    }

    /** Delete token */
    public Map<String, Object> deleteToken(int id) throws Exception {
        return http.delete(String.format("/api/service/%id/pbs/token", id));
    }

}
