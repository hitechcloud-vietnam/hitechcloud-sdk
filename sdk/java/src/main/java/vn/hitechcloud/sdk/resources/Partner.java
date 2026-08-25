package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Partner extends BaseResource {

    public Partner(HttpClient http) {
        super(http);
    }

    /** Get partner info */
    public Map<String, Object> info() throws Exception {
        return http.get("/api/partner");
    }

    /** Apply */
    public Map<String, Object> apply(Map<String, Object> data) throws Exception {
        return http.post("/api/partner/apply", data);
    }

    /** Get tiers */
    public Map<String, Object> tiers() throws Exception {
        return http.get("/api/partner/tiers");
    }

    /** Get pricing */
    public Map<String, Object> pricing() throws Exception {
        return http.get("/api/partner/pricing");
    }

    /** Get customers */
    public Map<String, Object> customers() throws Exception {
        return http.get("/api/partner/customers");
    }

    /** Get earnings */
    public Map<String, Object> earnings() throws Exception {
        return http.get("/api/partner/earnings");
    }

    /** Get wallet */
    public Map<String, Object> wallet() throws Exception {
        return http.get("/api/partner/wallet");
    }

    /** Get payouts */
    public Map<String, Object> payouts() throws Exception {
        return http.get("/api/partner/payouts");
    }

    /** Request payout */
    public Map<String, Object> requestPayout(Map<String, Object> data) throws Exception {
        return http.post("/api/partner/payouts", data);
    }

    /** Get leads */
    public Map<String, Object> leads() throws Exception {
        return http.get("/api/partner/leads");
    }

    /** Create lead */
    public Map<String, Object> createLead(Map<String, Object> data) throws Exception {
        return http.post("/api/partner/leads", data);
    }

    /** Get referral */
    public Map<String, Object> referral() throws Exception {
        return http.get("/api/partner/referral");
    }

    /** Get rates */
    public Map<String, Object> rates() throws Exception {
        return http.get("/api/partner/rates");
    }

}
