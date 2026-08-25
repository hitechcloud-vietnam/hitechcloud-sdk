package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Auth extends BaseResource {

    public Auth(HttpClient http) {
        super(http);
    }

    /** Login */
    public Map<String, Object> login(String email, String password) throws Exception {
        return http.post("/api/login", email);
    }

    /** Logout */
    public Map<String, Object> logout() throws Exception {
        return http.post("/api/logout", null);
    }

    /** Refresh token */
    public Map<String, Object> refreshToken() throws Exception {
        return http.post("/api/token", null);
    }

    /** Revoke token */
    public Map<String, Object> revokeToken() throws Exception {
        return http.post("/api/revoke", null);
    }

    /** Password reset */
    public Map<String, Object> passwordReset(String email) throws Exception {
        return http.post("/api/passwordreset", email);
    }

    /** Signup */
    public Map<String, Object> signup(String email, String password, String firstName, String lastName) throws Exception {
        return http.post("/api/signup", email);
    }

}
