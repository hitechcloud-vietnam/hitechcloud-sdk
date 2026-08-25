namespace HiTechCloud.SDK;

public class HiTechCloudClient
{
    public const string ProductionUrl = "https://api.hitechcloud.vn";
    public const string OteUrl = "https://ote.hitechcloud.vn";
    public const string VERSION = "1.0.0";

    private readonly HttpClientWrapper _http;

    public Resources.Auth Auth { get; }
    public Resources.Users Users { get; }
    public Resources.Affiliate Affiliate { get; }
    public Resources.Billing Billing { get; }
    public Resources.Support Support { get; }
    public Resources.Contacts Contacts { get; }
    public Resources.Domains Domains { get; }
    public Resources.DnsManage DnsManage { get; }
    public Resources.Ssl Ssl { get; }
    public Resources.Services Services { get; }
    public Resources.Cart Cart { get; }
    public Resources.Dns Dns { get; }
    public Resources.Notifications Notifications { get; }
    public Resources.Virtualizor Virtualizor { get; }
    public Resources.CloudGpu CloudGpu { get; }
    public Resources.CloudService CloudService { get; }
    public Resources.NetworkServices NetworkServices { get; }
    public Resources.ServiceStatus ServiceStatus { get; }
    public Resources.BareMetal BareMetal { get; }
    public Resources.Collocation Collocation { get; }
    public Resources.Vcloudstack Vcloudstack { get; }
    public Resources.Hosting Hosting { get; }
    public Resources.LocationV2 LocationV2 { get; }
    public Resources.CloudInstance CloudInstance { get; }
    public Resources.CloudVm CloudVm { get; }
    public Resources.AffiliatesAdvanced AffiliatesAdvanced { get; }
    public Resources.AiFactory AiFactory { get; }
    public Resources.PasskeyV2 PasskeyV2 { get; }
    public Resources.EmailMfaV2 EmailMfaV2 { get; }
    public Resources.Vneidekyc Vneidekyc { get; }
    public Resources.WillExpired WillExpired { get; }
    public Resources.UrlShortener UrlShortener { get; }
    public Resources.ProxmoxBackup ProxmoxBackup { get; }
    public Resources.CephS3 CephS3 { get; }
    public Resources.Pmg Pmg { get; }
    public Resources.Proxmox Proxmox { get; }
    public Resources.Ipam Ipam { get; }
    public Resources.Partner Partner { get; }

    public HiTechCloudClient(string? token = null, string? baseUrl = null,
        bool sandbox = false, int timeout = 30, int maxRetries = 3)
    {
        var url = sandbox ? OteUrl : (baseUrl ?? ProductionUrl);
        _http = new HttpClientWrapper(url, timeout, maxRetries);

        if (token != null) _http.SetToken(token);

        Auth = new Resources.Auth(_http);
        Users = new Resources.Users(_http);
        Affiliate = new Resources.Affiliate(_http);
        Billing = new Resources.Billing(_http);
        Support = new Resources.Support(_http);
        Contacts = new Resources.Contacts(_http);
        Domains = new Resources.Domains(_http);
        DnsManage = new Resources.DnsManage(_http);
        Ssl = new Resources.Ssl(_http);
        Services = new Resources.Services(_http);
        Cart = new Resources.Cart(_http);
        Dns = new Resources.Dns(_http);
        Notifications = new Resources.Notifications(_http);
        Virtualizor = new Resources.Virtualizor(_http);
        CloudGpu = new Resources.CloudGpu(_http);
        CloudService = new Resources.CloudService(_http);
        NetworkServices = new Resources.NetworkServices(_http);
        ServiceStatus = new Resources.ServiceStatus(_http);
        BareMetal = new Resources.BareMetal(_http);
        Collocation = new Resources.Collocation(_http);
        Vcloudstack = new Resources.Vcloudstack(_http);
        Hosting = new Resources.Hosting(_http);
        LocationV2 = new Resources.LocationV2(_http);
        CloudInstance = new Resources.CloudInstance(_http);
        CloudVm = new Resources.CloudVm(_http);
        AffiliatesAdvanced = new Resources.AffiliatesAdvanced(_http);
        AiFactory = new Resources.AiFactory(_http);
        PasskeyV2 = new Resources.PasskeyV2(_http);
        EmailMfaV2 = new Resources.EmailMfaV2(_http);
        Vneidekyc = new Resources.Vneidekyc(_http);
        WillExpired = new Resources.WillExpired(_http);
        UrlShortener = new Resources.UrlShortener(_http);
        ProxmoxBackup = new Resources.ProxmoxBackup(_http);
        CephS3 = new Resources.CephS3(_http);
        Pmg = new Resources.Pmg(_http);
        Proxmox = new Resources.Proxmox(_http);
        Ipam = new Resources.Ipam(_http);
        Partner = new Resources.Partner(_http);
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
