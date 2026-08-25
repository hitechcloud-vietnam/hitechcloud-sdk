namespace HiTechCloud.SDK

/// Support: tickets, departments, news, knowledgebase
type SupportResource(httpClient: HttpClient) =

    /// GET /api/tickets - List support tickets
    member this.ListTickets() =
        async {
            return! httpClient.getAsync("/api/tickets")
        }

    /// POST /api/tickets - Create new support ticket
    member this.CreateTicket() =
        async {
            return! httpClient.postAsync("/api/tickets")
        }

    /// GET /api/tickets/{number} - Get ticket details with replies
    member this.GetTicket() =
        async {
            return! httpClient.getAsync("/api/tickets/{number}")
        }

    /// POST /api/tickets/{number} - Reply to ticket
    member this.Reply() =
        async {
            return! httpClient.postAsync("/api/tickets/{number}")
        }

    /// GET /api/ticket/attachment/{file} - Get ticket attachment
    member this.GetAttachment() =
        async {
            return! httpClient.getAsync("/api/ticket/attachment/{file}")
        }

    /// PUT /api/tickets/{number}/open - Re-open closed ticket
    member this.Reopen() =
        async {
            return! httpClient.putAsync("/api/tickets/{number}/open")
        }

    /// PUT /api/tickets/{number}/close - Close ticket
    member this.Close() =
        async {
            return! httpClient.putAsync("/api/tickets/{number}/close")
        }

    /// GET /api/ticket/departments - List ticket departments
    member this.ListDepartments() =
        async {
            return! httpClient.getAsync("/api/ticket/departments")
        }

    /// GET /api/news - List news
    member this.ListNews() =
        async {
            return! httpClient.getAsync("/api/news")
        }

    /// GET /api/news/{news_id} - Get news item details
    member this.GetNews() =
        async {
            return! httpClient.getAsync("/api/news/{news_id}")
        }

    /// GET /api/knowledgebase - List knowledgebase categories
    member this.ListKnowledgebaseCategories() =
        async {
            return! httpClient.getAsync("/api/knowledgebase")
        }

    /// GET /api/knowledgebase/{category_id} - Get category with articles
    member this.GetKnowledgebaseCategory() =
        async {
            return! httpClient.getAsync("/api/knowledgebase/{category_id}")
        }

    /// GET /api/knowledgebase/article/{article_id} - Get article details
    member this.GetKnowledgebaseArticle() =
        async {
            return! httpClient.getAsync("/api/knowledgebase/article/{article_id}")
        }

