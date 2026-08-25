package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class CloudService extends BaseResource {

    public CloudService(HttpClient http) {
        super(http);
    }

    /** Shutdown VM */
    public Map<String, Object> shutdown(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/shutdown", id, vmid), null);
    }

    /** Reset VM */
    public Map<String, Object> reset(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/reset", id, vmid), null);
    }

    /** Set hostname */
    public Map<String, Object> setHostname(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/hostname", id, vmid), data);
    }

    /** Get IP pool */
    public Map<String, Object> ipPool(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/ippool", id, vmid));
    }

    /** Assign IP */
    public Map<String, Object> assignIp(int id, int vmid, String pool) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/ippool/%pool", id, vmid, pool), null);
    }

    /** List networks */
    public Map<String, Object> networks(int id) throws Exception {
        return http.get(String.format("/api/service/%id/networks", id));
    }

    /** Create interface */
    public Map<String, Object> createInterface(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/interfaces", id, vmid), data);
    }

    /** Get interface */
    public Map<String, Object> getInterface(int id, int vmid, String iface) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/interfaces/%iface", id, vmid, iface));
    }

    /** Update interface */
    public Map<String, Object> updateInterface(int id, int vmid, String iface, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%id/vms/%vmid/interfaces/%iface", id, vmid, iface), data);
    }

    /** Delete interface */
    public Map<String, Object> deleteInterface(int id, int vmid, String iface) throws Exception {
        return http.delete(String.format("/api/service/%id/vms/%vmid/interfaces/%iface", id, vmid, iface));
    }

}
