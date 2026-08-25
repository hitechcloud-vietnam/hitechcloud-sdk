package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class AffiliatesAdvanced extends BaseResource {

    public AffiliatesAdvanced(HttpClient http) {
        super(http);
    }

    /** Get info */
    public Map<String, Object> info(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/info", clientId));
    }

    /** Get stats */
    public Map<String, Object> stats(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/stats", clientId));
    }

    /** Get commission plans */
    public Map<String, Object> commissionPlans(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/commission-plans", clientId));
    }

    /** Get vouchers */
    public Map<String, Object> vouchers(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/vouchers", clientId));
    }

    /** Get commissions */
    public Map<String, Object> commissions(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/commissions", clientId));
    }

    /** Get referrals */
    public Map<String, Object> referrals(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/referrals", clientId));
    }

    /** Get payouts */
    public Map<String, Object> payouts(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/payouts", clientId));
    }

    /** Get campaigns */
    public Map<String, Object> campaigns(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/campaigns", clientId));
    }

    /** Get audit log */
    public Map<String, Object> audit(int clientId) throws Exception {
        return http.get(String.format("/api/affiliates_adv/%clientId/audit", clientId));
    }

    /** Activate */
    public Map<String, Object> activate(int clientId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/affiliates_adv/%clientId/activate", clientId), data);
    }

    /** Set commission plan */
    public Map<String, Object> setCommissionPlan(int clientId, int commissionId) throws Exception {
        return http.post(String.format("/api/affiliates_adv/%clientId/commission-plan/%commissionId", clientId, commissionId), null);
    }

    /** Create voucher */
    public Map<String, Object> createVoucher(int clientId, int planId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/affiliates_adv/%clientId/vouchers/%planId", clientId, planId), data);
    }

    /** Delete voucher */
    public Map<String, Object> deleteVoucher(int clientId, int voucherId) throws Exception {
        return http.delete(String.format("/api/affiliates_adv/%clientId/vouchers/%voucherId", clientId, voucherId));
    }

    /** Set landing page */
    public Map<String, Object> setLandingPage(int clientId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/affiliates_adv/%clientId/landing-page", clientId), data);
    }

}
