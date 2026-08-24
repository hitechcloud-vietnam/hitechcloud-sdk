package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class Virtualizor extends BaseResource {
    public Virtualizor(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/virtualizor", params); }
    public Map<String, Object> get(int vpsId) { return httpClient.get("/api/virtualizor/" + vpsId, null); }
    public Map<String, Object> start(int vpsId) { return httpClient.post("/api/virtualizor/" + vpsId + "/start", null); }
    public Map<String, Object> stop(int vpsId) { return httpClient.post("/api/virtualizor/" + vpsId + "/stop", null); }
}
