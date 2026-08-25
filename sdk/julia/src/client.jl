# HiTechCloud Client
struct Client
    http::HttpClient
    affiliate::AffiliateResource
    affiliatesAdvanced::AffiliatesAdvancedResource
    aiFactory::AiFactoryResource
    auth::AuthResource
    bareMetal::BareMetalResource
    billing::BillingResource
    cart::CartResource
    cephS3::CephS3Resource
    cloudGpu::CloudGpuResource
    cloudInstance::CloudInstanceResource
    cloudService::CloudServiceResource
    cloudVm::CloudVmResource
    collocation::CollocationResource
    contacts::ContactsResource
    dns::DnsResource
    dnsManage::DnsManageResource
    domains::DomainsResource
    emailMfaV2::EmailMfaV2Resource
    hosting::HostingResource
    ipam::IpamResource
    locationV2::LocationV2Resource
    networkServices::NetworkServicesResource
    notifications::NotificationsResource
    partner::PartnerResource
    passkeyV2::PasskeyV2Resource
    pmg::PmgResource
    proxmox::ProxmoxResource
    proxmoxBackup::ProxmoxBackupResource
    serviceStatus::ServiceStatusResource
    services::ServicesResource
    ssl::SSLResource
    support::SupportResource
    urlShortener::UrlShortenerResource
    users::UsersResource
    vcloudstack::VCloudStackResource
    virtualizor::VirtualizorResource
    vneidekyc::VNeIdeKycResource
    willExpired::WillExpiredResource
end

function Client(;
    base_url::String = "https://api.hitechcloud.vn",
    token::Union{String,Nothing} = nothing,
    timeout::Int = 30,
    max_retries::Int = 3
)
    http = HttpClient(; base_url = base_url, token = token timeout = timeout, max_retries = max_retries)
    Client(
        http,
        affiliate = AffiliateResource(http)
        affiliatesAdvanced = AffiliatesAdvancedResource(http)
        aiFactory = AiFactoryResource(http)
        auth = AuthResource(http)
        bareMetal = BareMetalResource(http)
        billing = BillingResource(http)
        cart = CartResource(http)
        cephS3 = CephS3Resource(http)
        cloudGpu = CloudGpuResource(http)
        cloudInstance = CloudInstanceResource(http)
        cloudService = CloudServiceResource(http)
        cloudVm = CloudVmResource(http)
        collocation = CollocationResource(http)
        contacts = ContactsResource(http)
        dns = DnsResource(http)
        dnsManage = DnsManageResource(http)
        domains = DomainsResource(http)
        emailMfaV2 = EmailMfaV2Resource(http)
        hosting = HostingResource(http)
        ipam = IpamResource(http)
        locationV2 = LocationV2Resource(http)
        networkServices = NetworkServicesResource(http)
        notifications = NotificationsResource(http)
        partner = PartnerResource(http)
        passkeyV2 = PasskeyV2Resource(http)
        pmg = PmgResource(http)
        proxmox = ProxmoxResource(http)
        proxmoxBackup = ProxmoxBackupResource(http)
        serviceStatus = ServiceStatusResource(http)
        services = ServicesResource(http)
        ssl = SSLResource(http)
        support = SupportResource(http)
        urlShortener = UrlShortenerResource(http)
        users = UsersResource(http)
        vcloudstack = VCloudStackResource(http)
        virtualizor = VirtualizorResource(http)
        vneidekyc = VNeIdeKycResource(http)
        willExpired = WillExpiredResource(http)
    )
end
