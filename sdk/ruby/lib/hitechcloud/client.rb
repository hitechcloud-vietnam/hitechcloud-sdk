# frozen_string_literal: true

module HiTechCloud
  class Client
    attr_reader :auth, :users, :affiliate, :billing, :support, :contacts,
                :domains, :dns_manage, :ssl, :services, :cart, :dns,
                :notifications, :virtualizor, :cloud_gpu, :cloud_service,
                :network_services, :service_status, :bare_metal, :collocation,
                :vcloudstack, :hosting, :location_v2, :cloud_instance, :cloud_vm,
                :affiliates_advanced, :ai_factory, :passkey_v2, :email_mfa_v2,
                :vneidekyc, :will_expired, :url_shortener, :proxmox_backup,
                :ceph_s3, :pmg, :proxmox, :ipam, :partner

    def initialize(token: nil, email: nil, password: nil,
                   base_url: PRODUCTION_URL, sandbox: false,
                   timeout: 30, max_retries: 3)
      base_url = OTE_URL if sandbox

      @http = HTTPClient.new(base_url, timeout: timeout, max_retries: max_retries)

      @auth = Resources::Auth.new(@http)
      @users = Resources::Users.new(@http)
      @affiliate = Resources::Affiliate.new(@http)
      @billing = Resources::Billing.new(@http)
      @support = Resources::Support.new(@http)
      @contacts = Resources::Contacts.new(@http)
      @domains = Resources::Domains.new(@http)
      @dns_manage = Resources::DnsManage.new(@http)
      @ssl = Resources::Ssl.new(@http)
      @services = Resources::Services.new(@http)
      @cart = Resources::Cart.new(@http)
      @dns = Resources::Dns.new(@http)
      @notifications = Resources::Notifications.new(@http)
      @virtualizor = Resources::Virtualizor.new(@http)
      @cloud_gpu = Resources::CloudGpu.new(@http)
      @cloud_service = Resources::CloudService.new(@http)
      @network_services = Resources::NetworkServices.new(@http)
      @service_status = Resources::ServiceStatus.new(@http)
      @bare_metal = Resources::BareMetal.new(@http)
      @collocation = Resources::Collocation.new(@http)
      @vcloudstack = Resources::Vcloudstack.new(@http)
      @hosting = Resources::Hosting.new(@http)
      @location_v2 = Resources::LocationV2.new(@http)
      @cloud_instance = Resources::CloudInstance.new(@http)
      @cloud_vm = Resources::CloudVm.new(@http)
      @affiliates_advanced = Resources::AffiliatesAdvanced.new(@http)
      @ai_factory = Resources::AiFactory.new(@http)
      @passkey_v2 = Resources::PasskeyV2.new(@http)
      @email_mfa_v2 = Resources::EmailMfaV2.new(@http)
      @vneidekyc = Resources::Vneidekyc.new(@http)
      @will_expired = Resources::WillExpired.new(@http)
      @url_shortener = Resources::UrlShortener.new(@http)
      @proxmox_backup = Resources::ProxmoxBackup.new(@http)
      @ceph_s3 = Resources::CephS3.new(@http)
      @pmg = Resources::Pmg.new(@http)
      @proxmox = Resources::Proxmox.new(@http)
      @ipam = Resources::Ipam.new(@http)
      @partner = Resources::Partner.new(@http)

      if token
        @http.token = token
      elsif email && password
        login(email, password)
      end
    end

    def login(email, password)
      result = @auth.login(email, password)
      @http.token = result["token"] if result.is_a?(Hash) && result["token"]
      result
    end

    def logout
      result = @auth.logout
      @http.token = nil
      result
    end
  end
end
