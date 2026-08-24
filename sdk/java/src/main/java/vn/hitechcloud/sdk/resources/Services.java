package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class Services extends BaseResource {
    public Services(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/service", params); }
    public Map<String, Object> get(int serviceId) { return httpClient.get("/api/service/" + serviceId, null); }
    public Map<String, Object> listMethods() { return httpClient.get("/api/service/methods", null); }

    public Map<String, Object> cancel(int serviceId, String reason) {
        Map<String, String> body = new HashMap<>();
        body.put("reason", reason);
        return httpClient.post("/api/service/" + serviceId + "/cancel", body);
    }

    public Map<String, Object> getLabel(int serviceId) { return httpClient.get("/api/service/" + serviceId + "/label", null); }

    public Map<String, Object> setLabel(int serviceId, String label) {
        Map<String, String> body = new HashMap<>();
        body.put("label", label);
        return httpClient.put("/api/service/" + serviceId + "/label", body);
    }

    public Map<String, Object> renew(int serviceId) { return httpClient.post("/api/service/" + serviceId + "/renew", null); }
    public Map<String, Object> listBillingCycles(int serviceId) { return httpClient.get("/api/service/" + serviceId + "/billing_cycles", null); }

    public Map<String, Object> changeBillingCycle(int serviceId, String billingCycle) {
        Map<String, String> body = new HashMap<>();
        body.put("billing_cycle", billingCycle);
        return httpClient.put("/api/service/" + serviceId + "/billing_cycles", body);
    }
}
