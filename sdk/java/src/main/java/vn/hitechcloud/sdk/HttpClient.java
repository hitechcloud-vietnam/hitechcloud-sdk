package vn.hitechcloud.sdk;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.io.*;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Map;

public class HttpClient {
    private final String baseUrl;
    private final int timeout;
    private final int maxRetries;
    private String token;
    private final Gson gson = new Gson();

    public HttpClient(String baseUrl, int timeout, int maxRetries) {
        this.baseUrl = baseUrl;
        this.timeout = timeout;
        this.maxRetries = maxRetries;
    }

    public void setToken(String token) { this.token = token; }
    public void clearToken() { this.token = null; }

    public Map<String, Object> request(String method, String path, Object body, Map<String, String> params) throws HiTechCloudException {
        Exception lastError = null;

        for (int attempt = 0; attempt <= maxRetries; attempt++) {
            try {
                String urlStr = baseUrl + path;
                if (params != null && !params.isEmpty()) {
                    StringBuilder sb = new StringBuilder(urlStr);
                    boolean first = true;
                    for (Map.Entry<String, String> entry : params.entrySet()) {
                        sb.append(first ? "?" : "&");
                        sb.append(entry.getKey()).append("=").append(entry.getValue());
                        first = false;
                    }
                    urlStr = sb.toString();
                }

                URL url = new URL(urlStr);
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod(method);
                conn.setConnectTimeout(timeout * 1000);
                conn.setReadTimeout(timeout * 1000);
                conn.setRequestProperty("Content-Type", "application/json");
                conn.setRequestProperty("User-Agent", "HiTechCloud-SDK-Java/" + HiTechCloudClient.VERSION);
                if (token != null) {
                    conn.setRequestProperty("Authorization", "Bearer " + token);
                }

                if (body != null && ("POST".equals(method) || "PUT".equals(method))) {
                    conn.setDoOutput(true);
                    try (OutputStream os = conn.getOutputStream()) {
                        os.write(gson.toJson(body).getBytes(StandardCharsets.UTF_8));
                    }
                }

                int statusCode = conn.getResponseCode();

                if (statusCode == 429 && attempt < maxRetries) {
                    String retryAfter = conn.getHeaderField("Retry-After");
                    int seconds = retryAfter != null ? Integer.parseInt(retryAfter) : 60;
                    Thread.sleep(seconds * 1000L);
                    continue;
                }

                if (statusCode >= 500 && attempt < maxRetries) {
                    Thread.sleep((long) Math.pow(2, attempt) * 1000);
                    continue;
                }

                InputStream is = statusCode >= 400 ? conn.getErrorStream() : conn.getInputStream();
                String responseBody = readStream(is);

                Type mapType = new TypeToken<Map<String, Object>>(){}.getType();
                Map<String, Object> result = gson.fromJson(responseBody, mapType);

                if (statusCode >= 400) {
                    throw mapError(statusCode, result);
                }

                return result;
            } catch (HiTechCloudException e) {
                throw e;
            } catch (Exception e) {
                lastError = e;
                if (attempt < maxRetries) {
                    try { Thread.sleep((long) Math.pow(2, attempt) * 1000); } catch (InterruptedException ie) { Thread.currentThread().interrupt(); }
                }
            }
        }

        throw new HiTechCloudException("Request failed: " + (lastError != null ? lastError.getMessage() : "unknown"), 0, null);
    }

    public Map<String, Object> get(String path, Map<String, String> params) throws HiTechCloudException {
        return request("GET", path, null, params);
    }

    public Map<String, Object> post(String path, Object body) throws HiTechCloudException {
        return request("POST", path, body, null);
    }

    public Map<String, Object> put(String path, Object body) throws HiTechCloudException {
        return request("PUT", path, body, null);
    }

    public Map<String, Object> delete(String path) throws HiTechCloudException {
        return request("DELETE", path, null, null);
    }

    private String readStream(InputStream is) throws IOException {
        if (is == null) return "{}";
        BufferedReader reader = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        reader.close();
        return sb.toString();
    }

    private HiTechCloudException mapError(int statusCode, Map<String, Object> data) {
        String message = "API error";
        if (data != null) {
            if (data.containsKey("error")) message = data.get("error").toString();
            else if (data.containsKey("message")) message = data.get("message").toString();
        }

        switch (statusCode) {
            case 401: return new AuthenticationException(message, statusCode, data);
            case 403: return new AuthorizationException(message, statusCode, data);
            case 404: return new NotFoundException(message, statusCode, data);
            case 422: return new ValidationException(message, statusCode, data);
            case 429: return new RateLimitException(message, statusCode, data, 60);
            default:
                if (statusCode >= 500) return new ServerException(message, statusCode, data);
                return new HiTechCloudException(message, statusCode, data);
        }
    }
}
