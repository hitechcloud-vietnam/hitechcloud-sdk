# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Services < Base
      def list(params = {})
        @http.get('/api/service', params: params)
      end

      def get(service_id)
        @http.get("/api/service/#{service_id}")
      end

      def list_methods
        @http.get('/api/service/methods')
      end

      def cancel(service_id, reason = '')
        @http.post("/api/service/#{service_id}/cancel", body: { reason: reason })
      end

      def get_label(service_id)
        @http.get("/api/service/#{service_id}/label")
      end

      def set_label(service_id, label)
        @http.put("/api/service/#{service_id}/label", body: { label: label })
      end

      def renew(service_id)
        @http.post("/api/service/#{service_id}/renew")
      end

      def list_billing_cycles(service_id)
        @http.get("/api/service/#{service_id}/billing_cycles")
      end

      def change_billing_cycle(service_id, billing_cycle)
        @http.put("/api/service/#{service_id}/billing_cycles", body: { billing_cycle: billing_cycle })
      end
    end
  end
end
