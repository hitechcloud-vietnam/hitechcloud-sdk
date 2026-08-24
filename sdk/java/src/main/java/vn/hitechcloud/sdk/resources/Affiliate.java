package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class Affiliate extends BaseResource {
    public Affiliate(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> getDetails() { return httpClient.get("/api/affiliate", null); }
    public Map<String, Object> getBalance() { return httpClient.get("/api/affiliate/balance", null); }
    public Map<String, Object> getPayout() { return httpClient.get("/api/affiliate/payout", null); }
    public Map<String, Object> updatePayout(Map<String, Object> data) { return httpClient.put("/api/affiliate/payout", data); }
    public Map<String, Object> listReferrals(Map<String, String> params) { return httpClient.get("/api/affiliate/referrals", params); }
    public Map<String, Object> listTransactions(Map<String, String> params) { return httpClient.get("/api/affiliate/transactions", params); }
}
