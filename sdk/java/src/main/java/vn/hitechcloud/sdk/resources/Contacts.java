package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Contacts extends BaseResource {

    public Contacts(HttpClient http) {
        super(http);
    }

    /** List contacts */
    public Map<String, Object> contacts() throws Exception {
        return http.get("/api/contact");
    }

    /** Create contact */
    public Map<String, Object> createContact(Map<String, Object> data) throws Exception {
        return http.post("/api/contact", data);
    }

    /** Get privileges */
    public Map<String, Object> privileges() throws Exception {
        return http.get("/api/contact/privileges");
    }

    /** Get contact */
    public Map<String, Object> contact(int id) throws Exception {
        return http.get(String.format("/api/contact/%id", id));
    }

    /** Update contact */
    public Map<String, Object> updateContact(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/contact/%id", id), data);
    }

}
