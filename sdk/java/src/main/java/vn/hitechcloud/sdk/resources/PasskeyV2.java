package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class PasskeyV2 extends BaseResource {

    public PasskeyV2(HttpClient http) {
        super(http);
    }

    /** Get status */
    public Map<String, Object> status(String userType, int userId) throws Exception {
        return http.get(String.format("/api/passkeyv2/status/%userType/%userId", userType, userId));
    }

    /** List credentials */
    public Map<String, Object> credentials(String userType, int userId) throws Exception {
        return http.get(String.format("/api/passkeyv2/credentials/%userType/%userId", userType, userId));
    }

    /** Delete credential */
    public Map<String, Object> deleteCredential(String userType, int userId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/passkeyv2/credentials/%userType/%userId/delete", userType, userId), data);
    }

    /** Send email OTP */
    public Map<String, Object> sendEmailOtp(Map<String, Object> data) throws Exception {
        return http.post("/api/passkeyv2/email_otp/send", data);
    }

    /** Verify email OTP */
    public Map<String, Object> verifyEmailOtp(Map<String, Object> data) throws Exception {
        return http.post("/api/passkeyv2/email_otp/verify", data);
    }

    /** Disable MFA */
    public Map<String, Object> disableMfa(String userType, int userId) throws Exception {
        return http.post(String.format("/api/passkeyv2/disable/%userType/%userId", userType, userId), null);
    }

}
