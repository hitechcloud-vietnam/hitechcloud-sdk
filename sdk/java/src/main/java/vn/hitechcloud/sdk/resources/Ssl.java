package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class Ssl extends BaseResource {
    public Ssl(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/ssl", params); }
    public Map<String, Object> get(int sslId) { return httpClient.get("/api/ssl/" + sslId, null); }
    public Map<String, Object> download(int sslId) { return httpClient.get("/api/ssl/" + sslId + "/download", null); }
    public Map<String, Object> listAvailable(Map<String, String> params) { return httpClient.get("/api/ssl/available", params); }
    public Map<String, Object> order(Map<String, Object> data) { return httpClient.post("/api/ssl/order", data); }
    public Map<String, Object> listServerSoftware() { return httpClient.get("/api/ssl/serversoftware", null); }
}
