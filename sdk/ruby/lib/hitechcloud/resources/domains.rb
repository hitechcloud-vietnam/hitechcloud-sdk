# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Domains < Base
      def list(params = {})
        @http.get('/api/domain', params: params)
      end

      def get(domain_id)
        @http.get("/api/domain/#{domain_id}")
      end

      def get_by_name(name)
        @http.get("/api/domain/name/#{name}")
      end

      def whois(domain)
        @http.get("/api/whois/#{domain}")
      end

      def whois_lookup(domain)
        @http.get("/api/whoislookup/#{domain}")
      end

      def check_availability(domain)
        @http.get("/api/domain/availability/#{domain}")
      end

      def get_nameservers(domain_id)
        @http.get("/api/domain/#{domain_id}/ns")
      end

      def update_nameservers(domain_id, ns)
        @http.put("/api/domain/#{domain_id}/ns", body: ns)
      end

      def get_epp_code(domain_id)
        @http.get("/api/domain/#{domain_id}/epp")
      end

      def sync(domain_id)
        @http.get("/api/domain/#{domain_id}/sync")
      end

      def get_lock(domain_id)
        @http.get("/api/domain/#{domain_id}/reglock")
      end

      def update_lock(domain_id, reglock)
        @http.put("/api/domain/#{domain_id}/reglock", body: { reglock: reglock })
      end

      def update_id_protection(domain_id, idprotection)
        @http.put("/api/domain/#{domain_id}/idprotection", body: { idprotection: idprotection })
      end

      def get_contact(domain_id)
        @http.get("/api/domain/#{domain_id}/contact")
      end

      def update_contact(domain_id, data)
        @http.put("/api/domain/#{domain_id}/contact", body: data)
      end

      def get_email_forwarding(domain_id)
        @http.get("/api/domain/#{domain_id}/email/forwarding")
      end

      def update_email_forwarding(domain_id, entries)
        @http.put("/api/domain/#{domain_id}/email/forwarding", body: { entries: entries })
      end

      def get_available_tlds
        @http.get('/api/domain/order')
      end

      def order(domain:, years:, **opts)
        @http.post('/api/domain/order', body: { domain: domain, years: years }.merge(opts))
      end

      def renew(domain_id, years)
        @http.post("/api/domain/#{domain_id}/renew", body: { years: years })
      end

      def get_tld_form(tld_id)
        @http.get("/api/domain/order/#{tld_id}/form")
      end

      def get_documents(domain_id)
        @http.get("/api/domain/#{domain_id}/documents")
      end
    end
  end
end
