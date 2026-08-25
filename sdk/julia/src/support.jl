# Support: tickets, departments, news, knowledgebase
struct SupportResource
    http::HttpClient
end

# GET /api/tickets - List support tickets
function list_tickets(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/tickets"; params = params)
end

# POST /api/tickets - Create new support ticket
function create_ticket(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/tickets"; params = params)
end

# GET /api/tickets/{number} - Get ticket details with replies
function get_ticket(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/tickets/{number}"; params = params)
end

# POST /api/tickets/{number} - Reply to ticket
function reply(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/tickets/{number}"; params = params)
end

# GET /api/ticket/attachment/{file} - Get ticket attachment
function get_attachment(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/ticket/attachment/{file}"; params = params)
end

# PUT /api/tickets/{number}/open - Re-open closed ticket
function reopen(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/tickets/{number}/open"; params = params)
end

# PUT /api/tickets/{number}/close - Close ticket
function close(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/tickets/{number}/close"; params = params)
end

# GET /api/ticket/departments - List ticket departments
function list_departments(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/ticket/departments"; params = params)
end

# GET /api/news - List news
function list_news(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/news"; params = params)
end

# GET /api/news/{news_id} - Get news item details
function get_news(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/news/{news_id}"; params = params)
end

# GET /api/knowledgebase - List knowledgebase categories
function list_knowledgebase_categories(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/knowledgebase"; params = params)
end

# GET /api/knowledgebase/{category_id} - Get category with articles
function get_knowledgebase_category(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/knowledgebase/{category_id}"; params = params)
end

# GET /api/knowledgebase/article/{article_id} - Get article details
function get_knowledgebase_article(r::SupportResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/knowledgebase/article/{article_id}"; params = params)
end
