package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Billing extends BaseResource {

    public Billing(HttpClient http) {
        super(http);
    }

    /** Get balance */
    public Map<String, Object> balance() throws Exception {
        return http.get("/api/balance");
    }

    /** List invoices */
    public Map<String, Object> invoices() throws Exception {
        return http.get("/api/invoice");
    }

    /** Get invoice */
    public Map<String, Object> invoice(int id) throws Exception {
        return http.get(String.format("/api/invoice/%id", id));
    }

    /** Credit invoice */
    public Map<String, Object> invoiceCredit(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/invoice/%id/credit", id), data);
    }

    /** List payments */
    public Map<String, Object> payments() throws Exception {
        return http.get("/api/payment");
    }

    /** Get payment fees */
    public Map<String, Object> paymentFees() throws Exception {
        return http.get("/api/payment/fees");
    }

}
