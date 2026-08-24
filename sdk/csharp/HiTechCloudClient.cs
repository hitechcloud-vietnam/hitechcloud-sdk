namespace HiTechCloud.SDK;

public class HiTechCloudClient
{
    public const string ProductionUrl = "https://api.hitechcloud.vn";
    public const string OteUrl = "https://ote.hitechcloud.vn";
    public const string VERSION = "1.0.0";

    private readonly HttpClientWrapper _http;

    public Resources.Auth Auth { get; }
    public Resources.Users Users { get; }
    public Resources.Services Services { get; }
    public Resources.Domains Domains { get; }
    public Resources.DnsManage DnsManage { get; }
    public Resources.Dns Dns { get; }
    public Resources.Ssl Ssl { get; }
    public Resources.Billing Billing { get; }
    public Resources.Support Support { get; }
    public Resources.Contacts Contacts { get; }
    public Resources.Cart Cart { get; }
    public Resources.Notifications Notifications { get; }
    public Resources.Affiliate Affiliate { get; }
    public Resources.CloudGpu CloudGpu { get; }
    public Resources.Virtualizor Virtualizor { get; }

    public HiTechCloudClient(string? token = null, string? baseUrl = null,
        bool sandbox = false, int timeout = 30, int maxRetries = 3)
    {
        var url = sandbox ? OteUrl : (baseUrl ?? ProductionUrl);
        _http = new HttpClientWrapper(url, timeout, maxRetries);

        if (token != null) _http.SetToken(token);

        Auth = new Resources.Auth(_http);
        Users = new Resources.Users(_http);
        Services = new Resources.Services(_http);
        Domains = new Resources.Domains(_http);
        DnsManage = new Resources.DnsManage(_http);
        Dns = new Resources.Dns(_http);
        Ssl = new Resources.Ssl(_http);
        Billing = new Resources.Billing(_http);
        Support = new Resources.Support(_http);
        Contacts = new Resources.Contacts(_http);
        Cart = new Resources.Cart(_http);
        Notifications = new Resources.Notifications(_http);
        Affiliate = new Resources.Affiliate(_http);
        CloudGpu = new Resources.CloudGpu(_http);
        Virtualizor = new Resources.Virtualizor(_http);
    }

    public async Task<Dictionary<string, object?>> LoginAsync(string email, string password)
    {
        var result = await Auth.LoginAsync(email, password);
        if (result.ContainsKey("token"))
            _http.SetToken(result["token"]?.ToString() ?? "");
        return result;
    }

    public async Task<Dictionary<string, object?>> LogoutAsync()
    {
        var result = await Auth.LogoutAsync();
        _http.ClearToken();
        return result;
    }
}
