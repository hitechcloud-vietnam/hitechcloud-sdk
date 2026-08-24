package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class Dns extends BaseResource {
    public Dns(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/dns", params); }
    public Map<String, Object> listForService(int serviceId) { return httpClient.get("/api/dns/service/" + serviceId, null); }
    public Map<String, Object> addZone(Map<String, Object> data) { return httpClient.post("/api/dns", data); }
    public Map<String, Object> getZone(int zoneId) { return httpClient.get("/api/dns/" + zoneId, null); }
    public Map<String, Object> deleteZone(int zoneId) { return httpClient.delete("/api/dns/" + zoneId); }
    public Map<String, Object> addRecord(int zoneId, Map<String, Object> data) { return httpClient.post("/api/dns/" + zoneId + "/records", data); }
    public Map<String, Object> editRecord(int zoneId, int recordId, Map<String, Object> data) { return httpClient.put("/api/dns/" + zoneId + "/records/" + recordId, data); }
    public Map<String, Object> deleteRecord(int zoneId, int recordId) { return httpClient.delete("/api/dns/" + zoneId + "/records/" + recordId); }
}
