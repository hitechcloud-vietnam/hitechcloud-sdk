package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Collocation extends BaseResource {

    public Collocation(HttpClient http) {
        super(http);
    }

    /** Get PDU info */
    public Map<String, Object> pdu(int id) throws Exception {
        return http.get(String.format("/api/service/%id/pdu", id));
    }

    /** Get PDU port */
    public Map<String, Object> pduPort(int id, int port) throws Exception {
        return http.get(String.format("/api/service/%id/pdu/%port", id, port));
    }

    /** Toggle PDU port */
    public Map<String, Object> togglePduPort(int id, int port, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/pdu/%port", id, port), data);
    }

}
