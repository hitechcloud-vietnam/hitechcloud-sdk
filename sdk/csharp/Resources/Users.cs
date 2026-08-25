namespace HiTechCloud.SDK.Resources;

public class Users : BaseResource
{
    public Users(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> DetailsAsync()
    {
        return await Http.GetAsync("/api/details");
    }

    public async Task<Dictionary<string, object?>> UpdateDetailsAsync(Dictionary<string, object> data)
    {
        return await Http.PutAsync("/api/details", data);
    }

    public async Task<Dictionary<string, object?>> LogsAsync()
    {
        return await Http.GetAsync("/api/logs");
    }
}
