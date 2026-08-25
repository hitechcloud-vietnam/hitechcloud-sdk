package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Dns extends BaseResource {

    public Dns(HttpClient http) {
        super(http);
    }

    /** List DNS services */
    public Map<String, Object> dnsServices() throws Exception {
        return http.get("/api/dns");
    }

    /** Create zone */
    public Map<String, Object> createZone(int serviceId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%serviceId/dns", serviceId), data);
    }

    /** List zones */
    public Map<String, Object> zones(int serviceId) throws Exception {
        return http.get(String.format("/api/service/%serviceId/dns", serviceId));
    }

    /** Get zone */
    public Map<String, Object> zone(int serviceId, int zoneId) throws Exception {
        return http.get(String.format("/api/service/%serviceId/dns/%zoneId", serviceId, zoneId));
    }

    /** Delete zone */
    public Map<String, Object> deleteZone(int serviceId, int zoneId) throws Exception {
        return http.delete(String.format("/api/service/%serviceId/dns/%zoneId", serviceId, zoneId));
    }

    /** Create record */
    public Map<String, Object> createRecord(int serviceId, int zoneId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%serviceId/dns/%zoneId/records", serviceId, zoneId), data);
    }

    /** Update record */
    public Map<String, Object> updateRecord(int serviceId, int zoneId, int recordId, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/service/%serviceId/dns/%zoneId/records/%recordId", serviceId, zoneId, recordId), data);
    }

    /** Delete record */
    public Map<String, Object> deleteRecord(int serviceId, int zoneId, int recordId) throws Exception {
        return http.delete(String.format("/api/service/%serviceId/dns/%zoneId/records/%recordId", serviceId, zoneId, recordId));
    }

}
