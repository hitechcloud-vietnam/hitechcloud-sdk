package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class Domains extends BaseResource {
    public Domains(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/domain", params); }
    public Map<String, Object> get(int domainId) { return httpClient.get("/api/domain/" + domainId, null); }
    public Map<String, Object> getByName(String name) { return httpClient.get("/api/domain/name/" + name, null); }
    public Map<String, Object> whois(String domain) { return httpClient.get("/api/whois/" + domain, null); }
    public Map<String, Object> whoisLookup(String domain) { return httpClient.get("/api/whoislookup/" + domain, null); }
    public Map<String, Object> checkAvailability(String domain) { return httpClient.get("/api/domain/availability/" + domain, null); }
    public Map<String, Object> getNameservers(int domainId) { return httpClient.get("/api/domain/" + domainId + "/ns", null); }
    public Map<String, Object> updateNameservers(int domainId, Map<String, String> ns) { return httpClient.put("/api/domain/" + domainId + "/ns", ns); }
    public Map<String, Object> getEppCode(int domainId) { return httpClient.get("/api/domain/" + domainId + "/epp", null); }
    public Map<String, Object> sync(int domainId) { return httpClient.get("/api/domain/" + domainId + "/sync", null); }
    public Map<String, Object> getLock(int domainId) { return httpClient.get("/api/domain/" + domainId + "/reglock", null); }

    public Map<String, Object> updateLock(int domainId, boolean reglock) {
        Map<String, Object> body = new HashMap<>();
        body.put("reglock", reglock);
        return httpClient.put("/api/domain/" + domainId + "/reglock", body);
    }

    public Map<String, Object> updateIdProtection(int domainId, boolean idprotection) {
        Map<String, Object> body = new HashMap<>();
        body.put("idprotection", idprotection);
        return httpClient.put("/api/domain/" + domainId + "/idprotection", body);
    }

    public Map<String, Object> getContact(int domainId) { return httpClient.get("/api/domain/" + domainId + "/contact", null); }
    public Map<String, Object> updateContact(int domainId, Map<String, Object> data) { return httpClient.put("/api/domain/" + domainId + "/contact", data); }
    public Map<String, Object> getEmailForwarding(int domainId) { return httpClient.get("/api/domain/" + domainId + "/email/forwarding", null); }
    public Map<String, Object> updateEmailForwarding(int domainId, Object entries) {
        Map<String, Object> body = new HashMap<>();
        body.put("entries", entries);
        return httpClient.put("/api/domain/" + domainId + "/email/forwarding", body);
    }
    public Map<String, Object> getAvailableTlds() { return httpClient.get("/api/domain/order", null); }

    public Map<String, Object> order(String domain, int years, Map<String, Object> extra) {
        Map<String, Object> body = new HashMap<>();
        body.put("domain", domain);
        body.put("years", years);
        if (extra != null) body.putAll(extra);
        return httpClient.post("/api/domain/order", body);
    }

    public Map<String, Object> renew(int domainId, int years) {
        Map<String, Object> body = new HashMap<>();
        body.put("years", years);
        return httpClient.post("/api/domain/" + domainId + "/renew", body);
    }

    public Map<String, Object> getTldForm(int tldId) { return httpClient.get("/api/domain/order/" + tldId + "/form", null); }
    public Map<String, Object> getDocuments(int domainId) { return httpClient.get("/api/domain/" + domainId + "/documents", null); }
}
