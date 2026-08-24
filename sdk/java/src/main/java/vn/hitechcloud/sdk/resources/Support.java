package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class Support extends BaseResource {
    public Support(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> listDepartments() { return httpClient.get("/api/support/departments", null); }
    public Map<String, Object> listTickets(Map<String, String> params) { return httpClient.get("/api/support/tickets", params); }
    public Map<String, Object> getTicket(int ticketId) { return httpClient.get("/api/support/tickets/" + ticketId, null); }
    public Map<String, Object> createTicket(Map<String, Object> data) { return httpClient.post("/api/support/tickets", data); }

    public Map<String, Object> replyTicket(int ticketId, String message) {
        Map<String, String> body = new HashMap<>();
        body.put("message", message);
        return httpClient.post("/api/support/tickets/" + ticketId, body);
    }

    public Map<String, Object> closeTicket(int ticketId) { return httpClient.post("/api/support/tickets/" + ticketId + "/close", null); }
    public Map<String, Object> listNews(Map<String, String> params) { return httpClient.get("/api/support/news", params); }
    public Map<String, Object> getNews(int newsId) { return httpClient.get("/api/support/news/" + newsId, null); }
    public Map<String, Object> listKbCategories() { return httpClient.get("/api/support/kb/categories", null); }
    public Map<String, Object> listKbArticles(Map<String, String> params) { return httpClient.get("/api/support/kb/articles", params); }
    public Map<String, Object> getKbArticle(int articleId) { return httpClient.get("/api/support/kb/articles/" + articleId, null); }

    public Map<String, Object> searchKb(String query) {
        Map<String, String> params = new HashMap<>();
        params.put("query", query);
        return httpClient.get("/api/support/kb/search", params);
    }

    public Map<String, Object> listAnnouncements(Map<String, String> params) { return httpClient.get("/api/support/announcements", params); }
}
