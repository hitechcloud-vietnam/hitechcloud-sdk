"use strict";

const { HTTPClient } = require("./http_client");
const { AuthResource } = require("./resources/auth");
const { UsersResource } = require("./resources/users");
const { ServicesResource } = require("./resources/services");
const { DomainsResource } = require("./resources/domains");
const { DnsManageResource } = require("./resources/dns_manage");
const { DnsResource } = require("./resources/dns");
const { SSLResource } = require("./resources/ssl");
const { BillingResource } = require("./resources/billing");
const { SupportResource } = require("./resources/support");
const { ContactsResource } = require("./resources/contacts");
const { CartResource } = require("./resources/cart");
const { NotificationsResource } = require("./resources/notifications");
const { AffiliateResource } = require("./resources/affiliate");
const { CloudGpuResource } = require("./resources/cloud_gpu");
const { VirtualizorResource } = require("./resources/virtualizor");
const { CloudServiceResource } = require("./resources/cloud_service");
const { NetworkServicesResource } = require("./resources/network_services");
const { ServiceStatusResource } = require("./resources/service_status");
const { BareMetalResource } = require("./resources/bare_metal");
const { CollocationResource } = require("./resources/collocation");
const { VCloudStackResource } = require("./resources/vcloudstack");
const { HostingResource } = require("./resources/hosting");
const { LocationV2Resource } = require("./resources/location_v2");
const { CloudInstanceResource } = require("./resources/cloud_instance");
const { CloudVmResource } = require("./resources/cloud_vm");
const { AffiliatesAdvancedResource } = require("./resources/affiliates_advanced");
const { AiFactoryResource } = require("./resources/ai_factory");
const { PasskeyV2Resource } = require("./resources/passkey_v2");
const { EmailMfaV2Resource } = require("./resources/email_mfa_v2");
const { VNeIdeKycResource } = require("./resources/vneidekyc");
const { WillExpiredResource } = require("./resources/will_expired");
const { UrlShortenerResource } = require("./resources/url_shortener");
const { ProxmoxBackupResource } = require("./resources/proxmox_backup");
const { CephS3Resource } = require("./resources/ceph_s3");
const { PmgResource } = require("./resources/pmg");
const { ProxmoxResource } = require("./resources/proxmox");
const { IpamResource } = require("./resources/ipam");
const { PartnerResource } = require("./resources/partner");

const PRODUCTION_URL = "https://api.hitechcloud.vn";
const OTE_URL = "https://ote.hitechcloud.vn";

class HiTechCloud {
  constructor(options = {}) {
    const {
      baseUrl = PRODUCTION_URL,
      username,
      password,
      token,
      timeout = 30000,
      maxRetries = 3,
    } = options;

    this._http = new HTTPClient(baseUrl, timeout, maxRetries);

    if (token) {
      this._http.setToken(token);
    }

    // Initialize resource groups
    this.auth = new AuthResource(this._http);
    this.users = new UsersResource(this._http);
    this.services = new ServicesResource(this._http);
    this.domains = new DomainsResource(this._http);
    this.dnsManage = new DnsManageResource(this._http);
    this.dns = new DnsResource(this._http);
    this.ssl = new SSLResource(this._http);
    this.billing = new BillingResource(this._http);
    this.support = new SupportResource(this._http);
    this.contacts = new ContactsResource(this._http);
    this.cart = new CartResource(this._http);
    this.notifications = new NotificationsResource(this._http);
    this.affiliate = new AffiliateResource(this._http);
    this.cloudGpu = new CloudGpuResource(this._http);
    this.virtualizor = new VirtualizorResource(this._http);
    this.cloudService = new CloudServiceResource(this._http);
    this.networkServices = new NetworkServicesResource(this._http);
    this.serviceStatus = new ServiceStatusResource(this._http);
    this.bareMetal = new BareMetalResource(this._http);
    this.collocation = new CollocationResource(this._http);
    this.vcloudstack = new VCloudStackResource(this._http);
    this.hosting = new HostingResource(this._http);
    this.locationV2 = new LocationV2Resource(this._http);
    this.cloudInstance = new CloudInstanceResource(this._http);
    this.cloudVm = new CloudVmResource(this._http);
    this.affiliatesAdvanced = new AffiliatesAdvancedResource(this._http);
    this.aiFactory = new AiFactoryResource(this._http);
    this.passkeyV2 = new PasskeyV2Resource(this._http);
    this.emailMfaV2 = new EmailMfaV2Resource(this._http);
    this.vneidekyc = new VNeIdeKycResource(this._http);
    this.willExpired = new WillExpiredResource(this._http);
    this.urlShortener = new UrlShortenerResource(this._http);
    this.proxmoxBackup = new ProxmoxBackupResource(this._http);
    this.cephS3 = new CephS3Resource(this._http);
    this.pmg = new PmgResource(this._http);
    this.proxmox = new ProxmoxResource(this._http);
    this.ipam = new IpamResource(this._http);
    this.partner = new PartnerResource(this._http);

    // Auto-login if credentials provided
    if (username && password && !token) {
      this._loginPromise = this.login(username, password);
    }
  }

  async login(username, password) {
    const result = await this.auth.login(username, password);
    if (result.token) {
      this._http.setToken(result.token);
    }
    return result;
  }

  async logout() {
    const result = await this.auth.logout();
    this._http.clearToken();
    return result;
  }
}

module.exports = { HiTechCloud, PRODUCTION_URL, OTE_URL };
