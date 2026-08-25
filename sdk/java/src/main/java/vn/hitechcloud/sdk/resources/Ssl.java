package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Ssl extends BaseResource {

    public Ssl(HttpClient http) {
        super(http);
    }

    /** List certificates */
    public Map<String, Object> certificates() throws Exception {
        return http.get("/api/certificate");
    }

    /** Get certificate */
    public Map<String, Object> certificate(int id) throws Exception {
        return http.get(String.format("/api/certificate/%id", id));
    }

    /** Get certificate CRT */
    public Map<String, Object> certificateCrt(int id) throws Exception {
        return http.get(String.format("/api/certificate/%id/crt", id));
    }

    /** List SSL orders */
    public Map<String, Object> orders() throws Exception {
        return http.get("/api/certificate/order");
    }

    /** Create SSL order */
    public Map<String, Object> createOrder(Map<String, Object> data) throws Exception {
        return http.post("/api/certificate/order", data);
    }

    /** Get order software */
    public Map<String, Object> orderSoftware(int productId) throws Exception {
        return http.get(String.format("/api/certificate/order/%productId/software", productId));
    }

}
