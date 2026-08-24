# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Dns < Base
      def list(params = {})
        @http.get('/api/dns', params: params)
      end

      def list_for_service(service_id)
        @http.get("/api/dns/service/#{service_id}")
      end

      def add_zone(data)
        @http.post('/api/dns', body: data)
      end

      def get_zone(zone_id)
        @http.get("/api/dns/#{zone_id}")
      end

      def delete_zone(zone_id)
        @http.delete("/api/dns/#{zone_id}")
      end

      def add_record(zone_id, data)
        @http.post("/api/dns/#{zone_id}/records", body: data)
      end

      def edit_record(zone_id, record_id, data)
        @http.put("/api/dns/#{zone_id}/records/#{record_id}", body: data)
      end

      def delete_record(zone_id, record_id)
        @http.delete("/api/dns/#{zone_id}/records/#{record_id}")
      end
    end
  end
end
