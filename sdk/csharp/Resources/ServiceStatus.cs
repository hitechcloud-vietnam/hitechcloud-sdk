using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class ServiceStatus : BaseResource
{
    public ServiceStatus(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> StatusesAsync()
    {
        return await Http.GetAsync("/api/statuses");
    }

    public async Task<Dictionary<string, object?>> UpdateStatusAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/statuses/{id}", id), data);
    }
}
