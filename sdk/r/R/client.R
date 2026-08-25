#' HiTechCloud Client
#' @param base_url API base URL
#' @param token = NULL
#' @param timeout Request timeout
#' @param max_retries Max retries
#' @return Client object
#' @export
Client <- function(base_url = "https://api.hitechcloud.vn", token = NULL, timeout = 30, max_retries = 3) {
  http <- HttpClient(base_url, token, timeout, max_retries)
  env <- new.env(parent = emptyenv())
  env$http <- http
  env$affiliate <- AffiliateResource(http)
  env$affiliatesAdvanced <- AffiliatesAdvancedResource(http)
  env$aiFactory <- AiFactoryResource(http)
  env$auth <- AuthResource(http)
  env$bareMetal <- BareMetalResource(http)
  env$billing <- BillingResource(http)
  env$cart <- CartResource(http)
  env$cephS3 <- CephS3Resource(http)
  env$cloudGpu <- CloudGpuResource(http)
  env$cloudInstance <- CloudInstanceResource(http)
  env$cloudService <- CloudServiceResource(http)
  env$cloudVm <- CloudVmResource(http)
  env$collocation <- CollocationResource(http)
  env$contacts <- ContactsResource(http)
  env$dns <- DnsResource(http)
  env$dnsManage <- DnsManageResource(http)
  env$domains <- DomainsResource(http)
  env$emailMfaV2 <- EmailMfaV2Resource(http)
  env$hosting <- HostingResource(http)
  env$ipam <- IpamResource(http)
  env$locationV2 <- LocationV2Resource(http)
  env$networkServices <- NetworkServicesResource(http)
  env$notifications <- NotificationsResource(http)
  env$partner <- PartnerResource(http)
  env$passkeyV2 <- PasskeyV2Resource(http)
  env$pmg <- PmgResource(http)
  env$proxmox <- ProxmoxResource(http)
  env$proxmoxBackup <- ProxmoxBackupResource(http)
  env$serviceStatus <- ServiceStatusResource(http)
  env$services <- ServicesResource(http)
  env$ssl <- SSLResource(http)
  env$support <- SupportResource(http)
  env$urlShortener <- UrlShortenerResource(http)
  env$users <- UsersResource(http)
  env$vcloudstack <- VCloudStackResource(http)
  env$virtualizor <- VirtualizorResource(http)
  env$vneidekyc <- VNeIdeKycResource(http)
  env$willExpired <- WillExpiredResource(http)
  class(env) <- "Client"
  env
}
