namespace HiTechCloud.SDK.Resources;

public class CloudInstance : BaseResource
{
    public CloudInstance(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> VmsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms", id));
    }

    public async Task<Dictionary<string, object?>> CreateVmAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms", id), data);
    }

    public async Task<Dictionary<string, object?>> VmAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}", id, vmid));
    }

    public async Task<Dictionary<string, object?>> DeleteVmAsync(int id, int vmid)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{id}/vms/{vmid}", id, vmid));
    }

    public async Task<Dictionary<string, object?>> UpdateVmAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{id}/vms/{vmid}", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> StopVmAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/stop", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> StartVmAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/start", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> RebootVmAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/reboot", id, vmid), null);
    }

    public async Task<Dictionary<string, object?>> ResetPasswordAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/resetpwd", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> RebuildVmAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/rebuild", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> VmIpsAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/ips", id, vmid));
    }

    public async Task<Dictionary<string, object?>> AddVmIpAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/ips", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> VmInterfacesAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/interfaces", id, vmid));
    }

    public async Task<Dictionary<string, object?>> CpuUsageAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/usage/cpu", id, vmid));
    }

    public async Task<Dictionary<string, object?>> NetUsageAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/usage/net", id, vmid));
    }

    public async Task<Dictionary<string, object?>> DiskUsageAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/usage/disk", id, vmid));
    }

    public async Task<Dictionary<string, object?>> StorageAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/storage", id, vmid));
    }

    public async Task<Dictionary<string, object?>> UpdateStorageAsync(int id, int vmid, int diskid, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{id}/vms/{vmid}/storage/{diskid}", id, vmid, diskid), data);
    }

    public async Task<Dictionary<string, object?>> ImagesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/images", id));
    }

    public async Task<Dictionary<string, object?>> CreateImageAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/images", id), data);
    }

    public async Task<Dictionary<string, object?>> InterfaceIpsAsync(int id, int vmid, string iface)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips", id, vmid, iface));
    }

    public async Task<Dictionary<string, object?>> DeleteVmIpAsync(int id, int vmid, int ipid)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{id}/vms/{vmid}/ips/{ipid}", id, vmid, ipid));
    }

    public async Task<Dictionary<string, object?>> VmRdnsAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/rdns", id, vmid));
    }

    public async Task<Dictionary<string, object?>> SetVmRdnsAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/rdns", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> RebuildNetworkAsync(int id, int vmid)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/rebuild_network", id, vmid), null);
    }
}
