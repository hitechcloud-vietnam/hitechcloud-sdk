package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class Auth extends BaseResource {
    public Auth(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> login(String email, String password) {
        Map<String, String> body = new HashMap<>();
        body.put("email", email);
        body.put("password", password);
        return httpClient.post("/api/auth/login", body);
    }

    public Map<String, Object> logout() { return httpClient.post("/api/auth/logout", null); }
    public Map<String, Object> refreshToken() { return httpClient.post("/api/auth/refresh", null); }
    public Map<String, Object> revokeToken() { return httpClient.post("/api/auth/revoke", null); }

    public Map<String, Object> passwordReset(String email) {
        Map<String, String> body = new HashMap<>();
        body.put("email", email);
        return httpClient.post("/api/auth/password/reset", body);
    }

    public Map<String, Object> signup(String email, String password, String firstName, String lastName) {
        Map<String, String> body = new HashMap<>();
        body.put("email", email);
        body.put("password", password);
        body.put("first_name", firstName);
        body.put("last_name", lastName);
        return httpClient.post("/api/auth/signup", body);
    }
}
