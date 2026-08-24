# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Ssl < Base
      def list(params = {})
        @http.get('/api/ssl', params: params)
      end

      def get(ssl_id)
        @http.get("/api/ssl/#{ssl_id}")
      end

      def download(ssl_id)
        @http.get("/api/ssl/#{ssl_id}/download")
      end

      def list_available(params = {})
        @http.get('/api/ssl/available', params: params)
      end

      def order(data)
        @http.post('/api/ssl/order', body: data)
      end

      def list_server_software
        @http.get('/api/ssl/serversoftware')
      end
    end
  end
end
