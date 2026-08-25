namespace HiTechCloud.SDK.Resources;

public class Support : BaseResource
{
    public Support(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> TicketsAsync()
    {
        return await Http.GetAsync("/api/tickets");
    }

    public async Task<Dictionary<string, object?>> CreateTicketAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/tickets", data);
    }

    public async Task<Dictionary<string, object?>> TicketAsync(string number)
    {
        return await Http.GetAsync(string.Format("/api/tickets/{number}", number));
    }

    public async Task<Dictionary<string, object?>> ReplyTicketAsync(string number, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/tickets/{number}", number), data);
    }

    public async Task<Dictionary<string, object?>> TicketAttachmentAsync(string file)
    {
        return await Http.GetAsync(string.Format("/api/ticket/attachment/{file}", file));
    }

    public async Task<Dictionary<string, object?>> OpenTicketAsync(string number)
    {
        return await Http.PutAsync(string.Format("/api/tickets/{number}/open", number), null);
    }

    public async Task<Dictionary<string, object?>> CloseTicketAsync(string number)
    {
        return await Http.PutAsync(string.Format("/api/tickets/{number}/close", number), null);
    }

    public async Task<Dictionary<string, object?>> DepartmentsAsync()
    {
        return await Http.GetAsync("/api/ticket/departments");
    }

    public async Task<Dictionary<string, object?>> NewsAsync()
    {
        return await Http.GetAsync("/api/news");
    }

    public async Task<Dictionary<string, object?>> NewsItemAsync(int newsId)
    {
        return await Http.GetAsync(string.Format("/api/news/{newsId}", newsId));
    }

    public async Task<Dictionary<string, object?>> KnowledgebaseAsync()
    {
        return await Http.GetAsync("/api/knowledgebase");
    }

    public async Task<Dictionary<string, object?>> KnowledgebaseCategoryAsync(int categoryId)
    {
        return await Http.GetAsync(string.Format("/api/knowledgebase/{categoryId}", categoryId));
    }

    public async Task<Dictionary<string, object?>> KnowledgebaseArticleAsync(int articleId)
    {
        return await Http.GetAsync(string.Format("/api/knowledgebase/article/{articleId}", articleId));
    }
}
