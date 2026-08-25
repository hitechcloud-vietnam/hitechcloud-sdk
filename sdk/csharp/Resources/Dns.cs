namespace HiTechCloud.SDK.Resources;

public class Dns : BaseResource
{
    public Dns(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> DnsServicesAsync()
    {
        return await Http.GetAsync("/api/dns");
    }

    public async Task<Dictionary<string, object?>> CreateZoneAsync(int serviceId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{serviceId}/dns", serviceId), data);
    }

    public async Task<Dictionary<string, object?>> ZonesAsync(int serviceId)
    {
        return await Http.GetAsync(string.Format("/api/service/{serviceId}/dns", serviceId));
    }

    public async Task<Dictionary<string, object?>> ZoneAsync(int serviceId, int zoneId)
    {
        return await Http.GetAsync(string.Format("/api/service/{serviceId}/dns/{zoneId}", serviceId, zoneId));
    }

    public async Task<Dictionary<string, object?>> DeleteZoneAsync(int serviceId, int zoneId)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{serviceId}/dns/{zoneId}", serviceId, zoneId));
    }

    public async Task<Dictionary<string, object?>> CreateRecordAsync(int serviceId, int zoneId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{serviceId}/dns/{zoneId}/records", serviceId, zoneId), data);
    }

    public async Task<Dictionary<string, object?>> UpdateRecordAsync(int serviceId, int zoneId, int recordId, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{serviceId}/dns/{zoneId}/records/{recordId}", serviceId, zoneId, recordId), data);
    }

    public async Task<Dictionary<string, object?>> DeleteRecordAsync(int serviceId, int zoneId, int recordId)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{serviceId}/dns/{zoneId}/records/{recordId}", serviceId, zoneId, recordId));
    }
}
