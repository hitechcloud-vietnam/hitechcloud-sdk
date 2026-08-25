package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class CloudVm extends BaseResource {

    public CloudVm(HttpClient http) {
        super(http);
    }

    /** Get upgrade options */
    public Map<String, Object> upgrade(int id) throws Exception {
        return http.get(String.format("/api/service/%id/upgrade", id));
    }

    /** Upgrade */
    public Map<String, Object> doUpgrade(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/upgrade", id), data);
    }

    /** Get resources */
    public Map<String, Object> resources(int id) throws Exception {
        return http.get(String.format("/api/service/%id/resources", id));
    }

    /** Get template */
    public Map<String, Object> template(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/templates/%vmid", id, vmid));
    }

    /** Get memory usage */
    public Map<String, Object> memoryUsage(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/usage/memory", id, vmid));
    }

    /** Get VM images */
    public Map<String, Object> vmImages(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/images", id, vmid));
    }

    /** Create VM image */
    public Map<String, Object> createVmImage(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/images", id, vmid), data);
    }

    /** Set boot order */
    public Map<String, Object> bootOrder(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/boot", id, vmid), data);
    }

    /** Toggle TUN/TAP */
    public Map<String, Object> tuntap(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/tuntap", id, vmid), data);
    }

}
