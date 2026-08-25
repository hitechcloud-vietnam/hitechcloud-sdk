package vn.hitechcloud.sdk

class Client(
    baseUrl: String = "https://api.hitechcloud.vn",
    token: String? = null,
    timeout: Long = 30,
    maxRetries: Int = 3
) {
    private val httpClient = HttpClient(baseUrl, token, timeout, maxRetries)

    val affiliate = AffiliateResource(httpClient)
    val affiliatesAdvanced = AffiliatesAdvancedResource(httpClient)
    val aiFactory = AiFactoryResource(httpClient)
    val auth = AuthResource(httpClient)
    val bareMetal = BareMetalResource(httpClient)
    val billing = BillingResource(httpClient)
    val cart = CartResource(httpClient)
    val cephS3 = CephS3Resource(httpClient)
    val cloudGpu = CloudGpuResource(httpClient)
    val cloudInstance = CloudInstanceResource(httpClient)
    val cloudService = CloudServiceResource(httpClient)
    val cloudVm = CloudVmResource(httpClient)
    val collocation = CollocationResource(httpClient)
    val contacts = ContactsResource(httpClient)
    val dns = DnsResource(httpClient)
    val dnsManage = DnsManageResource(httpClient)
    val domains = DomainsResource(httpClient)
    val emailMfaV2 = EmailMfaV2Resource(httpClient)
    val hosting = HostingResource(httpClient)
    val ipam = IpamResource(httpClient)
    val locationV2 = LocationV2Resource(httpClient)
    val networkServices = NetworkServicesResource(httpClient)
    val notifications = NotificationsResource(httpClient)
    val partner = PartnerResource(httpClient)
    val passkeyV2 = PasskeyV2Resource(httpClient)
    val pmg = PmgResource(httpClient)
    val proxmox = ProxmoxResource(httpClient)
    val proxmoxBackup = ProxmoxBackupResource(httpClient)
    val serviceStatus = ServiceStatusResource(httpClient)
    val services = ServicesResource(httpClient)
    val ssl = SSLResource(httpClient)
    val support = SupportResource(httpClient)
    val urlShortener = UrlShortenerResource(httpClient)
    val users = UsersResource(httpClient)
    val vcloudstack = VCloudStackResource(httpClient)
    val virtualizor = VirtualizorResource(httpClient)
    val vneidekyc = VNeIdeKycResource(httpClient)
    val willExpired = WillExpiredResource(httpClient)

    fun close() { httpClient.close() }
}
