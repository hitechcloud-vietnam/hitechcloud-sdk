# frozen_string_literal: true

module HiTechCloud
  class Client
    attr_reader :auth, :users, :services, :domains, :dns_manage, :dns,
                :ssl, :billing, :support, :contacts, :cart,
                :notifications, :affiliate, :cloud_gpu, :virtualizor

    def initialize(token: nil, email: nil, password: nil,
                   base_url: PRODUCTION_URL, sandbox: false,
                   timeout: 30, max_retries: 3)
      base_url = OTE_URL if sandbox

      @http = HTTPClient.new(base_url, timeout: timeout, max_retries: max_retries)

      @auth = Resources::Auth.new(@http)
      @users = Resources::Users.new(@http)
      @services = Resources::Services.new(@http)
      @domains = Resources::Domains.new(@http)
      @dns_manage = Resources::DnsManage.new(@http)
      @dns = Resources::Dns.new(@http)
      @ssl = Resources::Ssl.new(@http)
      @billing = Resources::Billing.new(@http)
      @support = Resources::Support.new(@http)
      @contacts = Resources::Contacts.new(@http)
      @cart = Resources::Cart.new(@http)
      @notifications = Resources::Notifications.new(@http)
      @affiliate = Resources::Affiliate.new(@http)
      @cloud_gpu = Resources::CloudGpu.new(@http)
      @virtualizor = Resources::Virtualizor.new(@http)

      if token
        @http.token = token
      elsif email && password
        login(email, password)
      end
    end

    def login(email, password)
      result = @auth.login(email, password)
      @http.token = result['token'] if result.is_a?(Hash) && result['token']
      result
    end

    def logout
      result = @auth.logout
      @http.token = nil
      result
    end
  end
end
