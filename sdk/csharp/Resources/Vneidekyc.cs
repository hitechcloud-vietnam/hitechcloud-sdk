using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Vneidekyc : BaseResource
{
    public Vneidekyc(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> EkycSessionAsync()
    {
        return await Http.GetAsync("/api/vneidekyc/ekyc/session");
    }

    public async Task<Dictionary<string, object?>> GetSessionAsync(string sessionHash)
    {
        return await Http.GetAsync(string.Format("/api/vneidekyc/ekyc/session/{sessionHash}", sessionHash));
    }

    public async Task<Dictionary<string, object?>> ListSessionsAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/vneidekyc/ekyc/list/{clientId}", clientId));
    }

    public async Task<Dictionary<string, object?>> UploadAsync(string sessionHash, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/vneidekyc/ekyc/{sessionHash}/upload", sessionHash), data);
    }

    public async Task<Dictionary<string, object?>> SubmitAsync(string sessionHash)
    {
        return await Http.PostAsync(string.Format("/api/vneidekyc/ekyc/{sessionHash}/submit", sessionHash), null);
    }

    public async Task<Dictionary<string, object?>> CancelAsync(string sessionHash)
    {
        return await Http.PostAsync(string.Format("/api/vneidekyc/ekyc/{sessionHash}/cancel", sessionHash), null);
    }

    public async Task<Dictionary<string, object?>> AcceptAsync(string sessionHash)
    {
        return await Http.PostAsync(string.Format("/api/vneidekyc/ekyc/{sessionHash}/accept", sessionHash), null);
    }

    public async Task<Dictionary<string, object?>> RejectAsync(string sessionHash)
    {
        return await Http.PostAsync(string.Format("/api/vneidekyc/ekyc/{sessionHash}/reject", sessionHash), null);
    }

    public async Task<Dictionary<string, object?>> OrgLookupAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/vneidekyc/org/lookup", data);
    }

    public async Task<Dictionary<string, object?>> OrgStartAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/vneidekyc/org/start", data);
    }

    public async Task<Dictionary<string, object?>> OrgSessionAsync(string orgHash)
    {
        return await Http.GetAsync(string.Format("/api/vneidekyc/org/{orgHash}", orgHash));
    }

    public async Task<Dictionary<string, object?>> OrgAcceptAsync(string orgHash)
    {
        return await Http.PostAsync(string.Format("/api/vneidekyc/org/{orgHash}/accept", orgHash), null);
    }

    public async Task<Dictionary<string, object?>> OrgRejectAsync(string orgHash)
    {
        return await Http.PostAsync(string.Format("/api/vneidekyc/org/{orgHash}/reject", orgHash), null);
    }

    public async Task<Dictionary<string, object?>> PdfUploadAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/vneidekyc/pdf/upload", data);
    }

    public async Task<Dictionary<string, object?>> PdfStatusAsync(string pdfHash)
    {
        return await Http.GetAsync(string.Format("/api/vneidekyc/pdf/{pdfHash}", pdfHash));
    }

    public async Task<Dictionary<string, object?>> ClientStatusAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/vneidekyc/client/{clientId}/status", clientId));
    }
}
