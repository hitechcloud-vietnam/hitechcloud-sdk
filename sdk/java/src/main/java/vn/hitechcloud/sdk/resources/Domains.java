package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Domains extends BaseResource {

    public Domains(HttpClient http) {
        super(http);
    }

    /** WHOIS lookup */
    public Map<String, Object> whois(String domain) throws Exception {
        return http.get(String.format("/api/whois/%domain", domain));
    }

    /** List domains */
    public Map<String, Object> domains() throws Exception {
        return http.get("/api/domain");
    }

    /** Get domain */
    public Map<String, Object> domain(int id) throws Exception {
        return http.get(String.format("/api/domain/%id", id));
    }

    /** Get domain by name */
    public Map<String, Object> domainByName(String name) throws Exception {
        return http.get(String.format("/api/domain/name/%name", name));
    }

    /** Get nameservers */
    public Map<String, Object> nameservers(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/ns", id));
    }

    /** Update nameservers */
    public Map<String, Object> updateNameservers(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/domain/%id/ns", id), data);
    }

    /** Get EPP code */
    public Map<String, Object> eppCode(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/epp", id));
    }

    /** Sync domain */
    public Map<String, Object> syncDomain(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/sync", id));
    }

    /** Get reglock */
    public Map<String, Object> reglock(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/reglock", id));
    }

    /** Update reglock */
    public Map<String, Object> updateReglock(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/domain/%id/reglock", id), data);
    }

    /** Update ID protection */
    public Map<String, Object> idProtection(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/domain/%id/idprotection", id), data);
    }

    /** Get domain contacts */
    public Map<String, Object> domainContacts(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/contact", id));
    }

    /** Update domain contacts */
    public Map<String, Object> updateContacts(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/domain/%id/contact", id), data);
    }

    /** Get email forwarding */
    public Map<String, Object> emailForwarding(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/email/forwarding", id));
    }

    /** Update email forwarding */
    public Map<String, Object> updateEmailForwarding(int id, Map<String, Object> data) throws Exception {
        return http.put(String.format("/api/domain/%id/email/forwarding", id), data);
    }

    /** Check availability */
    public Map<String, Object> availability(String domain) throws Exception {
        return http.get(String.format("/api/domain/availability/%domain", domain));
    }

    /** List domain orders */
    public Map<String, Object> orders() throws Exception {
        return http.get("/api/domain/order");
    }

    /** Create domain order */
    public Map<String, Object> createOrder(Map<String, Object> data) throws Exception {
        return http.post("/api/domain/order", data);
    }

    /** Get order form */
    public Map<String, Object> orderForm(int id) throws Exception {
        return http.get(String.format("/api/domain/order/%id/form", id));
    }

    /** Renew domain */
    public Map<String, Object> renewDomain(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/domain/%id/renew", id), data);
    }

    /** WHOIS lookup v2 */
    public Map<String, Object> whoisLookup(String domain) throws Exception {
        return http.get(String.format("/api/whoislookup/%domain", domain));
    }

    /** Get domain documents */
    public Map<String, Object> documents(int id) throws Exception {
        return http.get(String.format("/api/domain/%id/documents", id));
    }

}
