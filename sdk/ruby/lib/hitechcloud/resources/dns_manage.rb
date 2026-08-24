# frozen_string_literal: true

module HiTechCloud
  module Resources
    class DnsManage < Base
      def get_records(domain_id)
        @http.get("/api/domain/#{domain_id}/dns")
      end

      def create_record(domain_id, data)
        @http.post("/api/domain/#{domain_id}/dns", body: data)
      end

      def update_record(domain_id, record_id, data)
        @http.put("/api/domain/#{domain_id}/dns/#{record_id}", body: data)
      end

      def delete_record(domain_id, record_id)
        @http.delete("/api/domain/#{domain_id}/dns/#{record_id}")
      end

      def get_record_types
        @http.get('/api/dns/record/types')
      end

      def get_dnssec_flags
        @http.get('/api/dnssec/flags')
      end

      def get_dnssec_records(domain_id)
        @http.get("/api/domain/#{domain_id}/dnssec")
      end

      def create_dnssec_record(domain_id, data)
        @http.post("/api/domain/#{domain_id}/dnssec", body: data)
      end

      def delete_dnssec_record(domain_id, record_id)
        @http.delete("/api/domain/#{domain_id}/dnssec/#{record_id}")
      end

      def register_nameserver(domain_id, hostname, ips)
        @http.post("/api/domain/#{domain_id}/registerns", body: { hostname: hostname, ips: ips })
      end
    end
  end
end
