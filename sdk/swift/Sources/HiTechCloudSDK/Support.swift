import Foundation

/// Support: tickets, departments, news, knowledgebase
public class SupportResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/tickets - List support tickets
    public func listTickets(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/tickets", params: params)
    }

    /// POST /api/tickets - Create new support ticket
    public func createTicket(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/tickets", params: params)
    }

    /// GET /api/tickets/{number} - Get ticket details with replies
    public func getTicket(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/tickets/{number}", params: params)
    }

    /// POST /api/tickets/{number} - Reply to ticket
    public func reply(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/tickets/{number}", params: params)
    }

    /// GET /api/ticket/attachment/{file} - Get ticket attachment
    public func getAttachment(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/ticket/attachment/{file}", params: params)
    }

    /// PUT /api/tickets/{number}/open - Re-open closed ticket
    public func reopen(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/tickets/{number}/open", params: params)
    }

    /// PUT /api/tickets/{number}/close - Close ticket
    public func close(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/tickets/{number}/close", params: params)
    }

    /// GET /api/ticket/departments - List ticket departments
    public func listDepartments(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/ticket/departments", params: params)
    }

    /// GET /api/news - List news
    public func listNews(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/news", params: params)
    }

    /// GET /api/news/{news_id} - Get news item details
    public func getNews(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/news/{news_id}", params: params)
    }

    /// GET /api/knowledgebase - List knowledgebase categories
    public func listKnowledgebaseCategories(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/knowledgebase", params: params)
    }

    /// GET /api/knowledgebase/{category_id} - Get category with articles
    public func getKnowledgebaseCategory(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/knowledgebase/{category_id}", params: params)
    }

    /// GET /api/knowledgebase/article/{article_id} - Get article details
    public func getKnowledgebaseArticle(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/knowledgebase/article/{article_id}", params: params)
    }

}
