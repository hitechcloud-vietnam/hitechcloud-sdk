namespace HiTechCloud.SDK.Resources;

public class Virtualizor : BaseResource
{
    public Virtualizor(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> SuspendAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/suspend", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> UnsuspendAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/unsuspend", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> RebuildAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/rebuild", id, vmid));
    }

    public async Task<Dictionary<string, object?>> AddSshKeyAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/addsshkey", id, vmid), data);
    }
}
