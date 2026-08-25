package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Virtualizor extends BaseResource {

    public Virtualizor(HttpClient http) {
        super(http);
    }

    /** Suspend VM */
    public Map<String, Object> suspend(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/suspend", id, vmid), null);
    }

    /** Unsuspend VM */
    public Map<String, Object> unsuspend(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/unsuspend", id, vmid), null);
    }

    /** Get rebuild options */
    public Map<String, Object> rebuild(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/rebuild", id, vmid));
    }

    /** Add SSH key */
    public Map<String, Object> addSshKey(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/addsshkey", id, vmid), data);
    }

}
