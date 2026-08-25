namespace HiTechCloud.SDK.Resources;

public class Vcloudstack : BaseResource
{
    public Vcloudstack(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> RescueAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/rescue", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> UnrescueAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/unrescue", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> ConsoleAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/console", id, vmid));
    }

    public async Task<Dictionary<string, object?>> UsageAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/usage", id, vmid));
    }
}
