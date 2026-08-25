package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Affiliate extends BaseResource {

    public Affiliate(HttpClient http) {
        super(http);
    }

    /** Get affiliate summary */
    public Map<String, Object> summary() throws Exception {
        return http.get("/api/affiliates/summary");
    }

    /** Get campaigns */
    public Map<String, Object> campaigns() throws Exception {
        return http.get("/api/affiliates/campaigns");
    }

    /** Get commissions */
    public Map<String, Object> commissions() throws Exception {
        return http.get("/api/affiliates/commissions");
    }

    /** Get payouts */
    public Map<String, Object> payouts() throws Exception {
        return http.get("/api/affiliates/payouts");
    }

    /** Get vouchers */
    public Map<String, Object> vouchers() throws Exception {
        return http.get("/api/affiliates/vouchers");
    }

    /** Get commission plans */
    public Map<String, Object> commissionPlans() throws Exception {
        return http.get("/api/affiliates/commissionplans");
    }

}
