package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Vcloudstack extends BaseResource {

    public Vcloudstack(HttpClient http) {
        super(http);
    }

    /** Enter rescue */
    public Map<String, Object> rescue(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/rescue", id, vmid), null);
    }

    /** Exit rescue */
    public Map<String, Object> unrescue(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/unrescue", id, vmid), null);
    }

    /** Get console URL */
    public Map<String, Object> console(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/console", id, vmid));
    }

    /** Get usage */
    public Map<String, Object> usage(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/usage", id, vmid));
    }

}
