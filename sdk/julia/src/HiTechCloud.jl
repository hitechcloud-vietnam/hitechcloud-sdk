module HiTechCloud

using HTTP
using JSON

export Client
export AffiliateResource
export AffiliatesAdvancedResource
export AiFactoryResource
export AuthResource
export BareMetalResource
export BillingResource
export CartResource
export CephS3Resource
export CloudGpuResource
export CloudInstanceResource
export CloudServiceResource
export CloudVmResource
export CollocationResource
export ContactsResource
export DnsResource
export DnsManageResource
export DomainsResource
export EmailMfaV2Resource
export HostingResource
export IpamResource
export LocationV2Resource
export NetworkServicesResource
export NotificationsResource
export PartnerResource
export PasskeyV2Resource
export PmgResource
export ProxmoxResource
export ProxmoxBackupResource
export ServiceStatusResource
export ServicesResource
export SSLResource
export SupportResource
export UrlShortenerResource
export UsersResource
export VCloudStackResource
export VirtualizorResource
export VNeIdeKycResource
export WillExpiredResource

include("http_client.jl")
include("affiliate.jl")
include("affiliates_advanced.jl")
include("ai_factory.jl")
include("auth.jl")
include("bare_metal.jl")
include("billing.jl")
include("cart.jl")
include("ceph_s3.jl")
include("cloud_gpu.jl")
include("cloud_instance.jl")
include("cloud_service.jl")
include("cloud_vm.jl")
include("collocation.jl")
include("contacts.jl")
include("dns.jl")
include("dns_manage.jl")
include("domains.jl")
include("email_mfa_v2.jl")
include("hosting.jl")
include("ipam.jl")
include("location_v2.jl")
include("network_services.jl")
include("notifications.jl")
include("partner.jl")
include("passkey_v2.jl")
include("pmg.jl")
include("proxmox.jl")
include("proxmox_backup.jl")
include("service_status.jl")
include("services.jl")
include("ssl.jl")
include("support.jl")
include("url_shortener.jl")
include("users.jl")
include("vcloudstack.jl")
include("virtualizor.jl")
include("vneidekyc.jl")
include("will_expired.jl")
include("client.jl")

end # module
