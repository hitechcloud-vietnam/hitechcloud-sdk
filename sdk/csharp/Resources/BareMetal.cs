namespace HiTechCloud.SDK.Resources;

public class BareMetal : BaseResource
{
    public BareMetal(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ReinstallTemplatesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/reinstall/templates", id));
    }

    public async Task<Dictionary<string, object?>> CancelDiagAsync(int id)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/diag/cancel", id), null);
    }

    public async Task<Dictionary<string, object?>> DiagTemplatesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/diag/templates", id));
    }

    public async Task<Dictionary<string, object?>> DiagAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/diag", id));
    }

    public async Task<Dictionary<string, object?>> RunDiagAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/diag", id), data);
    }

    public async Task<Dictionary<string, object?>> RescueTemplatesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/rescue/templates", id));
    }

    public async Task<Dictionary<string, object?>> RescueAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/rescue", id));
    }

    public async Task<Dictionary<string, object?>> EnterRescueAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/rescue", id), data);
    }

    public async Task<Dictionary<string, object?>> CancelRescueAsync(int id)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/rescue/cancel", id), null);
    }

    public async Task<Dictionary<string, object?>> InfoAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/info", id));
    }

    public async Task<Dictionary<string, object?>> SetHostnameAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/hostname", id), data);
    }

    public async Task<Dictionary<string, object?>> IpsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/ips", id));
    }

    public async Task<Dictionary<string, object?>> AddIpAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/ips", id), data);
    }

    public async Task<Dictionary<string, object?>> VlansAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vlans", id));
    }

    public async Task<Dictionary<string, object?>> IpAsync(int id, string ip)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/ips/{ip}", id, ip));
    }

    public async Task<Dictionary<string, object?>> UpdateIpAsync(int id, string ip, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{id}/ips/{ip}", id, ip), data);
    }

    public async Task<Dictionary<string, object?>> ReinstallAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/reinstall", id));
    }

    public async Task<Dictionary<string, object?>> DoReinstallAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/reinstall", id), data);
    }

    public async Task<Dictionary<string, object?>> StatusAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/status", id));
    }

    public async Task<Dictionary<string, object?>> PowerAsync(int id, string action, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/power/{action}", id, action), data);
    }

    public async Task<Dictionary<string, object?>> ServerStockAsync()
    {
        return await Http.GetAsync("/api/serverstock");
    }
}
