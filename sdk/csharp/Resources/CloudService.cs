namespace HiTechCloud.SDK.Resources;

public class CloudService : BaseResource
{
    public CloudService(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ShutdownAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/shutdown", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> ResetAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/reset", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> SetHostnameAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/hostname", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> IpPoolAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/ippool", id, vmid));
    }

    public async Task<Dictionary<string, object?>> AssignIpAsync(int id, int vmid, string pool)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/ippool/{pool}", id, vmid, pool), null);
    }

    public async Task<Dictionary<string, object?>> NetworksAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/networks", id));
    }

    public async Task<Dictionary<string, object?>> CreateInterfaceAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/interfaces", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> GetInterfaceAsync(int id, int vmid, string iface)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/interfaces/{iface}", id, vmid, iface));
    }

    public async Task<Dictionary<string, object?>> UpdateInterfaceAsync(int id, int vmid, string iface, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{id}/vms/{vmid}/interfaces/{iface}", id, vmid, iface), data);
    }

    public async Task<Dictionary<string, object?>> DeleteInterfaceAsync(int id, int vmid, string iface)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{id}/vms/{vmid}/interfaces/{iface}", id, vmid, iface));
    }
}
