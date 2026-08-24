package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.Map;

public class CloudGpu extends BaseResource {
    public CloudGpu(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> list(Map<String, String> params) { return httpClient.get("/api/cloudgpu", params); }
    public Map<String, Object> get(int gpuId) { return httpClient.get("/api/cloudgpu/" + gpuId, null); }
    public Map<String, Object> start(int gpuId) { return httpClient.post("/api/cloudgpu/" + gpuId + "/start", null); }
    public Map<String, Object> stop(int gpuId) { return httpClient.post("/api/cloudgpu/" + gpuId + "/stop", null); }
    public Map<String, Object> restart(int gpuId) { return httpClient.post("/api/cloudgpu/" + gpuId + "/restart", null); }
    public Map<String, Object> getConsole(int gpuId) { return httpClient.get("/api/cloudgpu/" + gpuId + "/console", null); }
}
