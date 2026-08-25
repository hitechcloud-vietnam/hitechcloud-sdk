using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class DnsManage : BaseResource
{
    public DnsManage(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> RegisterDnsAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/domain/{id}/reg", id), data);
    }

    public async Task<Dictionary<string, object?>> DnsRecordsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/dns", id));
    }

    public async Task<Dictionary<string, object?>> CreateDnsRecordAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/domain/{id}/dns", id), data);
    }

    public async Task<Dictionary<string, object?>> UpdateDnsRecordAsync(int id, int index, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/domain/{id}/dns/{index}", id, index), data);
    }

    public async Task<Dictionary<string, object?>> DeleteDnsRecordAsync(int id, int index)
    {
        return await Http.DeleteAsync(string.Format("/api/domain/{id}/dns/{index}", id, index));
    }

    public async Task<Dictionary<string, object?>> DnsTypesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/dns/types", id));
    }

    public async Task<Dictionary<string, object?>> DnssecFlagsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/dnssec/flags", id));
    }

    public async Task<Dictionary<string, object?>> DnssecAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/dnssec", id));
    }

    public async Task<Dictionary<string, object?>> CreateDnssecAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/domain/{id}/dnssec", id), data);
    }

    public async Task<Dictionary<string, object?>> DeleteDnssecAsync(int id)
    {
        return await Http.DeleteAsync(string.Format("/api/domain/{id}/dnssec", id));
    }
}
