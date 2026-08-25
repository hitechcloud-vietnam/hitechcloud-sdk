package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Pmg extends BaseResource {

    public Pmg(HttpClient http) {
        super(http);
    }

    /** Get config */
    public Map<String, Object> config(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpmg/config", id));
    }

    /** Add domain */
    public Map<String, Object> addDomain(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/htcpmg/domains", id), data);
    }

    /** Add transport */
    public Map<String, Object> addTransport(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/htcpmg/transport", id), data);
    }

    /** Get stats */
    public Map<String, Object> stats(int id) throws Exception {
        return http.get(String.format("/api/service/%id/htcpmg/stats", id));
    }

}
