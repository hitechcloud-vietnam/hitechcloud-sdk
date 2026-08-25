package vn.hitechcloud.sdk;

import vn.hitechcloud.sdk.resources.*;

import java.util.Map;

public class HiTechCloudClient {
    public static final String PRODUCTION_URL = "https://api.hitechcloud.vn";
    public static final String OTE_URL = "https://ote.hitechcloud.vn";
    public static final String VERSION = "1.0.0";

    private final HttpClient httpClient;
    private final Auth auth;
    private final Users users;
    private final Affiliate affiliate;
    private final Billing billing;
    private final Support support;
    private final Contacts contacts;
    private final Domains domains;
    private final DnsManage dnsManage;
    private final Ssl ssl;
    private final Services services;
    private final Cart cart;
    private final Dns dns;
    private final Notifications notifications;
    private final Virtualizor virtualizor;
    private final CloudGpu cloudGpu;
    private final CloudService cloudService;
    private final NetworkServices networkServices;
    private final ServiceStatus serviceStatus;
    private final BareMetal bareMetal;
    private final Collocation collocation;
    private final Vcloudstack vcloudstack;
    private final Hosting hosting;
    private final LocationV2 locationV2;
    private final CloudInstance cloudInstance;
    private final CloudVm cloudVm;
    private final AffiliatesAdvanced affiliatesAdvanced;
    private final AiFactory aiFactory;
    private final PasskeyV2 passkeyV2;
    private final EmailMfaV2 emailMfaV2;
    private final Vneidekyc vneidekyc;
    private final WillExpired willExpired;
    private final UrlShortener urlShortener;
    private final ProxmoxBackup proxmoxBackup;
    private final CephS3 cephS3;
    private final Pmg pmg;
    private final Proxmox proxmox;
    private final Ipam ipam;
    private final Partner partner;

    public HiTechCloudClient(String token) {
        this(token, PRODUCTION_URL, 30, 3);
    }

    public HiTechCloudClient(String token, String baseUrl, int timeout, int maxRetries) {
        this.httpClient = new HttpClient(baseUrl, timeout, maxRetries);
        if (token != null) this.httpClient.setToken(token);

        this.auth = new Auth(httpClient);
        this.users = new Users(httpClient);
        this.affiliate = new Affiliate(httpClient);
        this.billing = new Billing(httpClient);
        this.support = new Support(httpClient);
        this.contacts = new Contacts(httpClient);
        this.domains = new Domains(httpClient);
        this.dnsManage = new DnsManage(httpClient);
        this.ssl = new Ssl(httpClient);
        this.services = new Services(httpClient);
        this.cart = new Cart(httpClient);
        this.dns = new Dns(httpClient);
        this.notifications = new Notifications(httpClient);
        this.virtualizor = new Virtualizor(httpClient);
        this.cloudGpu = new CloudGpu(httpClient);
        this.cloudService = new CloudService(httpClient);
        this.networkServices = new NetworkServices(httpClient);
        this.serviceStatus = new ServiceStatus(httpClient);
        this.bareMetal = new BareMetal(httpClient);
        this.collocation = new Collocation(httpClient);
        this.vcloudstack = new Vcloudstack(httpClient);
        this.hosting = new Hosting(httpClient);
        this.locationV2 = new LocationV2(httpClient);
        this.cloudInstance = new CloudInstance(httpClient);
        this.cloudVm = new CloudVm(httpClient);
        this.affiliatesAdvanced = new AffiliatesAdvanced(httpClient);
        this.aiFactory = new AiFactory(httpClient);
        this.passkeyV2 = new PasskeyV2(httpClient);
        this.emailMfaV2 = new EmailMfaV2(httpClient);
        this.vneidekyc = new Vneidekyc(httpClient);
        this.willExpired = new WillExpired(httpClient);
        this.urlShortener = new UrlShortener(httpClient);
        this.proxmoxBackup = new ProxmoxBackup(httpClient);
        this.cephS3 = new CephS3(httpClient);
        this.pmg = new Pmg(httpClient);
        this.proxmox = new Proxmox(httpClient);
        this.ipam = new Ipam(httpClient);
        this.partner = new Partner(httpClient);
    }

    public Map<String, Object> login(String email, String password) throws Exception {
        Map<String, Object> result = auth.login(email, password);
        if (result != null && result.containsKey("token")) {
            httpClient.setToken(result.get("token").toString());
        }
        return result;
    }

    public Map<String, Object> logout() throws Exception {
        Map<String, Object> result = auth.logout();
        httpClient.clearToken();
        return result;
    }

    public Auth auth() { return auth; }
    public Users users() { return users; }
    public Affiliate affiliate() { return affiliate; }
    public Billing billing() { return billing; }
    public Support support() { return support; }
    public Contacts contacts() { return contacts; }
    public Domains domains() { return domains; }
    public DnsManage dnsManage() { return dnsManage; }
    public Ssl ssl() { return ssl; }
    public Services services() { return services; }
    public Cart cart() { return cart; }
    public Dns dns() { return dns; }
    public Notifications notifications() { return notifications; }
    public Virtualizor virtualizor() { return virtualizor; }
    public CloudGpu cloudGpu() { return cloudGpu; }
    public CloudService cloudService() { return cloudService; }
    public NetworkServices networkServices() { return networkServices; }
    public ServiceStatus serviceStatus() { return serviceStatus; }
    public BareMetal bareMetal() { return bareMetal; }
    public Collocation collocation() { return collocation; }
    public Vcloudstack vcloudstack() { return vcloudstack; }
    public Hosting hosting() { return hosting; }
    public LocationV2 locationV2() { return locationV2; }
    public CloudInstance cloudInstance() { return cloudInstance; }
    public CloudVm cloudVm() { return cloudVm; }
    public AffiliatesAdvanced affiliatesAdvanced() { return affiliatesAdvanced; }
    public AiFactory aiFactory() { return aiFactory; }
    public PasskeyV2 passkeyV2() { return passkeyV2; }
    public EmailMfaV2 emailMfaV2() { return emailMfaV2; }
    public Vneidekyc vneidekyc() { return vneidekyc; }
    public WillExpired willExpired() { return willExpired; }
    public UrlShortener urlShortener() { return urlShortener; }
    public ProxmoxBackup proxmoxBackup() { return proxmoxBackup; }
    public CephS3 cephS3() { return cephS3; }
    public Pmg pmg() { return pmg; }
    public Proxmox proxmox() { return proxmox; }
    public Ipam ipam() { return ipam; }
    public Partner partner() { return partner; }
}
