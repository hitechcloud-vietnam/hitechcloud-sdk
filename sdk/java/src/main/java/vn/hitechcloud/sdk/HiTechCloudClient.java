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
    private final Services services;
    private final Domains domains;
    private final DnsManage dnsManage;
    private final Dns dns;
    private final Ssl ssl;
    private final Billing billing;
    private final Support support;
    private final Contacts contacts;
    private final Cart cart;
    private final Notifications notifications;
    private final Affiliate affiliate;
    private final CloudGpu cloudGpu;
    private final Virtualizor virtualizor;

    public HiTechCloudClient(String token) {
        this(token, PRODUCTION_URL, 30, 3);
    }

    public HiTechCloudClient(String token, String baseUrl, int timeout, int maxRetries) {
        this.httpClient = new HttpClient(baseUrl, timeout, maxRetries);
        if (token != null) this.httpClient.setToken(token);

        this.auth = new Auth(httpClient);
        this.users = new Users(httpClient);
        this.services = new Services(httpClient);
        this.domains = new Domains(httpClient);
        this.dnsManage = new DnsManage(httpClient);
        this.dns = new Dns(httpClient);
        this.ssl = new Ssl(httpClient);
        this.billing = new Billing(httpClient);
        this.support = new Support(httpClient);
        this.contacts = new Contacts(httpClient);
        this.cart = new Cart(httpClient);
        this.notifications = new Notifications(httpClient);
        this.affiliate = new Affiliate(httpClient);
        this.cloudGpu = new CloudGpu(httpClient);
        this.virtualizor = new Virtualizor(httpClient);
    }

    public Map<String, Object> login(String email, String password) throws HiTechCloudException {
        Map<String, Object> result = auth.login(email, password);
        if (result != null && result.containsKey("token")) {
            httpClient.setToken(result.get("token").toString());
        }
        return result;
    }

    public Map<String, Object> logout() throws HiTechCloudException {
        Map<String, Object> result = auth.logout();
        httpClient.clearToken();
        return result;
    }

    public Auth auth() { return auth; }
    public Users users() { return users; }
    public Services services() { return services; }
    public Domains domains() { return domains; }
    public DnsManage dnsManage() { return dnsManage; }
    public Dns dns() { return dns; }
    public Ssl ssl() { return ssl; }
    public Billing billing() { return billing; }
    public Support support() { return support; }
    public Contacts contacts() { return contacts; }
    public Cart cart() { return cart; }
    public Notifications notifications() { return notifications; }
    public Affiliate affiliate() { return affiliate; }
    public CloudGpu cloudGpu() { return cloudGpu; }
    public Virtualizor virtualizor() { return virtualizor; }
}
