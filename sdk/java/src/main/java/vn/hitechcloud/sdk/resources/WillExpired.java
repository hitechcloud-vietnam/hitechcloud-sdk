package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class WillExpired extends BaseResource {

    public WillExpired(HttpClient http) {
        super(http);
    }

    /** List expiring items */
    public Map<String, Object> list() throws Exception {
        return http.get("/api/willexpired");
    }

    /** Get summary */
    public Map<String, Object> summary() throws Exception {
        return http.get("/api/willexpired/summary");
    }

    /** Get config */
    public Map<String, Object> config() throws Exception {
        return http.get("/api/willexpired/config");
    }

    /** Get invoices */
    public Map<String, Object> invoices() throws Exception {
        return http.get("/api/willexpired/invoices");
    }

    /** Get requests */
    public Map<String, Object> requests() throws Exception {
        return http.get("/api/willexpired/requests");
    }

    /** Export */
    public Map<String, Object> export() throws Exception {
        return http.get("/api/willexpired/export");
    }

    /** Get item */
    public Map<String, Object> item(String type, int id) throws Exception {
        return http.get(String.format("/api/willexpired/%type/%id", type, id));
    }

    /** Renew */
    public Map<String, Object> renew(String type, int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/willexpired/%type/%id/renew", type, id), data);
    }

    /** Get autorenew */
    public Map<String, Object> autorenew(String type, int id) throws Exception {
        return http.get(String.format("/api/willexpired/%type/%id/autorenew", type, id));
    }

    /** Set autorenew */
    public Map<String, Object> setAutorenew(String type, int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/willexpired/%type/%id/autorenew", type, id), data);
    }

}
