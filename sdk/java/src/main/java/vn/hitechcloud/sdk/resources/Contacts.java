package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class Contacts extends BaseResource {
    public Contacts(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/contact", params); }
    public Map<String, Object> get(int contactId) { return httpClient.get("/api/contact/" + contactId, null); }
    public Map<String, Object> create(Map<String, Object> data) { return httpClient.post("/api/contact", data); }
    public Map<String, Object> update(int contactId, Map<String, Object> data) { return httpClient.put("/api/contact/" + contactId, data); }
    public Map<String, Object> delete(int contactId) { return httpClient.delete("/api/contact/" + contactId); }
}
