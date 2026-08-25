package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class NetworkServices extends BaseResource {

    public NetworkServices(HttpClient http) {
        super(http);
    }

    /** Get IPs */
    public Map<String, Object> ips(int id) throws Exception {
        return http.get(String.format("/api/service/%id/ip", id));
    }

    /** Get rDNS */
    public Map<String, Object> rdns(int id) throws Exception {
        return http.get(String.format("/api/service/%id/rdns", id));
    }

    /** Set rDNS */
    public Map<String, Object> setRdns(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/rdns", id), data);
    }

}
