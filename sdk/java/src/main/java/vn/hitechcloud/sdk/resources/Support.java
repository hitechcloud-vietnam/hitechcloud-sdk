package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Support extends BaseResource {

    public Support(HttpClient http) {
        super(http);
    }

    /** List tickets */
    public Map<String, Object> tickets() throws Exception {
        return http.get("/api/tickets");
    }

    /** Create ticket */
    public Map<String, Object> createTicket(Map<String, Object> data) throws Exception {
        return http.post("/api/tickets", data);
    }

    /** Get ticket */
    public Map<String, Object> ticket(String number) throws Exception {
        return http.get(String.format("/api/tickets/%number", number));
    }

    /** Reply to ticket */
    public Map<String, Object> replyTicket(String number, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/tickets/%number", number), data);
    }

    /** Get attachment */
    public Map<String, Object> ticketAttachment(String file) throws Exception {
        return http.get(String.format("/api/ticket/attachment/%file", file));
    }

    /** Open ticket */
    public Map<String, Object> openTicket(String number) throws Exception {
        return http.put(String.format("/api/tickets/%number/open", number), null);
    }

    /** Close ticket */
    public Map<String, Object> closeTicket(String number) throws Exception {
        return http.put(String.format("/api/tickets/%number/close", number), null);
    }

    /** Get departments */
    public Map<String, Object> departments() throws Exception {
        return http.get("/api/ticket/departments");
    }

    /** List news */
    public Map<String, Object> news() throws Exception {
        return http.get("/api/news");
    }

    /** Get news item */
    public Map<String, Object> newsItem(int newsId) throws Exception {
        return http.get(String.format("/api/news/%newsId", newsId));
    }

    /** List knowledgebase */
    public Map<String, Object> knowledgebase() throws Exception {
        return http.get("/api/knowledgebase");
    }

    /** Get KB category */
    public Map<String, Object> knowledgebaseCategory(int categoryId) throws Exception {
        return http.get(String.format("/api/knowledgebase/%categoryId", categoryId));
    }

    /** Get KB article */
    public Map<String, Object> knowledgebaseArticle(int articleId) throws Exception {
        return http.get(String.format("/api/knowledgebase/article/%articleId", articleId));
    }

}
