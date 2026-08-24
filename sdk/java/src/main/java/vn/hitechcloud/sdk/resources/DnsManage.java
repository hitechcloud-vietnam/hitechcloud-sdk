package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DnsManage extends BaseResource {
    public DnsManage(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> getRecords(int domainId) { return httpClient.get("/api/domain/" + domainId + "/dns", null); }
    public Map<String, Object> createRecord(int domainId, Map<String, Object> data) { return httpClient.post("/api/domain/" + domainId + "/dns", data); }
    public Map<String, Object> updateRecord(int domainId, int recordId, Map<String, Object> data) { return httpClient.put("/api/domain/" + domainId + "/dns/" + recordId, data); }
    public Map<String, Object> deleteRecord(int domainId, int recordId) { return httpClient.delete("/api/domain/" + domainId + "/dns/" + recordId); }
    public Map<String, Object> getRecordTypes() { return httpClient.get("/api/dns/record/types", null); }
    public Map<String, Object> getDnssecFlags() { return httpClient.get("/api/dnssec/flags", null); }
    public Map<String, Object> getDnssecRecords(int domainId) { return httpClient.get("/api/domain/" + domainId + "/dnssec", null); }
    public Map<String, Object> createDnssecRecord(int domainId, Map<String, Object> data) { return httpClient.post("/api/domain/" + domainId + "/dnssec", data); }
    public Map<String, Object> deleteDnssecRecord(int domainId, int recordId) { return httpClient.delete("/api/domain/" + domainId + "/dnssec/" + recordId); }

    public Map<String, Object> registerNameserver(int domainId, String hostname, List<String> ips) {
        Map<String, Object> body = new HashMap<>();
        body.put("hostname", hostname);
        body.put("ips", ips);
        return httpClient.post("/api/domain/" + domainId + "/registerns", body);
    }
}
