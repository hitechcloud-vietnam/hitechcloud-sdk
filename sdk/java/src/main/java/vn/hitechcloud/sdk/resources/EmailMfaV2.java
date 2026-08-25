package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class EmailMfaV2 extends BaseResource {

    public EmailMfaV2(HttpClient http) {
        super(http);
    }

    /** Get status */
    public Map<String, Object> status(String userType, int userId) throws Exception {
        return http.get(String.format("/api/email_mfa_v2/status/%userType/%userId", userType, userId));
    }

    /** Send OTP */
    public Map<String, Object> send(Map<String, Object> data) throws Exception {
        return http.post("/api/email_mfa_v2/send", data);
    }

    /** Verify OTP */
    public Map<String, Object> verify(Map<String, Object> data) throws Exception {
        return http.post("/api/email_mfa_v2/verify", data);
    }

    /** List sessions */
    public Map<String, Object> list(String userType, int userId) throws Exception {
        return http.get(String.format("/api/email_mfa_v2/list/%userType/%userId", userType, userId));
    }

    /** Revoke all */
    public Map<String, Object> revokeAll(Map<String, Object> data) throws Exception {
        return http.post("/api/email_mfa_v2/revokeall", data);
    }

    /** Disable MFA */
    public Map<String, Object> disable(Map<String, Object> data) throws Exception {
        return http.post("/api/email_mfa_v2/disable", data);
    }

}
