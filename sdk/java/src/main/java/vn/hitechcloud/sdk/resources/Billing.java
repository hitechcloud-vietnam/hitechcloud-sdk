package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class Billing extends BaseResource {
    public Billing(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> getBalance() { return httpClient.get("/api/billing/balance", null); }
    public Map<String, Object> listInvoices(Map<String, String> params) { return httpClient.get("/api/billing/invoices", params); }
    public Map<String, Object> getInvoice(int invoiceId) { return httpClient.get("/api/billing/invoices/" + invoiceId, null); }

    public Map<String, Object> applyCredit(double amount) {
        Map<String, Object> body = new HashMap<>();
        body.put("amount", amount);
        return httpClient.post("/api/billing/credit", body);
    }

    public Map<String, Object> getPaymentMethods() { return httpClient.get("/api/billing/methods", null); }
    public Map<String, Object> getPaymentFees() { return httpClient.get("/api/billing/fees", null); }
}
