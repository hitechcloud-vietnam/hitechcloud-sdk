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

const PRODUCTION_URL = "https://api.hitechcloud.vn";
const OTE_URL = "https://ote.hitechcloud.vn";

class HiTechCloud {
  /**
   * HiTechCloud UserAPI Client
   *
   * @param {Object} options
   * @param {string} options.baseUrl - API base URL
   * @param {string} options.username - Email for auto-login
   * @param {string} options.password - Password for auto-login
   * @param {string} options.token - Existing auth token
   * @param {number} options.timeout - Request timeout in ms (default: 30000)
   * @param {number} options.maxRetries - Max retry attempts (default: 3)
   */
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
