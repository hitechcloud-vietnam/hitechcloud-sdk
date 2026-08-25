package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Vneidekyc extends BaseResource {

    public Vneidekyc(HttpClient http) {
        super(http);
    }

    /** Create eKYC session */
    public Map<String, Object> ekycSession() throws Exception {
        return http.get("/api/vneidekyc/ekyc/session");
    }

    /** Get session */
    public Map<String, Object> getSession(String sessionHash) throws Exception {
        return http.get(String.format("/api/vneidekyc/ekyc/session/%sessionHash", sessionHash));
    }

    /** List sessions */
    public Map<String, Object> listSessions(int clientId) throws Exception {
        return http.get(String.format("/api/vneidekyc/ekyc/list/%clientId", clientId));
    }

    /** Upload document */
    public Map<String, Object> upload(String sessionHash, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/vneidekyc/ekyc/%sessionHash/upload", sessionHash), data);
    }

    /** Submit */
    public Map<String, Object> submit(String sessionHash) throws Exception {
        return http.post(String.format("/api/vneidekyc/ekyc/%sessionHash/submit", sessionHash), null);
    }

    /** Cancel */
    public Map<String, Object> cancel(String sessionHash) throws Exception {
        return http.post(String.format("/api/vneidekyc/ekyc/%sessionHash/cancel", sessionHash), null);
    }

    /** Accept */
    public Map<String, Object> accept(String sessionHash) throws Exception {
        return http.post(String.format("/api/vneidekyc/ekyc/%sessionHash/accept", sessionHash), null);
    }

    /** Reject */
    public Map<String, Object> reject(String sessionHash) throws Exception {
        return http.post(String.format("/api/vneidekyc/ekyc/%sessionHash/reject", sessionHash), null);
    }

    /** Org lookup */
    public Map<String, Object> orgLookup(Map<String, Object> data) throws Exception {
        return http.post("/api/vneidekyc/org/lookup", data);
    }

    /** Start org verification */
    public Map<String, Object> orgStart(Map<String, Object> data) throws Exception {
        return http.post("/api/vneidekyc/org/start", data);
    }

    /** Get org session */
    public Map<String, Object> orgSession(String orgHash) throws Exception {
        return http.get(String.format("/api/vneidekyc/org/%orgHash", orgHash));
    }

    /** Accept org */
    public Map<String, Object> orgAccept(String orgHash) throws Exception {
        return http.post(String.format("/api/vneidekyc/org/%orgHash/accept", orgHash), null);
    }

    /** Reject org */
    public Map<String, Object> orgReject(String orgHash) throws Exception {
        return http.post(String.format("/api/vneidekyc/org/%orgHash/reject", orgHash), null);
    }

    /** Upload PDF */
    public Map<String, Object> pdfUpload(Map<String, Object> data) throws Exception {
        return http.post("/api/vneidekyc/pdf/upload", data);
    }

    /** Get PDF status */
    public Map<String, Object> pdfStatus(String pdfHash) throws Exception {
        return http.get(String.format("/api/vneidekyc/pdf/%pdfHash", pdfHash));
    }

    /** Get client status */
    public Map<String, Object> clientStatus(int clientId) throws Exception {
        return http.get(String.format("/api/vneidekyc/client/%clientId/status", clientId));
    }

}
