package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class CloudInstance extends BaseResource {

    public CloudInstance(HttpClient http) {
        super(http);
    }

    /** List VMs */
    public Map<String, Object> vms(int id) throws Exception {
        return http.get(String.format("/api/service/%id/vms", id));
    }

    /** Create VM */
    public Map<String, Object> createVm(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms", id), data);
    }

    /** Get VM */
    public Map<String, Object> vm(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid", id, vmid));
    }

    /** Delete VM */
    public Map<String, Object> deleteVm(int id, int vmid) throws Exception {
        return http.delete(String.format("/api/service/%id/vms/%vmid", id, vmid));
    }

    /** Update VM */
    public Map<String, Object> updateVm(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%id/vms/%vmid", id, vmid), data);
    }

    /** Stop VM */
    public Map<String, Object> stopVm(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/stop", id, vmid), null);
    }

    /** Start VM */
    public Map<String, Object> startVm(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/start", id, vmid), null);
    }

    /** Reboot VM */
    public Map<String, Object> rebootVm(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/reboot", id, vmid), null);
    }

    /** Reset password */
    public Map<String, Object> resetPassword(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/resetpwd", id, vmid), data);
    }

    /** Rebuild VM */
    public Map<String, Object> rebuildVm(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/rebuild", id, vmid), data);
    }

    /** Get VM IPs */
    public Map<String, Object> vmIps(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/ips", id, vmid));
    }

    /** Add VM IP */
    public Map<String, Object> addVmIp(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/ips", id, vmid), data);
    }

    /** Get VM interfaces */
    public Map<String, Object> vmInterfaces(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/interfaces", id, vmid));
    }

    /** Get CPU usage */
    public Map<String, Object> cpuUsage(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/usage/cpu", id, vmid));
    }

    /** Get network usage */
    public Map<String, Object> netUsage(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/usage/net", id, vmid));
    }

    /** Get disk usage */
    public Map<String, Object> diskUsage(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/usage/disk", id, vmid));
    }

    /** Get storage */
    public Map<String, Object> storage(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/storage", id, vmid));
    }

    /** Update storage */
    public Map<String, Object> updateStorage(int id, int vmid, int diskid, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%id/vms/%vmid/storage/%diskid", id, vmid, diskid), data);
    }

    /** List images */
    public Map<String, Object> images(int id) throws Exception {
        return http.get(String.format("/api/service/%id/images", id));
    }

    /** Create image */
    public Map<String, Object> createImage(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/images", id), data);
    }

    /** Get interface IPs */
    public Map<String, Object> interfaceIps(int id, int vmid, String iface) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/interfaces/%iface/ips", id, vmid, iface));
    }

    /** Delete VM IP */
    public Map<String, Object> deleteVmIp(int id, int vmid, int ipid) throws Exception {
        return http.delete(String.format("/api/service/%id/vms/%vmid/ips/%ipid", id, vmid, ipid));
    }

    /** Get VM rDNS */
    public Map<String, Object> vmRdns(int id, int vmid) throws Exception {
        return http.get(String.format("/api/service/%id/vms/%vmid/rdns", id, vmid));
    }

    /** Set VM rDNS */
    public Map<String, Object> setVmRdns(int id, int vmid, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/rdns", id, vmid), data);
    }

    /** Rebuild network */
    public Map<String, Object> rebuildNetwork(int id, int vmid) throws Exception {
        return http.post(String.format("/api/service/%id/vms/%vmid/rebuild_network", id, vmid), null);
    }

}
