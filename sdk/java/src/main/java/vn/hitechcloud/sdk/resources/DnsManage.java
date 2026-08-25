package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class DnsManage extends BaseResource {

    public DnsManage(HttpClient http) {
        super(http);
    }

    /** Register DNS */
    public Map<String, Object> registerDns(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/domain/%id/reg", id), data);
    }

    /** Get DNS records */
    public Map<String, Object> dnsRecords(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/dns", id));
    }

    /** Create DNS record */
    public Map<String, Object> createDnsRecord(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/domain/%id/dns", id), data);
    }

    /** Update DNS record */
    public Map<String, Object> updateDnsRecord(int id, int index, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/domain/%id/dns/%index", id, index), data);
    }

    /** Delete DNS record */
    public Map<String, Object> deleteDnsRecord(int id, int index) throws Exception {
        return http.delete(String.format("/api/domain/%id/dns/%index", id, index));
    }

    /** Get DNS types */
    public Map<String, Object> dnsTypes(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/dns/types", id));
    }

    /** Get DNSSEC flags */
    public Map<String, Object> dnssecFlags(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/dnssec/flags", id));
    }

    /** Get DNSSEC */
    public Map<String, Object> dnssec(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/dnssec", id));
    }

    /** Create DNSSEC */
    public Map<String, Object> createDnssec(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/domain/%id/dnssec", id), data);
    }

    /** Delete DNSSEC */
    public Map<String, Object> deleteDnssec(int id) throws Exception {
        return http.delete(String.format("/api/domain/%id/dnssec", id));
    }

}
