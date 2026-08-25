package vn.hitechcloud.sdk

/** Support: tickets, departments, news, knowledgebase */
class SupportResource(private val httpClient: HttpClient) {
    /** GET /api/tickets - List support tickets */
    fun listTickets(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/tickets", params)
    }

    /** POST /api/tickets - Create new support ticket */
    fun createTicket(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/tickets", params)
    }

    /** GET /api/tickets/{number} - Get ticket details with replies */
    fun getTicket(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/tickets/{number}", params)
    }

    /** POST /api/tickets/{number} - Reply to ticket */
    fun reply(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/tickets/{number}", params)
    }

    /** GET /api/ticket/attachment/{file} - Get ticket attachment */
    fun getAttachment(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/ticket/attachment/{file}", params)
    }

    /** PUT /api/tickets/{number}/open - Re-open closed ticket */
    fun reopen(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/tickets/{number}/open", params)
    }

    /** PUT /api/tickets/{number}/close - Close ticket */
    fun close(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/tickets/{number}/close", params)
    }

    /** GET /api/ticket/departments - List ticket departments */
    fun listDepartments(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/ticket/departments", params)
    }

    /** GET /api/news - List news */
    fun listNews(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/news", params)
    }

    /** GET /api/news/{news_id} - Get news item details */
    fun getNews(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/news/{news_id}", params)
    }

    /** GET /api/knowledgebase - List knowledgebase categories */
    fun listKnowledgebaseCategories(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/knowledgebase", params)
    }

    /** GET /api/knowledgebase/{category_id} - Get category with articles */
    fun getKnowledgebaseCategory(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/knowledgebase/{category_id}", params)
    }

    /** GET /api/knowledgebase/article/{article_id} - Get article details */
    fun getKnowledgebaseArticle(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/knowledgebase/article/{article_id}", params)
    }

}
