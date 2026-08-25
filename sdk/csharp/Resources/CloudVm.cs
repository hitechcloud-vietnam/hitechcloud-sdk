using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class CloudVm : BaseResource
{
    public CloudVm(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> UpgradeAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/upgrade", id));
    }

    public async Task<Dictionary<string, object?>> DoUpgradeAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/upgrade", id), data);
    }

    public async Task<Dictionary<string, object?>> ResourcesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/resources", id));
    }

    public async Task<Dictionary<string, object?>> TemplateAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/templates/{vmid}", id, vmid));
    }

    public async Task<Dictionary<string, object?>> MemoryUsageAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/usage/memory", id, vmid));
    }

    public async Task<Dictionary<string, object?>> VmImagesAsync(int id, int vmid)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/{vmid}/images", id, vmid));
    }

    public async Task<Dictionary<string, object?>> CreateVmImageAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/images", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> BootOrderAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/boot", id, vmid), data);
    }

    public async Task<Dictionary<string, object?>> TuntapAsync(int id, int vmid, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/{vmid}/tuntap", id, vmid), data);
    }
}
