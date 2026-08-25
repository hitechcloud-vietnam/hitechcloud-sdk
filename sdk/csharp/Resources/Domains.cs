using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Domains : BaseResource
{
    public Domains(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> WhoisAsync(string domain)
    {
        return await Http.GetAsync(string.Format("/api/whois/{domain}", domain));
    }

    public async Task<Dictionary<string, object?>> DomainsAsync()
    {
        return await Http.GetAsync("/api/domain");
    }

    public async Task<Dictionary<string, object?>> DomainAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}", id));
    }

    public async Task<Dictionary<string, object?>> DomainByNameAsync(string name)
    {
        return await Http.GetAsync(string.Format("/api/domain/name/{name}", name));
    }

    public async Task<Dictionary<string, object?>> NameserversAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/ns", id));
    }

    public async Task<Dictionary<string, object?>> UpdateNameserversAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/domain/{id}/ns", id), data);
    }

    public async Task<Dictionary<string, object?>> EppCodeAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/epp", id));
    }

    public async Task<Dictionary<string, object?>> SyncDomainAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/sync", id));
    }

    public async Task<Dictionary<string, object?>> ReglockAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/reglock", id));
    }

    public async Task<Dictionary<string, object?>> UpdateReglockAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/domain/{id}/reglock", id), data);
    }

    public async Task<Dictionary<string, object?>> IdProtectionAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/domain/{id}/idprotection", id), data);
    }

    public async Task<Dictionary<string, object?>> DomainContactsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/contact", id));
    }

    public async Task<Dictionary<string, object?>> UpdateContactsAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/domain/{id}/contact", id), data);
    }

    public async Task<Dictionary<string, object?>> EmailForwardingAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/email/forwarding", id));
    }

    public async Task<Dictionary<string, object?>> UpdateEmailForwardingAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/domain/{id}/email/forwarding", id), data);
    }

    public async Task<Dictionary<string, object?>> AvailabilityAsync(string domain)
    {
        return await Http.GetAsync(string.Format("/api/domain/availability/{domain}", domain));
    }

    public async Task<Dictionary<string, object?>> OrdersAsync()
    {
        return await Http.GetAsync("/api/domain/order");
    }

    public async Task<Dictionary<string, object?>> CreateOrderAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/domain/order", data);
    }

    public async Task<Dictionary<string, object?>> OrderFormAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/order/{id}/form", id));
    }

    public async Task<Dictionary<string, object?>> RenewDomainAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/domain/{id}/renew", id), data);
    }

    public async Task<Dictionary<string, object?>> WhoisLookupAsync(string domain)
    {
        return await Http.GetAsync(string.Format("/api/whoislookup/{domain}", domain));
    }

    public async Task<Dictionary<string, object?>> DocumentsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/domain/{id}/documents", id));
    }
}
