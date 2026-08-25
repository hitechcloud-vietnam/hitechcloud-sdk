package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Proxmox extends BaseResource {

    public Proxmox(HttpClient http) {
        super(http);
    }

    /** Get status */
    public Map<String, Object> status(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpve/status", id));
    }

    /** Power action */
    public Map<String, Object> power(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/htcpve/power", id), data);
    }

    /** List VMs */
    public Map<String, Object> vms(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpve/vms", id));
    }

    /** Get IPs */
    public Map<String, Object> ips(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpve/ips", id));
    }

    /** Set rDNS */
    public Map<String, Object> setRdns(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/htcpve/rdns", id), data);
    }

    /** Get backups */
    public Map<String, Object> backups(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpve/backups", id));
    }

    /** Create backup */
    public Map<String, Object> createBackup(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/htcpve/backups", id), data);
    }

    /** Get snapshots */
    public Map<String, Object> snapshots(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpve/snapshots", id));
    }

    /** Create snapshot */
    public Map<String, Object> createSnapshot(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/htcpve/snapshots", id), data);
    }

    /** Get usage */
    public Map<String, Object> usage(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpve/usage", id));
    }

}
