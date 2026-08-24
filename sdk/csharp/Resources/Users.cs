namespace HiTechCloud.SDK.Resources;

public class Users : BaseResource
{
    public Users(HttpClientWrapper http) : base(http) { }

    public Task<Dictionary<string, object?>> GetDetailsAsync() => Http.GetAsync("/api/user");
    public Task<Dictionary<string, object?>> UpdateDetailsAsync(object data) => Http.PutAsync("/api/user", data);
    public Task<Dictionary<string, object?>> GetLogsAsync() => Http.GetAsync("/api/user/logs");
}
