package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class CloudGpu extends BaseResource {

    public CloudGpu(HttpClient http) {
        super(http);
    }

    /** Reboot VM */
    public Map<String, Object> reboot(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%id/vms/reboot", id), data);
    }

    /** Stop VM */
    public Map<String, Object> stop(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%id/vms/stop", id), data);
    }

    /** Start VM */
    public Map<String, Object> start(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%id/vms/start", id), data);
    }

    /** Get firewall rules */
    public Map<String, Object> firewall(int id) throws Exception {
        return http.get(String.format("/api/service/%id/vms/firewall", id));
    }

    /** Create firewall rule */
    public Map<String, Object> createFirewall(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/firewall", id), data);
    }

    /** Delete firewall rule */
    public Map<String, Object> deleteFirewall(int id, int position) throws Exception {
        return http.delete(String.format("/api/service/%id/vms/firewall/%position", id, position));
    }

}
