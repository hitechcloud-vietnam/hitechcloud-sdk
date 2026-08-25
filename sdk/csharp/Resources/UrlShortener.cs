namespace HiTechCloud.SDK.Resources;

public class UrlShortener : BaseResource
{
    public UrlShortener(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ShortenAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/url-shortener/shorten", data);
    }

    public async Task<Dictionary<string, object?>> LinksAsync()
    {
        return await Http.GetAsync("/api/url-shortener/links");
    }

    public async Task<Dictionary<string, object?>> ConfigAsync()
    {
        return await Http.GetAsync("/api/url-shortener/config");
    }

    public async Task<Dictionary<string, object?>> StatsAsync()
    {
        return await Http.GetAsync("/api/url-shortener/stats");
    }

    public async Task<Dictionary<string, object?>> LinkAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/url-shortener/links/{id}", id));
    }

    public async Task<Dictionary<string, object?>> DeleteLinkAsync(int id)
    {
        return await Http.DeleteAsync(string.Format("/api/url-shortener/links/{id}", id));
    }
}
