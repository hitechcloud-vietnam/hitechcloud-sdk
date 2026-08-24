# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Virtualizor < Base
      def list(params = {})
        @http.get('/api/virtualizor', params: params)
      end

      def get(vps_id)
        @http.get("/api/virtualizor/#{vps_id}")
      end

      def start(vps_id)
        @http.post("/api/virtualizor/#{vps_id}/start")
      end

      def stop(vps_id)
        @http.post("/api/virtualizor/#{vps_id}/stop")
      end
    end
  end
end
