using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class WillExpired : BaseResource
{
    public WillExpired(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ListAsync()
    {
        return await Http.GetAsync("/api/willexpired");
    }

    public async Task<Dictionary<string, object?>> SummaryAsync()
    {
        return await Http.GetAsync("/api/willexpired/summary");
    }

    public async Task<Dictionary<string, object?>> ConfigAsync()
    {
        return await Http.GetAsync("/api/willexpired/config");
    }

    public async Task<Dictionary<string, object?>> InvoicesAsync()
    {
        return await Http.GetAsync("/api/willexpired/invoices");
    }

    public async Task<Dictionary<string, object?>> RequestsAsync()
    {
        return await Http.GetAsync("/api/willexpired/requests");
    }

    public async Task<Dictionary<string, object?>> ExportAsync()
    {
        return await Http.GetAsync("/api/willexpired/export");
    }

    public async Task<Dictionary<string, object?>> ItemAsync(string type, int id)
    {
        return await Http.GetAsync(string.Format("/api/willexpired/{type}/{id}", type, id));
    }

    public async Task<Dictionary<string, object?>> RenewAsync(string type, int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/willexpired/{type}/{id}/renew", type, id), data);
    }

    public async Task<Dictionary<string, object?>> AutorenewAsync(string type, int id)
    {
        return await Http.GetAsync(string.Format("/api/willexpired/{type}/{id}/autorenew", type, id));
    }

    public async Task<Dictionary<string, object?>> SetAutorenewAsync(string type, int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/willexpired/{type}/{id}/autorenew", type, id), data);
    }
}
