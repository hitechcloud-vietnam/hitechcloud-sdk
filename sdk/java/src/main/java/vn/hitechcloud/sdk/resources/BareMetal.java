package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class BareMetal extends BaseResource {

    public BareMetal(HttpClient http) {
        super(http);
    }

    /** Get reinstall templates */
    public Map<String, Object> reinstallTemplates(int id) throws Exception {
        return http.get(String.format("/api/service/%id/reinstall/templates", id));
    }

    /** Cancel diagnostics */
    public Map<String, Object> cancelDiag(int id) throws Exception {
        return http.post(String.format("/api/service/%id/diag/cancel", id), null);
    }

    /** Get diag templates */
    public Map<String, Object> diagTemplates(int id) throws Exception {
        return http.get(String.format("/api/service/%id/diag/templates", id));
    }

    /** Get diagnostics */
    public Map<String, Object> diag(int id) throws Exception {
        return http.get(String.format("/api/service/%id/diag", id));
    }

    /** Run diagnostics */
    public Map<String, Object> runDiag(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/diag", id), data);
    }

    /** Get rescue templates */
    public Map<String, Object> rescueTemplates(int id) throws Exception {
        return http.get(String.format("/api/service/%id/rescue/templates", id));
    }

    /** Get rescue mode */
    public Map<String, Object> rescue(int id) throws Exception {
        return http.get(String.format("/api/service/%id/rescue", id));
    }

    /** Enter rescue mode */
    public Map<String, Object> enterRescue(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/rescue", id), data);
    }

    /** Cancel rescue mode */
    public Map<String, Object> cancelRescue(int id) throws Exception {
        return http.post(String.format("/api/service/%id/rescue/cancel", id), null);
    }

    /** Get server info */
    public Map<String, Object> info(int id) throws Exception {
        return http.get(String.format("/api/service/%id/info", id));
    }

    /** Set hostname */
    public Map<String, Object> setHostname(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/hostname", id), data);
    }

    /** Get IPs */
    public Map<String, Object> ips(int id) throws Exception {
        return http.get(String.format("/api/service/%id/ips", id));
    }

    /** Add IP */
    public Map<String, Object> addIp(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/ips", id), data);
    }

    /** Get VLANs */
    public Map<String, Object> vlans(int id) throws Exception {
        return http.get(String.format("/api/service/%id/vlans", id));
    }

    /** Get IP */
    public Map<String, Object> ip(int id, String ip) throws Exception {
        return http.get(String.format("/api/service/%id/ips/%ip", id, ip));
    }

    /** Update IP */
    public Map<String, Object> updateIp(int id, String ip, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%id/ips/%ip", id, ip), data);
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

    /** Power action */
    public Map<String, Object> power(int id, String action, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/power/%action", id, action), data);
    }

    /** Get server stock */
    public Map<String, Object> serverStock() throws Exception {
        return http.get("/api/serverstock");
    }

}
