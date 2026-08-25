namespace HiTechCloud.SDK

open System

type Client(?baseUrl: string, token: string option, ?timeout: int, ?maxRetries: int) =
    let httpClient = new HttpClient(
        defaultArg baseUrl "https://api.hitechcloud.vn",
        token,
        defaultArg timeout 30,
        defaultArg maxRetries 3
    )

    member val Affiliate = AffiliateResource(httpClient)
    member val AffiliatesAdvanced = AffiliatesAdvancedResource(httpClient)
    member val AiFactory = AiFactoryResource(httpClient)
    member val Auth = AuthResource(httpClient)
    member val BareMetal = BareMetalResource(httpClient)
    member val Billing = BillingResource(httpClient)
    member val Cart = CartResource(httpClient)
    member val CephS3 = CephS3Resource(httpClient)
    member val CloudGpu = CloudGpuResource(httpClient)
    member val CloudInstance = CloudInstanceResource(httpClient)
    member val CloudService = CloudServiceResource(httpClient)
    member val CloudVm = CloudVmResource(httpClient)
    member val Collocation = CollocationResource(httpClient)
    member val Contacts = ContactsResource(httpClient)
    member val Dns = DnsResource(httpClient)
    member val DnsManage = DnsManageResource(httpClient)
    member val Domains = DomainsResource(httpClient)
    member val EmailMfaV2 = EmailMfaV2Resource(httpClient)
    member val Hosting = HostingResource(httpClient)
    member val Ipam = IpamResource(httpClient)
    member val LocationV2 = LocationV2Resource(httpClient)
    member val NetworkServices = NetworkServicesResource(httpClient)
    member val Notifications = NotificationsResource(httpClient)
    member val Partner = PartnerResource(httpClient)
    member val PasskeyV2 = PasskeyV2Resource(httpClient)
    member val Pmg = PmgResource(httpClient)
    member val Proxmox = ProxmoxResource(httpClient)
    member val ProxmoxBackup = ProxmoxBackupResource(httpClient)
    member val ServiceStatus = ServiceStatusResource(httpClient)
    member val Services = ServicesResource(httpClient)
    member val Ssl = SSLResource(httpClient)
    member val Support = SupportResource(httpClient)
    member val UrlShortener = UrlShortenerResource(httpClient)
    member val Users = UsersResource(httpClient)
    member val Vcloudstack = VCloudStackResource(httpClient)
    member val Virtualizor = VirtualizorResource(httpClient)
    member val Vneidekyc = VNeIdeKycResource(httpClient)
    member val WillExpired = WillExpiredResource(httpClient)

    interface IDisposable with
        member _.Dispose() = (httpClient :> IDisposable).Dispose()
