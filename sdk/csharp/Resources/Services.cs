using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Services : BaseResource
{
    public Services(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ServicesAsync()
    {
        return await Http.GetAsync("/api/service");
    }

    public async Task<Dictionary<string, object?>> ServiceAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}", id));
    }

    public async Task<Dictionary<string, object?>> MethodsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/methods", id));
    }

    public async Task<Dictionary<string, object?>> CancelAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/cancel", id), data);
    }

    public async Task<Dictionary<string, object?>> LabelAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/label", id));
    }

    public async Task<Dictionary<string, object?>> SetLabelAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/label", id), data);
    }

    public async Task<Dictionary<string, object?>> RenewAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/renew", id), data);
    }

    public async Task<Dictionary<string, object?>> CycleAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/cycle", id));
    }

    public async Task<Dictionary<string, object?>> SetCycleAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/cycle", id), data);
    }
}
